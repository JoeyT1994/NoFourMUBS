import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes04
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes033
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes6
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput2496 : ExponentCode := ⟨4, 4, ![![-2, -1, -2, 5], ![1, -1, 3, -3], ![0, 2, 0, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput2496 : ExponentCode := normalNode10231

theorem canonicalSound2496 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2496.moment H = canonicalOutput2496.moment H :=
  canonical_of_padded canonicalInput2496 canonicalOutput2496 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation152, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput2497 : ExponentCode := ⟨4, 4, ![![-2, -1, -2, 5], ![1, 0, 1, -2], ![0, 1, 2, -3], ![1, 0, -1, 0]]⟩

def canonicalOutput2497 : ExponentCode := normalNode6333

theorem canonicalSound2497 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2497.moment H = canonicalOutput2497.moment H :=
  canonical_of_padded canonicalInput2497 canonicalOutput2497 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2498 : ExponentCode := ⟨4, 4, ![![-2, -1, -2, 5], ![1, 0, 1, -2], ![0, 2, 0, -2], ![1, -1, 1, -1]]⟩

def canonicalOutput2498 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node392⟩

theorem canonicalSound2498 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2498.moment H = canonicalOutput2498.moment H :=
  canonical_of_padded canonicalInput2498 canonicalOutput2498 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput2499 : ExponentCode := ⟨4, 4, ![![-2, -1, -2, 5], ![1, 0, 2, -3], ![0, 2, -1, -1], ![1, -1, 1, -1]]⟩

def canonicalOutput2499 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code263

theorem canonicalSound2499 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2499.moment H = canonicalOutput2499.moment H :=
  canonical_of_padded canonicalInput2499 canonicalOutput2499 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2500 : ExponentCode := ⟨4, 4, ![![-2, -1, -2, 5], ![1, 1, 0, -2], ![0, 1, 1, -2], ![1, -1, 1, -1]]⟩

def canonicalOutput2500 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node393⟩

theorem canonicalSound2500 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2500.moment H = canonicalOutput2500.moment H :=
  canonical_of_padded canonicalInput2500 canonicalOutput2500 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput2501 : ExponentCode := ⟨5, 5, ![![-2, -1, -1, 1, 3], ![0, -1, 1, -1, 1], ![0, 1, 0, 0, -1], ![1, 0, 1, 0, -2], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput2501 : ExponentCode := normalNode6342

theorem canonicalSound2501 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2501.moment H = canonicalOutput2501.moment H :=
  canonical_of_padded canonicalInput2501 canonicalOutput2501 (by decide) (by decide)
    ⟨true, false, canonicalPermutation46, canonicalPermutation19⟩ (by decide +kernel) hH

def canonicalInput2502 : ExponentCode := ⟨5, 5, ![![-2, -1, -1, 1, 3], ![0, -1, 1, -1, 1], ![0, 1, 1, 0, -2], ![1, 0, 0, 0, -1], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput2502 : ExponentCode := normalNode6341

theorem canonicalSound2502 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2502.moment H = canonicalOutput2502.moment H :=
  canonical_of_padded canonicalInput2502 canonicalOutput2502 (by decide) (by decide)
    ⟨true, false, canonicalPermutation56, canonicalPermutation23⟩ (by decide +kernel) hH

def canonicalInput2503 : ExponentCode := ⟨5, 5, ![![-2, -1, -1, 1, 3], ![0, -1, 1, 1, -1], ![0, 0, 1, -2, 1], ![1, 0, 0, 0, -1], ![1, 2, -1, 0, -2]]⟩

def canonicalOutput2503 : ExponentCode := normalNode9157

theorem canonicalSound2503 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2503.moment H = canonicalOutput2503.moment H :=
  canonical_of_padded canonicalInput2503 canonicalOutput2503 (by decide) (by decide)
    ⟨true, false, canonicalPermutation13, OAI.MUB6.Certificate.PairSemantics.permutation189⟩ (by decide +kernel) hH

def canonicalInput2504 : ExponentCode := ⟨5, 5, ![![-2, -1, -1, 1, 3], ![0, -1, 1, 1, -1], ![0, 0, 1, -2, 1], ![1, 1, 0, 0, -2], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput2504 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code265

theorem canonicalSound2504 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2504.moment H = canonicalOutput2504.moment H :=
  canonical_of_padded canonicalInput2504 canonicalOutput2504 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2505 : ExponentCode := ⟨5, 5, ![![-2, -1, -1, 1, 3], ![0, -1, 1, 1, -1], ![0, 1, 0, 0, -1], ![1, 0, 0, -2, 1], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput2505 : ExponentCode := normalNode6344

theorem canonicalSound2505 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2505.moment H = canonicalOutput2505.moment H :=
  canonical_of_padded canonicalInput2505 canonicalOutput2505 (by decide) (by decide)
    ⟨true, false, canonicalPermutation46, canonicalPermutation17⟩ (by decide +kernel) hH

def canonicalInput2506 : ExponentCode := ⟨5, 5, ![![-2, -1, -1, 1, 3], ![0, -1, 1, 1, -1], ![0, 1, 0, 0, -1], ![1, 0, 1, -2, 0], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput2506 : ExponentCode := normalNode7510

theorem canonicalSound2506 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2506.moment H = canonicalOutput2506.moment H :=
  canonical_of_padded canonicalInput2506 canonicalOutput2506 (by decide) (by decide)
    ⟨true, false, canonicalPermutation30, canonicalPermutation17⟩ (by decide +kernel) hH

def canonicalInput2507 : ExponentCode := ⟨5, 5, ![![-2, -1, -1, 1, 3], ![0, -1, 1, 1, -1], ![0, 1, 1, -2, 0], ![1, 0, 0, 0, -1], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput2507 : ExponentCode := normalNode7509

theorem canonicalSound2507 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2507.moment H = canonicalOutput2507.moment H :=
  canonical_of_padded canonicalInput2507 canonicalOutput2507 (by decide) (by decide)
    ⟨true, false, canonicalPermutation20, OAI.MUB6.Certificate.PairSemantics.permutation196⟩ (by decide +kernel) hH

def canonicalInput2508 : ExponentCode := ⟨5, 5, ![![-2, -1, -1, 1, 3], ![0, -1, 1, 1, -1], ![0, 2, -1, 0, -1], ![1, 0, 1, -2, 0], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput2508 : ExponentCode := normalNode7511

theorem canonicalSound2508 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2508.moment H = canonicalOutput2508.moment H :=
  canonical_of_padded canonicalInput2508 canonicalOutput2508 (by decide) (by decide)
    ⟨true, false, canonicalPermutation20, canonicalPermutation33⟩ (by decide +kernel) hH

def canonicalInput2509 : ExponentCode := ⟨5, 5, ![![-2, -1, -1, 1, 3], ![0, -1, 1, 1, -1], ![0, 2, 0, 0, -2], ![1, 0, 0, -2, 1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput2509 : ExponentCode := normalNode6345

theorem canonicalSound2509 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2509.moment H = canonicalOutput2509.moment H :=
  canonical_of_padded canonicalInput2509 canonicalOutput2509 (by decide) (by decide)
    ⟨true, false, canonicalPermutation56, canonicalPermutation33⟩ (by decide +kernel) hH

def canonicalInput2510 : ExponentCode := ⟨5, 5, ![![-2, -1, -1, 1, 3], ![0, -1, 2, -2, 1], ![0, 1, 0, 0, -1], ![1, 0, 0, 0, -1], ![1, 1, -1, 1, -2]]⟩

def canonicalOutput2510 : ExponentCode := normalNode7229

theorem canonicalSound2510 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2510.moment H = canonicalOutput2510.moment H :=
  canonical_of_padded canonicalInput2510 canonicalOutput2510 (by decide) (by decide)
    ⟨true, false, canonicalPermutation20, canonicalPermutation23⟩ (by decide +kernel) hH

def canonicalInput2511 : ExponentCode := ⟨5, 5, ![![-2, -1, -1, 1, 3], ![0, -1, 2, -2, 1], ![0, 1, 0, 0, -1], ![1, 0, 0, 1, -2], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput2511 : ExponentCode := normalNode6339

theorem canonicalSound2511 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2511.moment H = canonicalOutput2511.moment H :=
  canonical_of_padded canonicalInput2511 canonicalOutput2511 (by decide) (by decide)
    ⟨true, false, canonicalPermutation30, canonicalPermutation19⟩ (by decide +kernel) hH

def canonicalInput2512 : ExponentCode := ⟨5, 5, ![![-2, -1, -1, 1, 3], ![0, -1, 2, -2, 1], ![0, 1, 0, 1, -2], ![1, 0, 0, 0, -1], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput2512 : ExponentCode := normalNode6338

theorem canonicalSound2512 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2512.moment H = canonicalOutput2512.moment H :=
  canonical_of_padded canonicalInput2512 canonicalOutput2512 (by decide) (by decide)
    ⟨true, false, canonicalPermutation20, canonicalPermutation23⟩ (by decide +kernel) hH

def canonicalInput2513 : ExponentCode := ⟨5, 5, ![![-2, -1, -1, 1, 3], ![0, -1, 2, -1, 0], ![0, 1, 0, 0, -1], ![1, 0, 0, 0, -1], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput2513 : ExponentCode := normalNode7528

theorem canonicalSound2513 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2513.moment H = canonicalOutput2513.moment H :=
  canonical_of_padded canonicalInput2513 canonicalOutput2513 (by decide) (by decide)
    ⟨true, false, canonicalPermutation20, canonicalPermutation23⟩ (by decide +kernel) hH

def canonicalInput2514 : ExponentCode := ⟨5, 5, ![![-2, -1, -1, 1, 3], ![0, -1, 2, 0, -1], ![0, 1, -1, 1, -1], ![0, 1, 0, 0, -1], ![2, 0, 0, -2, 0]]⟩

def canonicalOutput2514 : ExponentCode := normalNode7515

theorem canonicalSound2514 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2514.moment H = canonicalOutput2514.moment H :=
  canonical_of_padded canonicalInput2514 canonicalOutput2514 (by decide) (by decide)
    ⟨true, false, canonicalPermutation43, OAI.MUB6.Certificate.PairSemantics.permutation193⟩ (by decide +kernel) hH

def canonicalInput2515 : ExponentCode := ⟨5, 5, ![![-2, -1, -1, 1, 3], ![0, -1, 2, 0, -1], ![0, 1, -1, 1, -1], ![1, 0, 0, -2, 1], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput2515 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code267

theorem canonicalSound2515 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2515.moment H = canonicalOutput2515.moment H :=
  canonical_of_padded canonicalInput2515 canonicalOutput2515 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2516 : ExponentCode := ⟨5, 5, ![![-2, -1, -1, 1, 3], ![0, -1, 2, 0, -1], ![0, 1, 0, 0, -1], ![1, 0, 0, -2, 1], ![1, 1, -1, 1, -2]]⟩

def canonicalOutput2516 : ExponentCode := normalNode9162

theorem canonicalSound2516 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2516.moment H = canonicalOutput2516.moment H :=
  canonical_of_padded canonicalInput2516 canonicalOutput2516 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput2517 : ExponentCode := ⟨5, 5, ![![-2, -1, -1, 1, 3], ![0, -1, 2, 0, -1], ![0, 2, -1, 1, -2], ![1, 0, 0, -2, 1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput2517 : ExponentCode := normalNode8243

theorem canonicalSound2517 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2517.moment H = canonicalOutput2517.moment H :=
  canonical_of_padded canonicalInput2517 canonicalOutput2517 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation201⟩ (by decide +kernel) hH

def canonicalInput2518 : ExponentCode := ⟨5, 5, ![![-2, -1, -1, 1, 3], ![0, -1, 2, 1, -2], ![0, 1, 0, 0, -1], ![1, 0, 0, -2, 1], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput2518 : ExponentCode := normalNode8471

theorem canonicalSound2518 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2518.moment H = canonicalOutput2518.moment H :=
  canonical_of_padded canonicalInput2518 canonicalOutput2518 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation167, canonicalPermutation22⟩ (by decide +kernel) hH

def canonicalInput2519 : ExponentCode := ⟨5, 5, ![![-2, -1, -1, 1, 3], ![0, -1, 2, 1, -2], ![0, 2, -1, 0, -1], ![1, 0, 0, -2, 1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput2519 : ExponentCode := normalNode8243

theorem canonicalSound2519 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2519.moment H = canonicalOutput2519.moment H :=
  canonical_of_padded canonicalInput2519 canonicalOutput2519 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation151, canonicalPermutation56⟩ (by decide +kernel) hH

def canonicalInput2520 : ExponentCode := ⟨5, 5, ![![-2, -1, -1, 1, 3], ![0, -1, 2, 1, -2], ![0, 2, -1, 0, -1], ![1, 0, 0, -1, 0], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput2520 : ExponentCode := normalNode8239

theorem canonicalSound2520 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2520.moment H = canonicalOutput2520.moment H :=
  canonical_of_padded canonicalInput2520 canonicalOutput2520 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation152, canonicalPermutation52⟩ (by decide +kernel) hH

def canonicalInput2521 : ExponentCode := ⟨5, 5, ![![-2, -1, -1, 1, 3], ![0, 0, -1, 1, 0], ![0, 1, 0, 0, -1], ![1, -1, 2, -1, -1], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput2521 : ExponentCode := normalNode9998

theorem canonicalSound2521 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2521.moment H = canonicalOutput2521.moment H :=
  canonical_of_padded canonicalInput2521 canonicalOutput2521 (by decide) (by decide)
    ⟨true, false, canonicalPermutation43, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput2522 : ExponentCode := ⟨5, 5, ![![-2, -1, -1, 1, 3], ![0, 0, 0, 1, -1], ![0, 1, 0, 0, -1], ![1, 0, 0, -2, 1], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput2522 : ExponentCode := normalNode7233

theorem canonicalSound2522 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2522.moment H = canonicalOutput2522.moment H :=
  canonical_of_padded canonicalInput2522 canonicalOutput2522 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, canonicalPermutation50⟩ (by decide +kernel) hH

def canonicalInput2523 : ExponentCode := ⟨5, 5, ![![-2, -1, -1, 1, 3], ![0, 0, 0, 1, -1], ![0, 2, -1, -1, 0], ![1, -1, 2, -1, -1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput2523 : ExponentCode := normalNode8048

theorem canonicalSound2523 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2523.moment H = canonicalOutput2523.moment H :=
  canonical_of_padded canonicalInput2523 canonicalOutput2523 (by decide) (by decide)
    ⟨true, false, canonicalPermutation33, OAI.MUB6.Certificate.PairSemantics.permutation199⟩ (by decide +kernel) hH

def canonicalInput2524 : ExponentCode := ⟨5, 5, ![![-2, -1, -1, 1, 3], ![0, 0, 1, -2, 1], ![0, 0, 0, 1, -1], ![1, 0, 1, 0, -2], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput2524 : ExponentCode := normalNode6343

theorem canonicalSound2524 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2524.moment H = canonicalOutput2524.moment H :=
  canonical_of_padded canonicalInput2524 canonicalOutput2524 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput2525 : ExponentCode := ⟨5, 5, ![![-2, -1, -1, 1, 3], ![0, 0, 1, -2, 1], ![0, 0, 1, 0, -1], ![1, 0, 0, 0, -1], ![1, 1, -1, 1, -2]]⟩

def canonicalOutput2525 : ExponentCode := normalNode9158

theorem canonicalSound2525 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2525.moment H = canonicalOutput2525.moment H :=
  canonical_of_padded canonicalInput2525 canonicalOutput2525 (by decide) (by decide)
    ⟨true, false, canonicalPermutation74, canonicalPermutation35⟩ (by decide +kernel) hH

def canonicalInput2526 : ExponentCode := ⟨5, 5, ![![-2, -1, -1, 1, 3], ![0, 0, 1, -2, 1], ![0, 0, 1, 0, -1], ![1, 0, 0, 1, -2], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput2526 : ExponentCode := normalNode6344

theorem canonicalSound2526 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2526.moment H = canonicalOutput2526.moment H :=
  canonical_of_padded canonicalInput2526 canonicalOutput2526 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput2527 : ExponentCode := ⟨5, 5, ![![-2, -1, -1, 1, 3], ![0, 0, 1, -2, 1], ![0, 0, 1, 1, -2], ![1, -1, 0, 0, 0], ![1, 2, -1, 0, -2]]⟩

def canonicalOutput2527 : ExponentCode := normalNode10394

theorem canonicalSound2527 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2527.moment H = canonicalOutput2527.moment H :=
  canonical_of_padded canonicalInput2527 canonicalOutput2527 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation193⟩ (by decide +kernel) hH

def canonicalInput2528 : ExponentCode := ⟨5, 5, ![![-2, -1, -1, 1, 3], ![0, 0, 1, -2, 1], ![0, 0, 1, 1, -2], ![1, 0, 0, 0, -1], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput2528 : ExponentCode := normalNode6346

theorem canonicalSound2528 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2528.moment H = canonicalOutput2528.moment H :=
  canonical_of_padded canonicalInput2528 canonicalOutput2528 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput2529 : ExponentCode := ⟨5, 5, ![![-2, -1, -1, 1, 3], ![0, 0, 1, -2, 1], ![0, 1, 0, 0, -1], ![1, -1, 0, 0, 0], ![1, 1, 0, 1, -3]]⟩

def canonicalOutput2529 : ExponentCode := normalNode10428

theorem canonicalSound2529 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2529.moment H = canonicalOutput2529.moment H :=
  canonical_of_padded canonicalInput2529 canonicalOutput2529 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation193⟩ (by decide +kernel) hH

def canonicalInput2530 : ExponentCode := ⟨5, 5, ![![-2, -1, -1, 1, 3], ![0, 0, 1, -2, 1], ![0, 1, 0, 0, -1], ![1, -1, 0, 1, -1], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput2530 : ExponentCode := normalNode6343

theorem canonicalSound2530 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2530.moment H = canonicalOutput2530.moment H :=
  canonical_of_padded canonicalInput2530 canonicalOutput2530 (by decide) (by decide)
    ⟨true, false, canonicalPermutation30, canonicalPermutation22⟩ (by decide +kernel) hH

def canonicalInput2531 : ExponentCode := ⟨5, 5, ![![-2, -1, -1, 1, 3], ![0, 0, 1, -2, 1], ![0, 1, 0, 0, -1], ![1, -1, 1, 0, -1], ![1, 1, -1, 1, -2]]⟩

def canonicalOutput2531 : ExponentCode := normalNode9163

theorem canonicalSound2531 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2531.moment H = canonicalOutput2531.moment H :=
  canonical_of_padded canonicalInput2531 canonicalOutput2531 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, canonicalPermutation35⟩ (by decide +kernel) hH

def canonicalInput2532 : ExponentCode := ⟨5, 5, ![![-2, -1, -1, 1, 3], ![0, 0, 1, -2, 1], ![0, 1, 0, 0, -1], ![1, -1, 1, 1, -2], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput2532 : ExponentCode := normalNode8508

theorem canonicalSound2532 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2532.moment H = canonicalOutput2532.moment H :=
  canonical_of_padded canonicalInput2532 canonicalOutput2532 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation167, canonicalPermutation17⟩ (by decide +kernel) hH

def canonicalInput2533 : ExponentCode := ⟨5, 5, ![![-2, -1, -1, 1, 3], ![0, 0, 1, -2, 1], ![0, 1, 0, 0, -1], ![1, 0, 0, 0, -1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput2533 : ExponentCode := normalNode7233

theorem canonicalSound2533 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2533.moment H = canonicalOutput2533.moment H :=
  canonical_of_padded canonicalInput2533 canonicalOutput2533 (by decide) (by decide)
    ⟨true, false, canonicalPermutation20, canonicalPermutation23⟩ (by decide +kernel) hH

def canonicalInput2534 : ExponentCode := ⟨5, 5, ![![-2, -1, -1, 1, 3], ![0, 0, 1, -2, 1], ![0, 1, 0, 0, -1], ![1, 0, 0, 1, -2], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput2534 : ExponentCode := normalNode7233

theorem canonicalSound2534 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2534.moment H = canonicalOutput2534.moment H :=
  canonical_of_padded canonicalInput2534 canonicalOutput2534 (by decide) (by decide)
    ⟨true, false, canonicalPermutation20, canonicalPermutation20⟩ (by decide +kernel) hH

def canonicalInput2535 : ExponentCode := ⟨5, 5, ![![-2, -1, -1, 1, 3], ![0, 0, 1, -2, 1], ![0, 1, 0, 0, -1], ![1, 0, 1, 0, -2], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput2535 : ExponentCode := normalNode6352

theorem canonicalSound2535 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2535.moment H = canonicalOutput2535.moment H :=
  canonical_of_padded canonicalInput2535 canonicalOutput2535 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput2536 : ExponentCode := ⟨5, 5, ![![-2, -1, -1, 1, 3], ![0, 0, 1, -2, 1], ![0, 1, 0, 1, -2], ![1, -1, 0, 0, 0], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput2536 : ExponentCode := normalNode6357

theorem canonicalSound2536 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2536.moment H = canonicalOutput2536.moment H :=
  canonical_of_padded canonicalInput2536 canonicalOutput2536 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation176⟩ (by decide +kernel) hH

def canonicalInput2537 : ExponentCode := ⟨5, 5, ![![-2, -1, -1, 1, 3], ![0, 0, 1, -2, 1], ![0, 1, 0, 1, -2], ![1, -1, 1, 0, -1], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput2537 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code266

theorem canonicalSound2537 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2537.moment H = canonicalOutput2537.moment H :=
  canonical_of_padded canonicalInput2537 canonicalOutput2537 (by decide) (by decide)
    ⟨true, false, canonicalPermutation43, canonicalPermutation22⟩ (by decide +kernel) hH

def canonicalInput2538 : ExponentCode := ⟨5, 5, ![![-2, -1, -1, 1, 3], ![0, 0, 1, -2, 1], ![0, 1, 0, 1, -2], ![1, 0, 0, 0, -1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput2538 : ExponentCode := normalNode7232

theorem canonicalSound2538 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2538.moment H = canonicalOutput2538.moment H :=
  canonical_of_padded canonicalInput2538 canonicalOutput2538 (by decide) (by decide)
    ⟨true, false, canonicalPermutation20, canonicalPermutation52⟩ (by decide +kernel) hH

def canonicalInput2539 : ExponentCode := ⟨5, 5, ![![-2, -1, -1, 1, 3], ![0, 0, 1, -2, 1], ![0, 1, 1, 0, -2], ![1, -1, 0, 0, 0], ![1, 1, -1, 1, -2]]⟩

def canonicalOutput2539 : ExponentCode := normalNode10395

theorem canonicalSound2539 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2539.moment H = canonicalOutput2539.moment H :=
  canonical_of_padded canonicalInput2539 canonicalOutput2539 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation161, OAI.MUB6.Certificate.PairSemantics.permutation189⟩ (by decide +kernel) hH

def canonicalInput2540 : ExponentCode := ⟨5, 5, ![![-2, -1, -1, 1, 3], ![0, 0, 1, -2, 1], ![0, 1, 1, 0, -2], ![1, 0, 0, 0, -1], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput2540 : ExponentCode := normalNode6349

theorem canonicalSound2540 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2540.moment H = canonicalOutput2540.moment H :=
  canonical_of_padded canonicalInput2540 canonicalOutput2540 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput2541 : ExponentCode := ⟨5, 5, ![![-2, -1, -1, 1, 3], ![0, 0, 1, -2, 1], ![0, 1, 1, 1, -3], ![1, -1, 0, 0, 0], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput2541 : ExponentCode := normalNode8454

theorem canonicalSound2541 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2541.moment H = canonicalOutput2541.moment H :=
  canonical_of_padded canonicalInput2541 canonicalOutput2541 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation196⟩ (by decide +kernel) hH

def canonicalInput2542 : ExponentCode := ⟨5, 5, ![![-2, -1, -1, 1, 3], ![0, 0, 1, 0, -1], ![0, 0, 0, 1, -1], ![0, 1, 0, 0, -1], ![2, 0, 0, -2, 0]]⟩

def canonicalOutput2542 : ExponentCode := normalNode7542

theorem canonicalSound2542 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2542.moment H = canonicalOutput2542.moment H :=
  canonical_of_padded canonicalInput2542 canonicalOutput2542 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation198, canonicalPermutation40⟩ (by decide +kernel) hH

def canonicalInput2543 : ExponentCode := ⟨5, 5, ![![-2, -1, -1, 1, 3], ![0, 0, 1, 0, -1], ![0, 0, 0, 1, -1], ![1, 0, 0, -2, 1], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput2543 : ExponentCode := normalNode7233

theorem canonicalSound2543 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2543.moment H = canonicalOutput2543.moment H :=
  canonical_of_padded canonicalInput2543 canonicalOutput2543 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation169⟩ (by decide +kernel) hH

def canonicalInput2544 : ExponentCode := ⟨5, 5, ![![-2, -1, -1, 1, 3], ![0, 0, 1, 0, -1], ![0, 0, 1, 0, -1], ![1, 0, 0, -2, 1], ![1, 1, -1, 1, -2]]⟩

def canonicalOutput2544 : ExponentCode := normalNode8647

theorem canonicalSound2544 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2544.moment H = canonicalOutput2544.moment H :=
  canonical_of_padded canonicalInput2544 canonicalOutput2544 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput2545 : ExponentCode := ⟨5, 5, ![![-2, -1, -1, 1, 3], ![0, 0, 1, 0, -1], ![0, 0, 1, 1, -2], ![1, 0, 0, -2, 1], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput2545 : ExponentCode := normalNode6355

theorem canonicalSound2545 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2545.moment H = canonicalOutput2545.moment H :=
  canonical_of_padded canonicalInput2545 canonicalOutput2545 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput2546 : ExponentCode := ⟨5, 5, ![![-2, -1, -1, 1, 3], ![0, 0, 1, 0, -1], ![0, 1, -1, 1, -1], ![0, 0, 1, 0, -1], ![2, 0, 0, -2, 0]]⟩

def canonicalOutput2546 : ExponentCode := normalNode7539

theorem canonicalSound2546 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2546.moment H = canonicalOutput2546.moment H :=
  canonical_of_padded canonicalInput2546 canonicalOutput2546 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation198, canonicalPermutation40⟩ (by decide +kernel) hH

def canonicalInput2547 : ExponentCode := ⟨5, 5, ![![-2, -1, -1, 1, 3], ![0, 0, 1, 0, -1], ![0, 1, -1, 1, -1], ![0, 1, 0, 0, -1], ![2, -1, 1, -2, 0]]⟩

def canonicalOutput2547 : ExponentCode := normalNode7541

theorem canonicalSound2547 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2547.moment H = canonicalOutput2547.moment H :=
  canonical_of_padded canonicalInput2547 canonicalOutput2547 (by decide) (by decide)
    ⟨true, false, canonicalPermutation21, OAI.MUB6.Certificate.PairSemantics.permutation189⟩ (by decide +kernel) hH

def canonicalInput2548 : ExponentCode := ⟨5, 5, ![![-2, -1, -1, 1, 3], ![0, 0, 1, 0, -1], ![0, 1, -1, 1, -1], ![1, -1, 1, -2, 1], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput2548 : ExponentCode := normalNode6353

theorem canonicalSound2548 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2548.moment H = canonicalOutput2548.moment H :=
  canonical_of_padded canonicalInput2548 canonicalOutput2548 (by decide) (by decide)
    ⟨true, false, canonicalPermutation59, canonicalPermutation16⟩ (by decide +kernel) hH

def canonicalInput2549 : ExponentCode := ⟨5, 5, ![![-2, -1, -1, 1, 3], ![0, 0, 1, 0, -1], ![0, 1, -1, 1, -1], ![1, 0, 0, -2, 1], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput2549 : ExponentCode := normalNode6344

theorem canonicalSound2549 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2549.moment H = canonicalOutput2549.moment H :=
  canonical_of_padded canonicalInput2549 canonicalOutput2549 (by decide) (by decide)
    ⟨true, false, canonicalPermutation74, canonicalPermutation16⟩ (by decide +kernel) hH

def canonicalInput2550 : ExponentCode := ⟨5, 5, ![![-2, -1, -1, 1, 3], ![0, 0, 1, 0, -1], ![0, 1, 0, 0, -1], ![1, -1, 1, -2, 1], ![1, 1, -1, 1, -2]]⟩

def canonicalOutput2550 : ExponentCode := normalNode7237

theorem canonicalSound2550 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2550.moment H = canonicalOutput2550.moment H :=
  canonical_of_padded canonicalInput2550 canonicalOutput2550 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput2551 : ExponentCode := ⟨5, 5, ![![-2, -1, -1, 1, 3], ![0, 0, 1, 0, -1], ![0, 1, 0, 0, -1], ![1, 0, 0, -2, 1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput2551 : ExponentCode := normalNode7238

theorem canonicalSound2551 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2551.moment H = canonicalOutput2551.moment H :=
  canonical_of_padded canonicalInput2551 canonicalOutput2551 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation169⟩ (by decide +kernel) hH

def canonicalInput2552 : ExponentCode := ⟨5, 5, ![![-2, -1, -1, 1, 3], ![0, 0, 1, 0, -1], ![0, 1, 0, 1, -2], ![1, -1, 1, -2, 1], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput2552 : ExponentCode := normalNode6359

theorem canonicalSound2552 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2552.moment H = canonicalOutput2552.moment H :=
  canonical_of_padded canonicalInput2552 canonicalOutput2552 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation198, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput2553 : ExponentCode := ⟨5, 5, ![![-2, -1, -1, 1, 3], ![0, 0, 1, 0, -1], ![0, 1, 0, 1, -2], ![1, 0, 0, -2, 1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput2553 : ExponentCode := normalNode7236

theorem canonicalSound2553 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2553.moment H = canonicalOutput2553.moment H :=
  canonical_of_padded canonicalInput2553 canonicalOutput2553 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation169⟩ (by decide +kernel) hH

def canonicalInput2554 : ExponentCode := ⟨5, 5, ![![-2, -1, -1, 1, 3], ![0, 0, 1, 0, -1], ![0, 2, -1, 0, -1], ![1, -1, 1, -2, 1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput2554 : ExponentCode := normalNode6362

theorem canonicalSound2554 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2554.moment H = canonicalOutput2554.moment H :=
  canonical_of_padded canonicalInput2554 canonicalOutput2554 (by decide) (by decide)
    ⟨true, false, canonicalPermutation71, canonicalPermutation16⟩ (by decide +kernel) hH

def canonicalInput2555 : ExponentCode := ⟨5, 5, ![![-2, -1, -1, 1, 3], ![0, 0, 1, 0, -1], ![0, 2, -1, 0, -1], ![1, 0, 0, -2, 1], ![1, -1, 1, 1, -2]]⟩

def canonicalOutput2555 : ExponentCode := normalNode9162

theorem canonicalSound2555 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2555.moment H = canonicalOutput2555.moment H :=
  canonical_of_padded canonicalInput2555 canonicalOutput2555 (by decide) (by decide)
    ⟨true, false, canonicalPermutation59, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput2556 : ExponentCode := ⟨5, 5, ![![-2, -1, -1, 1, 3], ![0, 0, 1, 0, -1], ![0, 2, -1, 1, -2], ![1, -1, 1, -2, 1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput2556 : ExponentCode := normalNode7239

theorem canonicalSound2556 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2556.moment H = canonicalOutput2556.moment H :=
  canonical_of_padded canonicalInput2556 canonicalOutput2556 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation201, OAI.MUB6.Certificate.PairSemantics.permutation199⟩ (by decide +kernel) hH

def canonicalInput2557 : ExponentCode := ⟨5, 5, ![![-2, -1, -1, 1, 3], ![0, 0, 1, 0, -1], ![0, 2, -1, 1, -2], ![1, 0, 0, -2, 1], ![1, -1, 1, 0, -1]]⟩

def canonicalOutput2557 : ExponentCode := normalNode8471

theorem canonicalSound2557 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2557.moment H = canonicalOutput2557.moment H :=
  canonical_of_padded canonicalInput2557 canonicalOutput2557 (by decide) (by decide)
    ⟨true, true, canonicalPermutation42, canonicalPermutation24⟩ (by decide +kernel) hH

def canonicalInput2558 : ExponentCode := ⟨5, 5, ![![-2, -1, -1, 1, 3], ![0, 0, 1, 1, -2], ![0, 0, 1, -2, 1], ![1, 0, 0, 0, -1], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput2558 : ExponentCode := normalNode6346

theorem canonicalSound2558 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2558.moment H = canonicalOutput2558.moment H :=
  canonical_of_padded canonicalInput2558 canonicalOutput2558 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput2559 : ExponentCode := ⟨5, 5, ![![-2, -1, -1, 1, 3], ![0, 0, 1, 1, -2], ![0, 0, 1, 0, -1], ![1, 0, 0, -2, 1], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput2559 : ExponentCode := normalNode6355

theorem canonicalSound2559 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2559.moment H = canonicalOutput2559.moment H :=
  canonical_of_padded canonicalInput2559 canonicalOutput2559 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

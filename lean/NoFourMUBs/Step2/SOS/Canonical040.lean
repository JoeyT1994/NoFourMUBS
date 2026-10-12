import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes01
import NoFourMUBs.Step2.SOS.MomentCodes04
import NoFourMUBs.Step2.SOS.MomentCodes08
import NoFourMUBs.Step2.SOS.MomentCodes09
import NoFourMUBs.Step2.SOS.MomentCodes12
import NoFourMUBs.Step2.SOS.MomentCodes17
import NoFourMUBs.Step2.SOS.MomentCodes18
import NoFourMUBs.Step2.SOS.MomentCodes19
import NoFourMUBs.Step2.SOS.NormalizationNodes004
import NoFourMUBs.Step2.SOS.NormalizationNodes005
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes033
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput2560 : ExponentCode := ⟨5, 5, ![![-2, -1, -1, 1, 3], ![0, 0, 1, 1, -2], ![0, 1, 0, 0, -1], ![1, -1, 1, -2, 1], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput2560 : ExponentCode := normalNode6358

theorem canonicalSound2560 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2560.moment H = canonicalOutput2560.moment H :=
  canonical_of_padded canonicalInput2560 canonicalOutput2560 (by decide) (by decide)
    ⟨true, false, canonicalPermutation14, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput2561 : ExponentCode := ⟨5, 5, ![![-2, -1, -1, 1, 3], ![0, 0, 1, 1, -2], ![0, 1, 0, 0, -1], ![1, 0, 0, -2, 1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput2561 : ExponentCode := normalNode7236

theorem canonicalSound2561 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2561.moment H = canonicalOutput2561.moment H :=
  canonical_of_padded canonicalInput2561 canonicalOutput2561 (by decide) (by decide)
    ⟨false, false, canonicalPermutation7, canonicalPermutation50⟩ (by decide +kernel) hH

def canonicalInput2562 : ExponentCode := ⟨5, 5, ![![-2, -1, -1, 1, 3], ![0, 0, 1, 1, -2], ![0, 2, -1, 0, -1], ![1, -1, 1, -2, 1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput2562 : ExponentCode := normalNode6361

theorem canonicalSound2562 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2562.moment H = canonicalOutput2562.moment H :=
  canonical_of_padded canonicalInput2562 canonicalOutput2562 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation199, OAI.MUB6.Certificate.PairSemantics.permutation199⟩ (by decide +kernel) hH

def canonicalInput2563 : ExponentCode := ⟨5, 5, ![![-2, -1, -1, 1, 3], ![0, 0, 1, 1, -2], ![0, 2, -1, 0, -1], ![1, 0, 0, -2, 1], ![1, -1, 1, 0, -1]]⟩

def canonicalOutput2563 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code268

theorem canonicalSound2563 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2563.moment H = canonicalOutput2563.moment H :=
  canonical_of_padded canonicalInput2563 canonicalOutput2563 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2564 : ExponentCode := ⟨5, 5, ![![-2, -1, -1, 1, 3], ![0, 0, 2, -2, 0], ![0, 0, 0, 1, -1], ![1, 0, 0, 0, -1], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput2564 : ExponentCode := normalNode7533

theorem canonicalSound2564 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2564.moment H = canonicalOutput2564.moment H :=
  canonical_of_padded canonicalInput2564 canonicalOutput2564 (by decide) (by decide)
    ⟨true, false, canonicalPermutation33, canonicalPermutation23⟩ (by decide +kernel) hH

def canonicalInput2565 : ExponentCode := ⟨5, 5, ![![-2, -1, -1, 1, 3], ![0, 0, 2, -2, 0], ![0, 1, 0, 0, -1], ![1, -1, 0, 0, 0], ![1, 1, -1, 1, -2]]⟩

def canonicalOutput2565 : ExponentCode := normalNode10382

theorem canonicalSound2565 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2565.moment H = canonicalOutput2565.moment H :=
  canonical_of_padded canonicalInput2565 canonicalOutput2565 (by decide) (by decide)
    ⟨true, false, canonicalPermutation46, canonicalPermutation35⟩ (by decide +kernel) hH

def canonicalInput2566 : ExponentCode := ⟨5, 5, ![![-2, -1, -1, 1, 3], ![0, 0, 2, -2, 0], ![0, 1, 0, 0, -1], ![1, -1, 0, 1, -1], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput2566 : ExponentCode := normalNode7498

theorem canonicalSound2566 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2566.moment H = canonicalOutput2566.moment H :=
  canonical_of_padded canonicalInput2566 canonicalOutput2566 (by decide) (by decide)
    ⟨true, false, canonicalPermutation30, canonicalPermutation22⟩ (by decide +kernel) hH

def canonicalInput2567 : ExponentCode := ⟨5, 5, ![![-2, -1, -1, 1, 3], ![0, 0, 2, -2, 0], ![0, 1, 0, 0, -1], ![1, 0, 0, 0, -1], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput2567 : ExponentCode := normalNode7530

theorem canonicalSound2567 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2567.moment H = canonicalOutput2567.moment H :=
  canonical_of_padded canonicalInput2567 canonicalOutput2567 (by decide) (by decide)
    ⟨true, false, canonicalPermutation20, canonicalPermutation23⟩ (by decide +kernel) hH

def canonicalInput2568 : ExponentCode := ⟨5, 5, ![![-2, -1, -1, 1, 3], ![0, 0, 2, -2, 0], ![0, 1, 0, 1, -2], ![1, -1, 0, 0, 0], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput2568 : ExponentCode := normalNode8403

theorem canonicalSound2568 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2568.moment H = canonicalOutput2568.moment H :=
  canonical_of_padded canonicalInput2568 canonicalOutput2568 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation52⟩ (by decide +kernel) hH

def canonicalInput2569 : ExponentCode := ⟨5, 5, ![![-2, -1, -1, 1, 3], ![0, 1, -1, 0, 0], ![0, 1, 0, 0, -1], ![1, -1, 1, -2, 1], ![1, 0, 1, 1, -3]]⟩

def canonicalOutput2569 : ExponentCode := normalNode8636

theorem canonicalSound2569 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2569.moment H = canonicalOutput2569.moment H :=
  canonical_of_padded canonicalInput2569 canonicalOutput2569 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation167, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput2570 : ExponentCode := ⟨5, 5, ![![-2, -1, -1, 1, 3], ![0, 1, -1, 0, 0], ![0, 1, 0, 0, -1], ![1, -1, 2, -2, 0], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput2570 : ExponentCode := normalNode8638

theorem canonicalSound2570 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2570.moment H = canonicalOutput2570.moment H :=
  canonical_of_padded canonicalInput2570 canonicalOutput2570 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation167, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput2571 : ExponentCode := ⟨5, 5, ![![-2, -1, -1, 1, 3], ![0, 1, -1, 0, 0], ![0, 1, 1, 0, -2], ![1, -1, 1, -2, 1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput2571 : ExponentCode := normalNode8646

theorem canonicalSound2571 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2571.moment H = canonicalOutput2571.moment H :=
  canonical_of_padded canonicalInput2571 canonicalOutput2571 (by decide) (by decide)
    ⟨true, true, canonicalPermutation78, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput2572 : ExponentCode := ⟨5, 5, ![![-2, -1, -1, 1, 3], ![0, 1, -1, 0, 0], ![0, 1, 1, 1, -3], ![1, -1, 1, -2, 1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput2572 : ExponentCode := normalNode9602

theorem canonicalSound2572 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2572.moment H = canonicalOutput2572.moment H :=
  canonical_of_padded canonicalInput2572 canonicalOutput2572 (by decide) (by decide)
    ⟨true, false, canonicalPermutation20, OAI.MUB6.Certificate.PairSemantics.permutation199⟩ (by decide +kernel) hH

def canonicalInput2573 : ExponentCode := ⟨5, 5, ![![-2, -1, -1, 1, 3], ![0, 1, -1, 1, -1], ![0, 0, 1, 0, -1], ![1, 0, 0, -2, 1], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput2573 : ExponentCode := normalNode6344

theorem canonicalSound2573 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2573.moment H = canonicalOutput2573.moment H :=
  canonical_of_padded canonicalInput2573 canonicalOutput2573 (by decide) (by decide)
    ⟨true, false, canonicalPermutation74, canonicalPermutation17⟩ (by decide +kernel) hH

def canonicalInput2574 : ExponentCode := ⟨5, 5, ![![-2, -1, -1, 1, 3], ![0, 1, -1, 1, -1], ![0, 1, 0, 0, -1], ![1, -1, 1, -2, 1], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput2574 : ExponentCode := normalNode6350

theorem canonicalSound2574 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2574.moment H = canonicalOutput2574.moment H :=
  canonical_of_padded canonicalInput2574 canonicalOutput2574 (by decide) (by decide)
    ⟨true, false, canonicalPermutation46, canonicalPermutation17⟩ (by decide +kernel) hH

def canonicalInput2575 : ExponentCode := ⟨5, 5, ![![-2, -1, -1, 1, 3], ![0, 1, -1, 1, -1], ![0, 1, 0, 0, -1], ![1, 0, 0, -2, 1], ![1, -1, 2, 0, -2]]⟩

def canonicalOutput2575 : ExponentCode := normalNode8565

theorem canonicalSound2575 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2575.moment H = canonicalOutput2575.moment H :=
  canonical_of_padded canonicalInput2575 canonicalOutput2575 (by decide) (by decide)
    ⟨true, true, canonicalPermutation45, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput2576 : ExponentCode := ⟨5, 5, ![![-2, -1, -1, 1, 3], ![0, 1, -1, 1, -1], ![0, 1, 1, 0, -2], ![1, -1, 1, -2, 1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput2576 : ExponentCode := normalNode6351

theorem canonicalSound2576 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2576.moment H = canonicalOutput2576.moment H :=
  canonical_of_padded canonicalInput2576 canonicalOutput2576 (by decide) (by decide)
    ⟨true, false, canonicalPermutation56, canonicalPermutation33⟩ (by decide +kernel) hH

def canonicalInput2577 : ExponentCode := ⟨5, 5, ![![-2, -1, -1, 1, 3], ![0, 1, 0, 0, -1], ![0, 1, 0, 0, -1], ![1, -1, 2, -2, 0], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput2577 : ExponentCode := normalNode7529

theorem canonicalSound2577 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2577.moment H = canonicalOutput2577.moment H :=
  canonical_of_padded canonicalInput2577 canonicalOutput2577 (by decide) (by decide)
    ⟨true, false, canonicalPermutation30, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput2578 : ExponentCode := ⟨5, 5, ![![-2, -1, -1, 1, 3], ![0, 1, 1, -2, 0], ![0, 0, 1, 1, -2], ![1, -1, 0, 0, 0], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput2578 : ExponentCode := normalNode8400

theorem canonicalSound2578 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2578.moment H = canonicalOutput2578.moment H :=
  canonical_of_padded canonicalInput2578 canonicalOutput2578 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation52⟩ (by decide +kernel) hH

def canonicalInput2579 : ExponentCode := ⟨5, 5, ![![-2, -1, -1, 2, 2], ![0, -1, 1, -1, 1], ![0, 0, 1, 0, -1], ![0, 2, -1, 0, -1], ![2, 0, 0, -1, -1]]⟩

def canonicalOutput2579 : ExponentCode := normalNode7545

theorem canonicalSound2579 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2579.moment H = canonicalOutput2579.moment H :=
  canonical_of_padded canonicalInput2579 canonicalOutput2579 (by decide) (by decide)
    ⟨true, false, canonicalPermutation74, canonicalPermutation22⟩ (by decide +kernel) hH

def canonicalInput2580 : ExponentCode := ⟨5, 5, ![![-2, -1, -1, 2, 2], ![0, -1, 1, -1, 1], ![0, 1, 0, -1, 0], ![1, 0, -1, 0, 0], ![1, 1, 1, 0, -3]]⟩

def canonicalOutput2580 : ExponentCode := normalNode10098

theorem canonicalSound2580 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2580.moment H = canonicalOutput2580.moment H :=
  canonical_of_padded canonicalInput2580 canonicalOutput2580 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation194, canonicalPermutation35⟩ (by decide +kernel) hH

def canonicalInput2581 : ExponentCode := ⟨5, 5, ![![-2, -1, -1, 2, 2], ![0, -1, 2, -2, 1], ![0, 1, 0, 0, -1], ![1, 0, 0, 0, -1], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput2581 : ExponentCode := normalNode7597

theorem canonicalSound2581 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2581.moment H = canonicalOutput2581.moment H :=
  canonical_of_padded canonicalInput2581 canonicalOutput2581 (by decide) (by decide)
    ⟨true, false, canonicalPermutation20, canonicalPermutation23⟩ (by decide +kernel) hH

def canonicalInput2582 : ExponentCode := ⟨5, 5, ![![-2, -1, -1, 2, 2], ![0, -1, 2, 0, -1], ![0, 1, 0, 0, -1], ![0, 1, 0, 0, -1], ![2, 0, -1, -2, 1]]⟩

def canonicalOutput2582 : ExponentCode := normalNode7600

theorem canonicalSound2582 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2582.moment H = canonicalOutput2582.moment H :=
  canonical_of_padded canonicalInput2582 canonicalOutput2582 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, canonicalPermutation35⟩ (by decide +kernel) hH

def canonicalInput2583 : ExponentCode := ⟨5, 5, ![![-2, -1, -1, 2, 2], ![0, -1, 2, 0, -1], ![0, 1, 0, 0, -1], ![1, 0, -1, -2, 2], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput2583 : ExponentCode := normalNode6366

theorem canonicalSound2583 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2583.moment H = canonicalOutput2583.moment H :=
  canonical_of_padded canonicalInput2583 canonicalOutput2583 (by decide) (by decide)
    ⟨true, false, canonicalPermutation46, canonicalPermutation17⟩ (by decide +kernel) hH

def canonicalInput2584 : ExponentCode := ⟨5, 5, ![![-2, -1, -1, 2, 2], ![0, -1, 2, 0, -1], ![0, 1, 0, 0, -1], ![1, 0, 0, -2, 1], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput2584 : ExponentCode := normalNode7580

theorem canonicalSound2584 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2584.moment H = canonicalOutput2584.moment H :=
  canonical_of_padded canonicalInput2584 canonicalOutput2584 (by decide) (by decide)
    ⟨true, false, canonicalPermutation30, canonicalPermutation17⟩ (by decide +kernel) hH

def canonicalInput2585 : ExponentCode := ⟨5, 5, ![![-2, -1, -1, 2, 2], ![0, -1, 2, 0, -1], ![0, 2, -1, 0, -1], ![1, 0, 0, -2, 1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput2585 : ExponentCode := normalNode7581

theorem canonicalSound2585 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2585.moment H = canonicalOutput2585.moment H :=
  canonical_of_padded canonicalInput2585 canonicalOutput2585 (by decide) (by decide)
    ⟨true, false, canonicalPermutation13, OAI.MUB6.Certificate.PairSemantics.permutation199⟩ (by decide +kernel) hH

def canonicalInput2586 : ExponentCode := ⟨3, 5, ![![-2, -1, -1, 2, 2], ![0, -1, 3, 0, -2], ![2, 2, -2, -2, 0]]⟩

def canonicalOutput2586 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code71

theorem canonicalSound2586 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2586.moment H = canonicalOutput2586.moment H :=
  canonical_of_padded canonicalInput2586 canonicalOutput2586 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation178, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput2587 : ExponentCode := ⟨5, 5, ![![-2, -1, -1, 2, 2], ![0, 0, -1, 0, 1], ![0, 1, 1, 0, -2], ![1, -1, 0, 0, 0], ![1, 1, 1, -2, -1]]⟩

def canonicalOutput2587 : ExponentCode := normalNode10427

theorem canonicalSound2587 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2587.moment H = canonicalOutput2587.moment H :=
  canonical_of_padded canonicalInput2587 canonicalOutput2587 (by decide) (by decide)
    ⟨true, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation189⟩ (by decide +kernel) hH

def canonicalInput2588 : ExponentCode := ⟨5, 5, ![![-2, -1, -1, 2, 2], ![0, 0, 0, -1, 1], ![0, -1, 2, 0, -1], ![0, 2, -1, 0, -1], ![2, 0, 0, -1, -1]]⟩

def canonicalOutput2588 : ExponentCode := normalNode8395

theorem canonicalSound2588 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2588.moment H = canonicalOutput2588.moment H :=
  canonical_of_padded canonicalInput2588 canonicalOutput2588 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation188, canonicalPermutation16⟩ (by decide +kernel) hH

def canonicalInput2589 : ExponentCode := ⟨5, 5, ![![-2, -1, -1, 2, 2], ![0, 0, 0, -1, 1], ![0, 0, 1, 0, -1], ![0, 1, 0, 0, -1], ![2, 0, 0, -1, -1]]⟩

def canonicalOutput2589 : ExponentCode := normalNode9184

theorem canonicalSound2589 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2589.moment H = canonicalOutput2589.moment H :=
  canonical_of_padded canonicalInput2589 canonicalOutput2589 (by decide) (by decide)
    ⟨true, false, canonicalPermutation59, canonicalPermutation35⟩ (by decide +kernel) hH

def canonicalInput2590 : ExponentCode := ⟨5, 5, ![![-2, -1, -1, 2, 2], ![0, 0, 0, -1, 1], ![0, 0, 1, 0, -1], ![0, 2, -1, 0, -1], ![2, -1, 1, -1, -1]]⟩

def canonicalOutput2590 : ExponentCode := normalNode10432

theorem canonicalSound2590 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2590.moment H = canonicalOutput2590.moment H :=
  canonical_of_padded canonicalInput2590 canonicalOutput2590 (by decide) (by decide)
    ⟨true, false, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput2591 : ExponentCode := ⟨5, 5, ![![-2, -1, -1, 2, 2], ![0, 0, 1, -2, 1], ![0, 0, 1, 0, -1], ![1, 0, 0, 0, -1], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput2591 : ExponentCode := normalNode7603

theorem canonicalSound2591 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2591.moment H = canonicalOutput2591.moment H :=
  canonical_of_padded canonicalInput2591 canonicalOutput2591 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation201, canonicalPermutation23⟩ (by decide +kernel) hH

def canonicalInput2592 : ExponentCode := ⟨5, 5, ![![-2, -1, -1, 2, 2], ![0, 0, 1, -2, 1], ![0, 1, 0, 0, -1], ![1, -1, 0, 0, 0], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput2592 : ExponentCode := normalNode9784

theorem canonicalSound2592 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2592.moment H = canonicalOutput2592.moment H :=
  canonical_of_padded canonicalInput2592 canonicalOutput2592 (by decide) (by decide)
    ⟨true, false, canonicalPermutation46, canonicalPermutation19⟩ (by decide +kernel) hH

def canonicalInput2593 : ExponentCode := ⟨5, 5, ![![-2, -1, -1, 2, 2], ![0, 0, 1, -2, 1], ![0, 1, 0, 0, -1], ![1, -1, 1, 0, -1], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput2593 : ExponentCode := normalNode7568

theorem canonicalSound2593 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2593.moment H = canonicalOutput2593.moment H :=
  canonical_of_padded canonicalInput2593 canonicalOutput2593 (by decide) (by decide)
    ⟨true, false, canonicalPermutation30, canonicalPermutation22⟩ (by decide +kernel) hH

def canonicalInput2594 : ExponentCode := ⟨5, 5, ![![-2, -1, -1, 2, 2], ![0, 0, 1, -2, 1], ![0, 1, 0, 0, -1], ![1, 0, 0, 0, -1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput2594 : ExponentCode := normalNode7598

theorem canonicalSound2594 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2594.moment H = canonicalOutput2594.moment H :=
  canonical_of_padded canonicalInput2594 canonicalOutput2594 (by decide) (by decide)
    ⟨true, false, canonicalPermutation56, canonicalPermutation52⟩ (by decide +kernel) hH

def canonicalInput2595 : ExponentCode := ⟨5, 5, ![![-2, -1, -1, 2, 2], ![0, 0, 1, -2, 1], ![0, 1, 1, 0, -2], ![1, -1, 0, 0, 0], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput2595 : ExponentCode := normalNode8436

theorem canonicalSound2595 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2595.moment H = canonicalOutput2595.moment H :=
  canonical_of_padded canonicalInput2595 canonicalOutput2595 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation52⟩ (by decide +kernel) hH

def canonicalInput2596 : ExponentCode := ⟨5, 5, ![![-2, -1, -1, 2, 2], ![0, 0, 1, 0, -1], ![0, 0, 1, 0, -1], ![1, 0, 0, -2, 1], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput2596 : ExponentCode := normalNode7602

theorem canonicalSound2596 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2596.moment H = canonicalOutput2596.moment H :=
  canonical_of_padded canonicalInput2596 canonicalOutput2596 (by decide) (by decide)
    ⟨true, false, canonicalPermutation74, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput2597 : ExponentCode := ⟨5, 5, ![![-2, -1, -1, 2, 2], ![0, 0, 1, 0, -1], ![0, 1, 0, 0, -1], ![1, -1, 1, -2, 1], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput2597 : ExponentCode := normalNode7606

theorem canonicalSound2597 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2597.moment H = canonicalOutput2597.moment H :=
  canonical_of_padded canonicalInput2597 canonicalOutput2597 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput2598 : ExponentCode := ⟨5, 5, ![![-2, -1, -1, 2, 2], ![0, 0, 1, 0, -1], ![0, 1, 0, 0, -1], ![1, 0, 0, -2, 1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput2598 : ExponentCode := normalNode7604

theorem canonicalSound2598 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2598.moment H = canonicalOutput2598.moment H :=
  canonical_of_padded canonicalInput2598 canonicalOutput2598 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation201, OAI.MUB6.Certificate.PairSemantics.permutation199⟩ (by decide +kernel) hH

def canonicalInput2599 : ExponentCode := ⟨5, 5, ![![-2, -1, -1, 2, 2], ![0, 0, 1, 0, -1], ![0, 2, -1, 0, -1], ![1, -1, 1, -2, 1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput2599 : ExponentCode := normalNode7607

theorem canonicalSound2599 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2599.moment H = canonicalOutput2599.moment H :=
  canonical_of_padded canonicalInput2599 canonicalOutput2599 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation201, OAI.MUB6.Certificate.PairSemantics.permutation199⟩ (by decide +kernel) hH

def canonicalInput2600 : ExponentCode := ⟨5, 5, ![![-2, -1, -1, 2, 2], ![0, 0, 1, 0, -1], ![0, 2, -1, 0, -1], ![1, 0, 0, -2, 1], ![1, -1, 1, 0, -1]]⟩

def canonicalOutput2600 : ExponentCode := normalNode7580

theorem canonicalSound2600 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2600.moment H = canonicalOutput2600.moment H :=
  canonical_of_padded canonicalInput2600 canonicalOutput2600 (by decide) (by decide)
    ⟨true, false, canonicalPermutation71, canonicalPermutation16⟩ (by decide +kernel) hH

def canonicalInput2601 : ExponentCode := ⟨5, 5, ![![-2, -1, -1, 2, 2], ![0, 0, 2, -2, 0], ![0, 1, 0, 0, -1], ![1, -1, 0, 0, 0], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput2601 : ExponentCode := normalNode10115

theorem canonicalSound2601 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2601.moment H = canonicalOutput2601.moment H :=
  canonical_of_padded canonicalInput2601 canonicalOutput2601 (by decide) (by decide)
    ⟨true, false, canonicalPermutation30, canonicalPermutation19⟩ (by decide +kernel) hH

def canonicalInput2602 : ExponentCode := ⟨5, 5, ![![-2, -1, -1, 2, 2], ![0, 1, -1, 0, 0], ![0, 1, 1, 0, -2], ![1, -1, 1, -2, 1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput2602 : ExponentCode := normalNode9780

theorem canonicalSound2602 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2602.moment H = canonicalOutput2602.moment H :=
  canonical_of_padded canonicalInput2602 canonicalOutput2602 (by decide) (by decide)
    ⟨true, false, canonicalPermutation20, OAI.MUB6.Certificate.PairSemantics.permutation199⟩ (by decide +kernel) hH

def canonicalInput2603 : ExponentCode := ⟨5, 5, ![![-2, -1, -1, 2, 2], ![0, 1, 0, 0, -1], ![0, 1, 0, 0, -1], ![1, -1, 2, 0, -2], ![1, 0, -1, -2, 2]]⟩

def canonicalOutput2603 : ExponentCode := normalNode7245

theorem canonicalSound2603 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2603.moment H = canonicalOutput2603.moment H :=
  canonical_of_padded canonicalInput2603 canonicalOutput2603 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput2604 : ExponentCode := ⟨5, 5, ![![-2, -1, -1, 2, 2], ![0, 1, 0, 0, -1], ![0, 1, 1, 0, -2], ![1, -1, 1, 0, -1], ![1, 0, -1, -2, 2]]⟩

def canonicalOutput2604 : ExponentCode := normalNode6365

theorem canonicalSound2604 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2604.moment H = canonicalOutput2604.moment H :=
  canonical_of_padded canonicalInput2604 canonicalOutput2604 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput2605 : ExponentCode := ⟨3, 5, ![![-2, -1, -1, 3, 1], ![1, -1, 2, 0, -2], ![1, 2, -1, -3, 1]]⟩

def canonicalOutput2605 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1210

theorem canonicalSound2605 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2605.moment H = canonicalOutput2605.moment H :=
  canonical_of_padded canonicalInput2605 canonicalOutput2605 (by decide) (by decide)
    ⟨true, false, canonicalPermutation71, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput2606 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, -2, 2, 0], ![0, 1, -1, 0], ![2, 2, 0, -4]]⟩

def canonicalOutput2606 : ExponentCode := normalNode11207

theorem canonicalSound2606 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2606.moment H = canonicalOutput2606.moment H :=
  canonical_of_padded canonicalInput2606 canonicalOutput2606 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput2607 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, -2, 2, 0], ![0, 1, 1, -2], ![2, 2, -2, -2]]⟩

def canonicalOutput2607 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code583

theorem canonicalSound2607 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2607.moment H = canonicalOutput2607.moment H :=
  canonical_of_padded canonicalInput2607 canonicalOutput2607 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput2608 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, -2, 2, 0], ![0, 2, -2, 0], ![2, 1, 1, -4]]⟩

def canonicalOutput2608 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1267

theorem canonicalSound2608 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2608.moment H = canonicalOutput2608.moment H :=
  canonical_of_padded canonicalInput2608 canonicalOutput2608 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput2609 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, -2, 2, 0], ![0, 2, -1, -1], ![2, 1, 0, -3]]⟩

def canonicalOutput2609 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node448⟩

theorem canonicalSound2609 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2609.moment H = canonicalOutput2609.moment H :=
  canonical_of_padded canonicalInput2609 canonicalOutput2609 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput2610 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, -2, 2, 0], ![0, 2, 0, -2], ![2, 1, -1, -2]]⟩

def canonicalOutput2610 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node459⟩

theorem canonicalSound2610 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2610.moment H = canonicalOutput2610.moment H :=
  canonical_of_padded canonicalInput2610 canonicalOutput2610 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput2611 : ExponentCode := ⟨5, 4, ![![-2, -1, -1, 4], ![0, -2, 2, 0], ![0, 3, -2, -1], ![1, 0, 1, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput2611 : ExponentCode := normalNode1174

theorem canonicalSound2611 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2611.moment H = canonicalOutput2611.moment H :=
  canonical_of_padded canonicalInput2611 canonicalOutput2611 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2612 : ExponentCode := ⟨5, 4, ![![-2, -1, -1, 4], ![0, -2, 2, 0], ![0, 3, -1, -2], ![1, 0, 0, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput2612 : ExponentCode := normalNode1329

theorem canonicalSound2612 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2612.moment H = canonicalOutput2612.moment H :=
  canonical_of_padded canonicalInput2612 canonicalOutput2612 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput2613 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, -2, 2, 0], ![0, 3, -1, -2], ![2, 0, 0, -2]]⟩

def canonicalOutput2613 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node455⟩

theorem canonicalSound2613 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2613.moment H = canonicalOutput2613.moment H :=
  canonical_of_padded canonicalInput2613 canonicalOutput2613 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput2614 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, -2, 2, 0], ![0, 3, 1, -4], ![2, 0, -2, 0]]⟩

def canonicalOutput2614 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code793

theorem canonicalSound2614 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2614.moment H = canonicalOutput2614.moment H :=
  canonical_of_padded canonicalInput2614 canonicalOutput2614 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput2615 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, -2, 2, 0], ![1, 0, -1, 0], ![1, 3, 0, -4]]⟩

def canonicalOutput2615 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1273⟩

theorem canonicalSound2615 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2615.moment H = canonicalOutput2615.moment H :=
  canonical_of_padded canonicalInput2615 canonicalOutput2615 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput2616 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, -2, 2, 0], ![1, 0, 0, -1], ![1, 3, -1, -3]]⟩

def canonicalOutput2616 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1166⟩

theorem canonicalSound2616 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2616.moment H = canonicalOutput2616.moment H :=
  canonical_of_padded canonicalInput2616 canonicalOutput2616 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput2617 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, -2, 2, 0], ![1, 0, 1, -2], ![1, 3, -2, -2]]⟩

def canonicalOutput2617 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code554

theorem canonicalSound2617 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2617.moment H = canonicalOutput2617.moment H :=
  canonical_of_padded canonicalInput2617 canonicalOutput2617 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput2618 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, -2, 2, 0], ![1, 1, -2, 0], ![1, 2, 1, -4]]⟩

def canonicalOutput2618 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1133

theorem canonicalSound2618 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2618.moment H = canonicalOutput2618.moment H :=
  canonical_of_padded canonicalInput2618 canonicalOutput2618 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput2619 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, -2, 2, 0], ![1, 1, -1, -1], ![1, 2, 0, -3]]⟩

def canonicalOutput2619 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node468⟩

theorem canonicalSound2619 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2619.moment H = canonicalOutput2619.moment H :=
  canonical_of_padded canonicalInput2619 canonicalOutput2619 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput2620 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, -2, 2, 0], ![1, 1, 0, -2], ![1, 2, -1, -2]]⟩

def canonicalOutput2620 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node469⟩

theorem canonicalSound2620 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2620.moment H = canonicalOutput2620.moment H :=
  canonical_of_padded canonicalInput2620 canonicalOutput2620 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput2621 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, -2, 2, 0], ![1, 3, -2, -2], ![1, 0, 1, -2]]⟩

def canonicalOutput2621 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code554

theorem canonicalSound2621 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2621.moment H = canonicalOutput2621.moment H :=
  canonical_of_padded canonicalInput2621 canonicalOutput2621 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput2622 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, -2, 2, 0], ![1, 3, 0, -4], ![1, 0, -1, 0]]⟩

def canonicalOutput2622 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1273⟩

theorem canonicalSound2622 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2622.moment H = canonicalOutput2622.moment H :=
  canonical_of_padded canonicalInput2622 canonicalOutput2622 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation155, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput2623 : ExponentCode := ⟨5, 4, ![![-2, -1, -1, 4], ![0, -2, 3, -1], ![0, 1, 0, -1], ![1, 1, 0, -2], ![1, 1, -2, 0]]⟩

def canonicalOutput2623 : ExponentCode := normalNode1191

theorem canonicalSound2623 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2623.moment H = canonicalOutput2623.moment H :=
  canonical_of_padded canonicalInput2623 canonicalOutput2623 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

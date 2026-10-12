import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes06
import NoFourMUBs.Step2.SOS.MomentCodes08
import NoFourMUBs.Step2.SOS.MomentCodes10
import NoFourMUBs.Step2.SOS.MomentCodes13
import NoFourMUBs.Step2.SOS.MomentCodes14
import NoFourMUBs.Step2.SOS.MomentCodes15
import NoFourMUBs.Step2.SOS.MomentCodes18
import NoFourMUBs.Step2.SOS.MomentCodes19
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes10
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes25
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes30
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes31
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes32
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput17472 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![-1, 0, 2, 0, -1], ![1, -1, -2, 1, 1], ![1, 2, 0, -3, 0]]⟩

def canonicalOutput17472 : ExponentCode := normalNode3369

theorem canonicalSound17472 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17472.moment H = canonicalOutput17472.moment H :=
  canonical_of_padded canonicalInput17472 canonicalOutput17472 (by decide) (by decide)
    ⟨true, true, canonicalPermutation23, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17473 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![-1, 0, 2, 0, -1], ![1, -1, -1, -1, 2], ![1, 2, -1, -1, -1]]⟩

def canonicalOutput17473 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code948

theorem canonicalSound17473 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17473.moment H = canonicalOutput17473.moment H :=
  canonical_of_padded canonicalInput17473 canonicalOutput17473 (by decide) (by decide)
    ⟨true, true, canonicalPermutation23, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17474 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![-1, 0, 2, 0, -1], ![1, -1, -1, 0, 1], ![1, 2, -1, -2, 0]]⟩

def canonicalOutput17474 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1994⟩

theorem canonicalSound17474 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17474.moment H = canonicalOutput17474.moment H :=
  canonical_of_padded canonicalInput17474 canonicalOutput17474 (by decide) (by decide)
    ⟨true, true, canonicalPermutation23, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17475 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![-1, 0, 2, 0, -1], ![1, 2, -1, -1, -1], ![1, -1, -1, -1, 2]]⟩

def canonicalOutput17475 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code948

theorem canonicalSound17475 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17475.moment H = canonicalOutput17475.moment H :=
  canonical_of_padded canonicalInput17475 canonicalOutput17475 (by decide) (by decide)
    ⟨true, true, canonicalPermutation23, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput17476 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![-1, 0, 2, 0, -1], ![2, -1, 0, -1, 0], ![0, 2, -2, -1, 1]]⟩

def canonicalOutput17476 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1996⟩

theorem canonicalSound17476 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17476.moment H = canonicalOutput17476.moment H :=
  canonical_of_padded canonicalInput17476 canonicalOutput17476 (by decide) (by decide)
    ⟨true, true, canonicalPermutation35, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput17477 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![-1, 1, -2, 0, 2], ![0, -1, 2, 1, -2], ![2, 1, 0, -3, 0]]⟩

def canonicalOutput17477 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code389

theorem canonicalSound17477 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17477.moment H = canonicalOutput17477.moment H :=
  canonical_of_padded canonicalInput17477 canonicalOutput17477 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput17478 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![-1, 1, -2, 0, 2], ![0, 1, 1, -1, -1], ![2, -1, 1, -1, -1]]⟩

def canonicalOutput17478 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1171

theorem canonicalSound17478 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17478.moment H = canonicalOutput17478.moment H :=
  canonical_of_padded canonicalInput17478 canonicalOutput17478 (by decide) (by decide)
    ⟨true, true, canonicalPermutation23, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput17479 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![-1, 1, -2, 0, 2], ![0, 1, 1, 0, -2], ![2, -1, 1, -2, 0]]⟩

def canonicalOutput17479 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code887

theorem canonicalSound17479 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17479.moment H = canonicalOutput17479.moment H :=
  canonical_of_padded canonicalInput17479 canonicalOutput17479 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation198, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput17480 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![-1, 1, -2, 1, 1], ![0, 1, 1, -3, 1], ![2, -1, 1, 0, -2]]⟩

def canonicalOutput17480 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code424

theorem canonicalSound17480 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17480.moment H = canonicalOutput17480.moment H :=
  canonical_of_padded canonicalInput17480 canonicalOutput17480 (by decide) (by decide)
    ⟨true, true, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput17481 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![-1, 1, -2, 1, 1], ![1, -1, 2, 0, -2], ![1, 1, 0, -3, 1]]⟩

def canonicalOutput17481 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code422

theorem canonicalSound17481 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17481.moment H = canonicalOutput17481.moment H :=
  canonical_of_padded canonicalInput17481 canonicalOutput17481 (by decide) (by decide)
    ⟨true, true, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17482 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![-1, 1, -1, -1, 2], ![0, 2, -1, 0, -1], ![2, -2, 2, -1, -1]]⟩

def canonicalOutput17482 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1007

theorem canonicalSound17482 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17482.moment H = canonicalOutput17482.moment H :=
  canonical_of_padded canonicalInput17482 canonicalOutput17482 (by decide) (by decide)
    ⟨true, true, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput17483 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![-1, 1, -1, -1, 2], ![1, -2, 2, 0, -1], ![1, 2, -1, -1, -1]]⟩

def canonicalOutput17483 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code946

theorem canonicalSound17483 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17483.moment H = canonicalOutput17483.moment H :=
  canonical_of_padded canonicalInput17483 canonicalOutput17483 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput17484 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![-1, 1, 0, -2, 2], ![0, -1, 2, 1, -2], ![2, 1, -2, -1, 0]]⟩

def canonicalOutput17484 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code535

theorem canonicalSound17484 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17484.moment H = canonicalOutput17484.moment H :=
  canonical_of_padded canonicalInput17484 canonicalOutput17484 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput17485 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![-1, 1, 1, -2, 1], ![1, -1, 1, 1, -2], ![1, 1, -2, -1, 1]]⟩

def canonicalOutput17485 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code557

theorem canonicalSound17485 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17485.moment H = canonicalOutput17485.moment H :=
  canonical_of_padded canonicalInput17485 canonicalOutput17485 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput17486 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![-1, 1, 1, -1, 0], ![-1, 1, -2, 0, 2], ![3, -1, 1, -1, -2]]⟩

def canonicalOutput17486 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1167

theorem canonicalSound17486 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17486.moment H = canonicalOutput17486.moment H :=
  canonical_of_padded canonicalInput17486 canonicalOutput17486 (by decide) (by decide)
    ⟨true, true, canonicalPermutation23, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17487 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![-1, 1, 1, -1, 0], ![0, 1, -2, -1, 2], ![2, -1, 1, 0, -2]]⟩

def canonicalOutput17487 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1161

theorem canonicalSound17487 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17487.moment H = canonicalOutput17487.moment H :=
  canonical_of_padded canonicalInput17487 canonicalOutput17487 (by decide) (by decide)
    ⟨true, true, canonicalPermutation23, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput17488 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![-1, 1, 1, -1, 0], ![0, 1, -2, 0, 1], ![2, -1, 1, -1, -1]]⟩

def canonicalOutput17488 : ExponentCode := normalNode4311

theorem canonicalSound17488 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17488.moment H = canonicalOutput17488.moment H :=
  canonical_of_padded canonicalInput17488 canonicalOutput17488 (by decide) (by decide)
    ⟨true, false, canonicalPermutation42, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput17489 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![-1, 1, 1, -1, 0], ![0, 1, 1, -1, -1], ![2, -1, -2, 0, 1]]⟩

def canonicalOutput17489 : ExponentCode := normalNode5625

theorem canonicalSound17489 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17489.moment H = canonicalOutput17489.moment H :=
  canonical_of_padded canonicalInput17489 canonicalOutput17489 (by decide) (by decide)
    ⟨true, true, canonicalPermutation23, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17490 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![-1, 1, 1, -1, 0], ![1, 1, -2, -1, 1], ![1, -1, 1, 0, -1]]⟩

def canonicalOutput17490 : ExponentCode := normalNode4304

theorem canonicalSound17490 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17490.moment H = canonicalOutput17490.moment H :=
  canonical_of_padded canonicalInput17490 canonicalOutput17490 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput17491 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![-1, 1, 1, -1, 0], ![1, 1, 1, -1, -2], ![1, -1, -2, 0, 2]]⟩

def canonicalOutput17491 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1168

theorem canonicalSound17491 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17491.moment H = canonicalOutput17491.moment H :=
  canonical_of_padded canonicalInput17491 canonicalOutput17491 (by decide) (by decide)
    ⟨true, true, canonicalPermutation23, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput17492 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![-1, 1, 1, 0, -1], ![0, 1, -2, -1, 2], ![2, -1, 1, -1, -1]]⟩

def canonicalOutput17492 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code973

theorem canonicalSound17492 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17492.moment H = canonicalOutput17492.moment H :=
  canonical_of_padded canonicalInput17492 canonicalOutput17492 (by decide) (by decide)
    ⟨true, true, canonicalPermutation23, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput17493 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![-1, 1, 1, 0, -1], ![1, 1, -2, 0, 0], ![1, -1, 1, -2, 1]]⟩

def canonicalOutput17493 : ExponentCode := normalNode3991

theorem canonicalSound17493 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17493.moment H = canonicalOutput17493.moment H :=
  canonical_of_padded canonicalInput17493 canonicalOutput17493 (by decide) (by decide)
    ⟨true, true, canonicalPermutation23, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17494 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![-1, 1, 2, -1, -1], ![0, -1, -1, -1, 3], ![2, 1, -1, 0, -2]]⟩

def canonicalOutput17494 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1013

theorem canonicalSound17494 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17494.moment H = canonicalOutput17494.moment H :=
  canonical_of_padded canonicalInput17494 canonicalOutput17494 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput17495 : ExponentCode := ⟨3, 5, ![![-1, -1, 0, 2, 0], ![-1, 2, -2, -1, 2], ![2, -1, 2, -1, -2]]⟩

def canonicalOutput17495 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1220

theorem canonicalSound17495 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17495.moment H = canonicalOutput17495.moment H :=
  canonical_of_padded canonicalInput17495 canonicalOutput17495 (by decide) (by decide)
    ⟨true, true, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17496 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![-1, 2, -2, 0, 1], ![-1, -1, 2, -1, 1], ![3, 0, 0, -1, -2]]⟩

def canonicalOutput17496 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code976

theorem canonicalSound17496 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17496.moment H = canonicalOutput17496.moment H :=
  canonical_of_padded canonicalInput17496 canonicalOutput17496 (by decide) (by decide)
    ⟨true, true, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17497 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![-1, 2, -2, 0, 1], ![0, 1, 2, -1, -2], ![2, -2, 0, -1, 1]]⟩

def canonicalOutput17497 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code979

theorem canonicalSound17497 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17497.moment H = canonicalOutput17497.moment H :=
  canonical_of_padded canonicalInput17497 canonicalOutput17497 (by decide) (by decide)
    ⟨true, true, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput17498 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![-1, 2, -2, 0, 1], ![1, -3, 1, 0, 1], ![1, 2, 1, -2, -2]]⟩

def canonicalOutput17498 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code873

theorem canonicalSound17498 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17498.moment H = canonicalOutput17498.moment H :=
  canonical_of_padded canonicalInput17498 canonicalOutput17498 (by decide) (by decide)
    ⟨true, true, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput17499 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![-1, 2, -2, 0, 1], ![1, -2, 1, -1, 1], ![1, 1, 1, -1, -2]]⟩

def canonicalOutput17499 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code977

theorem canonicalSound17499 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17499.moment H = canonicalOutput17499.moment H :=
  canonical_of_padded canonicalInput17499 canonicalOutput17499 (by decide) (by decide)
    ⟨true, true, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17500 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![-1, 2, -2, 0, 1], ![1, -1, 1, 1, -2], ![1, 0, 1, -3, 1]]⟩

def canonicalOutput17500 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code424

theorem canonicalSound17500 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17500.moment H = canonicalOutput17500.moment H :=
  canonical_of_padded canonicalInput17500 canonicalOutput17500 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput17501 : ExponentCode := ⟨3, 5, ![![-1, -1, 0, 2, 0], ![-1, 2, -2, 0, 1], ![2, -1, 2, -2, -1]]⟩

def canonicalOutput17501 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node660⟩

theorem canonicalSound17501 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17501.moment H = canonicalOutput17501.moment H :=
  canonical_of_padded canonicalInput17501 canonicalOutput17501 (by decide) (by decide)
    ⟨true, true, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17502 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![-1, 2, -1, -1, 1], ![-1, -1, 2, -1, 1], ![3, 0, -1, 0, -2]]⟩

def canonicalOutput17502 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1011

theorem canonicalSound17502 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17502.moment H = canonicalOutput17502.moment H :=
  canonical_of_padded canonicalInput17502 canonicalOutput17502 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation194, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput17503 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![-1, 2, -1, -1, 1], ![0, 1, 2, -1, -2], ![2, -2, -1, 0, 1]]⟩

def canonicalOutput17503 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code971

theorem canonicalSound17503 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17503.moment H = canonicalOutput17503.moment H :=
  canonical_of_padded canonicalInput17503 canonicalOutput17503 (by decide) (by decide)
    ⟨true, true, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput17504 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![-1, 2, -1, 0, 0], ![0, 1, 2, -2, -1], ![2, -2, -1, 0, 1]]⟩

def canonicalOutput17504 : ExponentCode := normalNode4058

theorem canonicalSound17504 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17504.moment H = canonicalOutput17504.moment H :=
  canonical_of_padded canonicalInput17504 canonicalOutput17504 (by decide) (by decide)
    ⟨true, true, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput17505 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![-1, 2, -1, 0, 0], ![1, -1, -1, -1, 2], ![1, 0, 2, -1, -2]]⟩

def canonicalOutput17505 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code986

theorem canonicalSound17505 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17505.moment H = canonicalOutput17505.moment H :=
  canonical_of_padded canonicalInput17505 canonicalOutput17505 (by decide) (by decide)
    ⟨true, true, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17506 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![-1, 2, -1, 0, 0], ![1, -1, -1, 0, 1], ![1, 0, 2, -2, -1]]⟩

def canonicalOutput17506 : ExponentCode := normalNode3901

theorem canonicalSound17506 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17506.moment H = canonicalOutput17506.moment H :=
  canonical_of_padded canonicalInput17506 canonicalOutput17506 (by decide) (by decide)
    ⟨true, true, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput17507 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![-1, 2, -1, 0, 0], ![1, 0, -1, -1, 1], ![1, -1, 2, -1, -1]]⟩

def canonicalOutput17507 : ExponentCode := normalNode4385

theorem canonicalSound17507 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17507.moment H = canonicalOutput17507.moment H :=
  canonical_of_padded canonicalInput17507 canonicalOutput17507 (by decide) (by decide)
    ⟨true, true, canonicalPermutation37, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput17508 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![-1, 2, 0, -2, 1], ![1, -1, -2, 1, 1], ![1, 0, 2, -1, -2]]⟩

def canonicalOutput17508 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code556

theorem canonicalSound17508 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17508.moment H = canonicalOutput17508.moment H :=
  canonical_of_padded canonicalInput17508 canonicalOutput17508 (by decide) (by decide)
    ⟨true, true, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput17509 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![-1, 2, 0, -1, 0], ![-1, 0, 2, 0, -1], ![3, -1, -2, -1, 1]]⟩

def canonicalOutput17509 : ExponentCode := normalNode3768

theorem canonicalSound17509 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17509.moment H = canonicalOutput17509.moment H :=
  canonical_of_padded canonicalInput17509 canonicalOutput17509 (by decide) (by decide)
    ⟨true, true, canonicalPermutation35, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput17510 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![-1, 2, 0, -1, 0], ![0, -1, 2, 0, -1], ![2, 0, -2, -1, 1]]⟩

def canonicalOutput17510 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1996⟩

theorem canonicalSound17510 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17510.moment H = canonicalOutput17510.moment H :=
  canonical_of_padded canonicalInput17510 canonicalOutput17510 (by decide) (by decide)
    ⟨true, true, canonicalPermutation36, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput17511 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![-1, 2, 0, -1, 0], ![0, 0, -2, 0, 2], ![2, -1, 2, -1, -2]]⟩

def canonicalOutput17511 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code848

theorem canonicalSound17511 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17511.moment H = canonicalOutput17511.moment H :=
  canonical_of_padded canonicalInput17511 canonicalOutput17511 (by decide) (by decide)
    ⟨true, true, canonicalPermutation74, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput17512 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![-1, 2, 0, -1, 0], ![0, 0, 2, 0, -2], ![2, -1, -2, -1, 2]]⟩

def canonicalOutput17512 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code848

theorem canonicalSound17512 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17512.moment H = canonicalOutput17512.moment H :=
  canonical_of_padded canonicalInput17512 canonicalOutput17512 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation179, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput17513 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![-1, 2, 0, -1, 0], ![1, -1, 2, 0, -2], ![1, 0, -2, -1, 2]]⟩

def canonicalOutput17513 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1190

theorem canonicalSound17513 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17513.moment H = canonicalOutput17513.moment H :=
  canonical_of_padded canonicalInput17513 canonicalOutput17513 (by decide) (by decide)
    ⟨true, true, canonicalPermutation23, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17514 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![-1, 2, 0, -1, 0], ![1, 0, -2, 0, 1], ![1, -1, 2, -1, -1]]⟩

def canonicalOutput17514 : ExponentCode := normalNode3994

theorem canonicalSound17514 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17514.moment H = canonicalOutput17514.moment H :=
  canonical_of_padded canonicalInput17514 canonicalOutput17514 (by decide) (by decide)
    ⟨true, false, canonicalPermutation32, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput17515 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![-1, 2, 0, 0, -1], ![-1, -1, 2, -1, 1], ![3, 0, -2, -1, 0]]⟩

def canonicalOutput17515 : ExponentCode := normalNode4436

theorem canonicalSound17515 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17515.moment H = canonicalOutput17515.moment H :=
  canonical_of_padded canonicalInput17515 canonicalOutput17515 (by decide) (by decide)
    ⟨true, true, canonicalPermutation23, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17516 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![-1, 2, 0, 0, -1], ![1, -1, -2, 1, 1], ![1, 0, 2, -3, 0]]⟩

def canonicalOutput17516 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1961⟩

theorem canonicalSound17516 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17516.moment H = canonicalOutput17516.moment H :=
  canonical_of_padded canonicalInput17516 canonicalOutput17516 (by decide) (by decide)
    ⟨true, true, canonicalPermutation23, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17517 : ExponentCode := ⟨3, 5, ![![-1, -1, 0, 2, 0], ![-1, 2, 2, -1, -2], ![2, -1, -2, -1, 2]]⟩

def canonicalOutput17517 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1220

theorem canonicalSound17517 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17517.moment H = canonicalOutput17517.moment H :=
  canonical_of_padded canonicalInput17517 canonicalOutput17517 (by decide) (by decide)
    ⟨true, true, canonicalPermutation23, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17518 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![-1, 3, -2, -1, 1], ![1, -3, 1, 0, 1], ![1, 1, 1, -1, -2]]⟩

def canonicalOutput17518 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code962

theorem canonicalSound17518 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17518.moment H = canonicalOutput17518.moment H :=
  canonical_of_padded canonicalInput17518 canonicalOutput17518 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput17519 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, -2, 1, 0, 1], ![-1, 2, -2, 0, 1], ![2, 1, 1, -2, -2]]⟩

def canonicalOutput17519 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code667

theorem canonicalSound17519 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17519.moment H = canonicalOutput17519.moment H :=
  canonical_of_padded canonicalInput17519 canonicalOutput17519 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation167, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput17520 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, -2, 1, 0, 1], ![-1, 3, -2, -1, 1], ![2, 0, 1, -1, -2]]⟩

def canonicalOutput17520 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code425

theorem canonicalSound17520 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17520.moment H = canonicalOutput17520.moment H :=
  canonical_of_padded canonicalInput17520 canonicalOutput17520 (by decide) (by decide)
    ⟨true, false, canonicalPermutation78, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput17521 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, -2, 1, 0, 1], ![0, 2, -2, 0, 0], ![1, 1, 1, -2, -1]]⟩

def canonicalOutput17521 : ExponentCode := normalNode2934

theorem canonicalSound17521 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17521.moment H = canonicalOutput17521.moment H :=
  canonical_of_padded canonicalInput17521 canonicalOutput17521 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation167, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput17522 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, -2, 1, 0, 1], ![0, 3, -2, -1, 0], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput17522 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1643⟩

theorem canonicalSound17522 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17522.moment H = canonicalOutput17522.moment H :=
  canonical_of_padded canonicalInput17522 canonicalOutput17522 (by decide) (by decide)
    ⟨true, false, canonicalPermutation78, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput17523 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 2, 0], ![0, -1, -2, 0, 3], ![0, 0, 2, 0, -2], ![0, 1, 0, 0, -1], ![1, 1, 0, -2, 0]]⟩

def canonicalOutput17523 : ExponentCode := normalNode6530

theorem canonicalSound17523 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17523.moment H = canonicalOutput17523.moment H :=
  canonical_of_padded canonicalInput17523 canonicalOutput17523 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, OAI.MUB6.Certificate.PairSemantics.permutation194⟩ (by decide +kernel) hH

def canonicalInput17524 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, -1, -2, 0, 3], ![0, 0, 2, 0, -2], ![1, 2, 0, -2, -1]]⟩

def canonicalOutput17524 : ExponentCode := normalNode3451

theorem canonicalSound17524 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17524.moment H = canonicalOutput17524.moment H :=
  canonical_of_padded canonicalInput17524 canonicalOutput17524 (by decide) (by decide)
    ⟨true, false, canonicalPermutation31, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput17525 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, -1, -2, 0, 3], ![0, 1, 1, -1, -1], ![1, 1, 1, -1, -2]]⟩

def canonicalOutput17525 : ExponentCode := normalNode5431

theorem canonicalSound17525 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17525.moment H = canonicalOutput17525.moment H :=
  canonical_of_padded canonicalInput17525 canonicalOutput17525 (by decide) (by decide)
    ⟨true, true, canonicalPermutation23, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput17526 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 2, 0], ![0, -1, -2, 0, 3], ![0, 1, 2, -1, -2], ![0, 1, 0, 0, -1], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput17526 : ExponentCode := normalNode10379

theorem canonicalSound17526 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17526.moment H = canonicalOutput17526.moment H :=
  canonical_of_padded canonicalInput17526 canonicalOutput17526 (by decide) (by decide)
    ⟨true, false, canonicalPermutation46, canonicalPermutation58⟩ (by decide +kernel) hH

def canonicalInput17527 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, -1, -2, 0, 3], ![1, 0, 2, -1, -2], ![0, 2, 0, -1, -1]]⟩

def canonicalOutput17527 : ExponentCode := normalNode5474

theorem canonicalSound17527 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17527.moment H = canonicalOutput17527.moment H :=
  canonical_of_padded canonicalInput17527 canonicalOutput17527 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation169, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput17528 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, -1, -2, 0, 3], ![1, 1, 1, -2, -1], ![0, 1, 1, 0, -2]]⟩

def canonicalOutput17528 : ExponentCode := normalNode3491

theorem canonicalSound17528 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17528.moment H = canonicalOutput17528.moment H :=
  canonical_of_padded canonicalInput17528 canonicalOutput17528 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation198, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput17529 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 2, 0], ![0, -1, -1, 0, 2], ![0, 0, 1, 0, -1], ![0, 1, 0, 0, -1], ![1, 1, 0, -2, 0]]⟩

def canonicalOutput17529 : ExponentCode := normalNode8288

theorem canonicalSound17529 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17529.moment H = canonicalOutput17529.moment H :=
  canonical_of_padded canonicalInput17529 canonicalOutput17529 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, OAI.MUB6.Certificate.PairSemantics.permutation194⟩ (by decide +kernel) hH

def canonicalInput17530 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, -1, 1, -1, 1], ![-1, 1, 1, -1, 0], ![2, 1, -2, 0, -1]]⟩

def canonicalOutput17530 : ExponentCode := normalNode5621

theorem canonicalSound17530 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17530.moment H = canonicalOutput17530.moment H :=
  canonical_of_padded canonicalInput17530 canonicalOutput17530 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17531 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, -1, 1, -1, 1], ![-1, 1, 1, 0, -1], ![2, 1, -2, -1, 0]]⟩

def canonicalOutput17531 : ExponentCode := normalNode4293

theorem canonicalSound17531 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17531.moment H = canonicalOutput17531.moment H :=
  canonical_of_padded canonicalInput17531 canonicalOutput17531 (by decide) (by decide)
    ⟨true, true, canonicalPermutation23, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput17532 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, -1, 1, -1, 1], ![-1, 2, -2, 0, 1], ![2, 0, 1, -1, -2]]⟩

def canonicalOutput17532 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1158

theorem canonicalSound17532 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17532.moment H = canonicalOutput17532.moment H :=
  canonical_of_padded canonicalInput17532 canonicalOutput17532 (by decide) (by decide)
    ⟨true, true, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17533 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, -1, 1, -1, 1], ![0, 0, 1, -1, 0], ![1, 2, -2, 0, -1]]⟩

def canonicalOutput17533 : ExponentCode := normalNode8941

theorem canonicalSound17533 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17533.moment H = canonicalOutput17533.moment H :=
  canonical_of_padded canonicalInput17533 canonicalOutput17533 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation181, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput17534 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, -1, 1, -1, 1], ![0, 0, 1, 0, -1], ![1, 2, -2, -1, 0]]⟩

def canonicalOutput17534 : ExponentCode := normalNode9099

theorem canonicalSound17534 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17534.moment H = canonicalOutput17534.moment H :=
  canonical_of_padded canonicalInput17534 canonicalOutput17534 (by decide) (by decide)
    ⟨true, true, canonicalPermutation42, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput17535 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, -1, 1, -1, 1], ![0, 1, 1, -1, -1], ![1, 1, -2, 0, 0]]⟩

def canonicalOutput17535 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2085⟩

theorem canonicalSound17535 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17535.moment H = canonicalOutput17535.moment H :=
  canonical_of_padded canonicalInput17535 canonicalOutput17535 (by decide) (by decide)
    ⟨true, false, canonicalPermutation26, canonicalPermutation0⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

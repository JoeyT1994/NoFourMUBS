import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes12
import NoFourMUBs.Step2.SOS.MomentCodes13
import NoFourMUBs.Step2.SOS.MomentCodes15
import NoFourMUBs.Step2.SOS.MomentCodes21
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes033
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes26
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes27
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes31
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes32
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes39
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes41
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput16384 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 1, 1], ![0, -1, 1, -1, 1], ![0, 1, -1, 0, 0], ![0, 1, 0, 0, -1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput16384 : ExponentCode := normalNode8690

theorem canonicalSound16384 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16384.moment H = canonicalOutput16384.moment H :=
  canonical_of_padded canonicalInput16384 canonicalOutput16384 (by decide) (by decide)
    ⟨true, false, canonicalPermutation30, canonicalPermutation76⟩ (by decide +kernel) hH

def canonicalInput16385 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, -1, 1, -1, 1], ![0, 1, -1, 1, -1], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput16385 : ExponentCode := normalNode9290

theorem canonicalSound16385 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16385.moment H = canonicalOutput16385.moment H :=
  canonical_of_padded canonicalInput16385 canonicalOutput16385 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput16386 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, -1, 1, -1, 1], ![0, 1, 0, 0, -1], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput16386 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2628⟩

theorem canonicalSound16386 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16386.moment H = canonicalOutput16386.moment H :=
  canonical_of_padded canonicalInput16386 canonicalOutput16386 (by decide) (by decide)
    ⟨true, false, canonicalPermutation30, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput16387 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, -1, 1, -1, 1], ![0, 1, 0, 1, -2], ![1, 1, -1, -1, 0]]⟩

def canonicalOutput16387 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2071⟩

theorem canonicalSound16387 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16387.moment H = canonicalOutput16387.moment H :=
  canonical_of_padded canonicalInput16387 canonicalOutput16387 (by decide) (by decide)
    ⟨true, false, canonicalPermutation43, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput16388 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, -1, 1, -1, 1], ![0, 1, 1, -1, -1], ![1, 1, -2, 1, -1]]⟩

def canonicalOutput16388 : ExponentCode := normalNode8863

theorem canonicalSound16388 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16388.moment H = canonicalOutput16388.moment H :=
  canonical_of_padded canonicalInput16388 canonicalOutput16388 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation181, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput16389 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, -1, 1, -1, 1], ![0, 1, 1, 1, -3], ![1, 1, -2, -1, 1]]⟩

def canonicalOutput16389 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2513⟩

theorem canonicalSound16389 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16389.moment H = canonicalOutput16389.moment H :=
  canonical_of_padded canonicalInput16389 canonicalOutput16389 (by decide) (by decide)
    ⟨true, true, canonicalPermutation43, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput16390 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, -1, 1, -1, 1], ![0, 2, -2, 1, -1], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput16390 : ExponentCode := normalNode8825

theorem canonicalSound16390 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16390.moment H = canonicalOutput16390.moment H :=
  canonical_of_padded canonicalInput16390 canonicalOutput16390 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput16391 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, -1, 1, -1, 1], ![0, 2, -1, -1, 0], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput16391 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2076⟩

theorem canonicalSound16391 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16391.moment H = canonicalOutput16391.moment H :=
  canonical_of_padded canonicalInput16391 canonicalOutput16391 (by decide) (by decide)
    ⟨true, false, canonicalPermutation33, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput16392 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, -1, 1, -1, 1], ![0, 2, -1, 0, -1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput16392 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2630⟩

theorem canonicalSound16392 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16392.moment H = canonicalOutput16392.moment H :=
  canonical_of_padded canonicalInput16392 canonicalOutput16392 (by decide) (by decide)
    ⟨true, false, canonicalPermutation20, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput16393 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, -1, 1, -1, 1], ![0, 2, 0, -1, -1], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput16393 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2071⟩

theorem canonicalSound16393 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16393.moment H = canonicalOutput16393.moment H :=
  canonical_of_padded canonicalInput16393 canonicalOutput16393 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation166, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput16394 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, -1, 1, -1, 1], ![0, 2, 1, 0, -3], ![1, 0, -2, 0, 1]]⟩

def canonicalOutput16394 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2063⟩

theorem canonicalSound16394 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16394.moment H = canonicalOutput16394.moment H :=
  canonical_of_padded canonicalInput16394 canonicalOutput16394 (by decide) (by decide)
    ⟨true, false, canonicalPermutation32, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput16395 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, -1, 1, -1, 1], ![1, 0, -2, 0, 1], ![0, 2, 1, 0, -3]]⟩

def canonicalOutput16395 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2063⟩

theorem canonicalSound16395 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16395.moment H = canonicalOutput16395.moment H :=
  canonical_of_padded canonicalInput16395 canonicalOutput16395 (by decide) (by decide)
    ⟨true, false, canonicalPermutation32, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput16396 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, -1, 1, -1, 1], ![1, 0, 1, 0, -2], ![0, 2, -2, 0, 0]]⟩

def canonicalOutput16396 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2065⟩

theorem canonicalSound16396 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16396.moment H = canonicalOutput16396.moment H :=
  canonical_of_padded canonicalInput16396 canonicalOutput16396 (by decide) (by decide)
    ⟨true, true, canonicalPermutation78, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput16397 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, -1, 1, -1, 1], ![1, 1, -2, 0, 0], ![0, 1, 1, 0, -2]]⟩

def canonicalOutput16397 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2084⟩

theorem canonicalSound16397 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16397.moment H = canonicalOutput16397.moment H :=
  canonical_of_padded canonicalInput16397 canonicalOutput16397 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput16398 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, -1, 1, -1, 1], ![1, 1, -2, 1, -1], ![0, 1, 1, -1, -1]]⟩

def canonicalOutput16398 : ExponentCode := normalNode8863

theorem canonicalSound16398 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16398.moment H = canonicalOutput16398.moment H :=
  canonical_of_padded canonicalInput16398 canonicalOutput16398 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation181, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput16399 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, -1, 1, 0, 0], ![0, 1, 0, 1, -2], ![1, 1, -1, -2, 1]]⟩

def canonicalOutput16399 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2631⟩

theorem canonicalSound16399 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16399.moment H = canonicalOutput16399.moment H :=
  canonical_of_padded canonicalInput16399 canonicalOutput16399 (by decide) (by decide)
    ⟨true, false, canonicalPermutation39, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16400 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, -1, 1, 1, -1], ![-2, 2, 1, -2, 1], ![3, 0, -2, 0, -1]]⟩

def canonicalOutput16400 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1366

theorem canonicalSound16400 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16400.moment H = canonicalOutput16400.moment H :=
  canonical_of_padded canonicalInput16400 canonicalOutput16400 (by decide) (by decide)
    ⟨true, true, canonicalPermutation61, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput16401 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, -1, 1, 1, -1], ![-1, 1, 1, -1, 0], ![2, 1, -2, -1, 0]]⟩

def canonicalOutput16401 : ExponentCode := normalNode8866

theorem canonicalSound16401 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16401.moment H = canonicalOutput16401.moment H :=
  canonical_of_padded canonicalInput16401 canonicalOutput16401 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput16402 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, -1, 1, 1, -1], ![-1, 1, 1, 0, -1], ![2, 1, -2, -2, 1]]⟩

def canonicalOutput16402 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1365

theorem canonicalSound16402 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16402.moment H = canonicalOutput16402.moment H :=
  canonical_of_padded canonicalInput16402 canonicalOutput16402 (by decide) (by decide)
    ⟨true, true, canonicalPermutation61, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16403 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, -1, 1, 1, -1], ![-1, 2, -2, 0, 1], ![2, 0, 1, -2, -1]]⟩

def canonicalOutput16403 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1368

theorem canonicalSound16403 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16403.moment H = canonicalOutput16403.moment H :=
  canonical_of_padded canonicalInput16403 canonicalOutput16403 (by decide) (by decide)
    ⟨true, false, canonicalPermutation41, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput16404 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, -1, 1, 1, -1], ![-1, 2, 1, -2, 0], ![2, 0, -2, 0, 0]]⟩

def canonicalOutput16404 : ExponentCode := normalNode4286

theorem canonicalSound16404 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16404.moment H = canonicalOutput16404.moment H :=
  canonical_of_padded canonicalInput16404 canonicalOutput16404 (by decide) (by decide)
    ⟨true, false, canonicalPermutation49, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput16405 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, -1, 1, 1, -1], ![-1, 3, -2, -1, 1], ![2, -1, 1, -1, -1]]⟩

def canonicalOutput16405 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1344

theorem canonicalSound16405 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16405.moment H = canonicalOutput16405.moment H :=
  canonical_of_padded canonicalInput16405 canonicalOutput16405 (by decide) (by decide)
    ⟨true, false, canonicalPermutation41, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput16406 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, -1, 1, 1, -1], ![0, 0, -2, 0, 2], ![1, 2, 1, -2, -2]]⟩

def canonicalOutput16406 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1729⟩

theorem canonicalSound16406 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16406.moment H = canonicalOutput16406.moment H :=
  canonical_of_padded canonicalInput16406 canonicalOutput16406 (by decide) (by decide)
    ⟨true, true, canonicalPermutation59, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput16407 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, -1, 1, 1, -1], ![0, 0, 1, -2, 1], ![1, 2, -2, 0, -1]]⟩

def canonicalOutput16407 : ExponentCode := normalNode5621

theorem canonicalSound16407 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16407.moment H = canonicalOutput16407.moment H :=
  canonical_of_padded canonicalInput16407 canonicalOutput16407 (by decide) (by decide)
    ⟨true, false, canonicalPermutation72, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput16408 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 1, 1], ![0, -1, 1, 1, -1], ![0, 0, 1, 0, -1], ![0, 2, -1, 0, -1], ![1, 0, -1, -2, 2]]⟩

def canonicalOutput16408 : ExponentCode := normalNode7575

theorem canonicalSound16408 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16408.moment H = canonicalOutput16408.moment H :=
  canonical_of_padded canonicalInput16408 canonicalOutput16408 (by decide) (by decide)
    ⟨true, false, canonicalPermutation68, canonicalPermutation32⟩ (by decide +kernel) hH

def canonicalInput16409 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, -1, 1, 1, -1], ![0, 1, -2, 0, 1], ![1, 1, 1, -2, -1]]⟩

def canonicalOutput16409 : ExponentCode := normalNode4396

theorem canonicalSound16409 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16409.moment H = canonicalOutput16409.moment H :=
  canonical_of_padded canonicalInput16409 canonicalOutput16409 (by decide) (by decide)
    ⟨true, false, canonicalPermutation42, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput16410 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, -1, 1, 1, -1], ![0, 1, -2, 1, 0], ![1, 1, 1, -3, 0]]⟩

def canonicalOutput16410 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2070⟩

theorem canonicalSound16410 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16410.moment H = canonicalOutput16410.moment H :=
  canonical_of_padded canonicalInput16410 canonicalOutput16410 (by decide) (by decide)
    ⟨true, false, canonicalPermutation18, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput16411 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 1, 1], ![0, -1, 1, 1, -1], ![0, 1, -1, 0, 0], ![0, 1, -1, 0, 0], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput16411 : ExponentCode := normalNode8688

theorem canonicalSound16411 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16411.moment H = canonicalOutput16411.moment H :=
  canonical_of_padded canonicalInput16411 canonicalOutput16411 (by decide) (by decide)
    ⟨true, true, canonicalPermutation39, canonicalPermutation19⟩ (by decide +kernel) hH

def canonicalInput16412 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 1, 1], ![0, -1, 1, 1, -1], ![0, 1, 0, 0, -1], ![0, 1, 0, 0, -1], ![1, 0, -1, -2, 2]]⟩

def canonicalOutput16412 : ExponentCode := normalNode7615

theorem canonicalSound16412 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16412.moment H = canonicalOutput16412.moment H :=
  canonical_of_padded canonicalInput16412 canonicalOutput16412 (by decide) (by decide)
    ⟨true, false, canonicalPermutation14, OAI.MUB6.Certificate.PairSemantics.permutation179⟩ (by decide +kernel) hH

def canonicalInput16413 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, -1, 1, 1, -1], ![0, 1, 0, 0, -1], ![1, 1, -1, -2, 1]]⟩

def canonicalOutput16413 : ExponentCode := normalNode9467

theorem canonicalSound16413 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16413.moment H = canonicalOutput16413.moment H :=
  canonical_of_padded canonicalInput16413 canonicalOutput16413 (by decide) (by decide)
    ⟨true, false, canonicalPermutation14, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput16414 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, -1, 1, 1, -1], ![0, 1, 1, -1, -1], ![1, 1, -2, -1, 1]]⟩

def canonicalOutput16414 : ExponentCode := normalNode8863

theorem canonicalSound16414 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16414.moment H = canonicalOutput16414.moment H :=
  canonical_of_padded canonicalInput16414 canonicalOutput16414 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation178, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput16415 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, -1, 1, 1, -1], ![0, 1, 1, 0, -2], ![1, 1, -2, -2, 2]]⟩

def canonicalOutput16415 : ExponentCode := normalNode2710

theorem canonicalSound16415 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16415.moment H = canonicalOutput16415.moment H :=
  canonical_of_padded canonicalInput16415 canonicalOutput16415 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation198, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput16416 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, -1, 1, 1, -1], ![0, 2, -2, 0, 0], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput16416 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2065⟩

theorem canonicalSound16416 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16416.moment H = canonicalOutput16416.moment H :=
  canonical_of_padded canonicalInput16416 canonicalOutput16416 (by decide) (by decide)
    ⟨true, true, canonicalPermutation39, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput16417 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, -1, 1, 1, -1], ![0, 2, -1, 0, -1], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput16417 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2076⟩

theorem canonicalSound16417 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16417.moment H = canonicalOutput16417.moment H :=
  canonical_of_padded canonicalInput16417 canonicalOutput16417 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation193, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput16418 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, -1, 1, 1, -1], ![0, 3, -2, -1, 0], ![1, -1, 1, -1, 0]]⟩

def canonicalOutput16418 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2511⟩

theorem canonicalSound16418 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16418.moment H = canonicalOutput16418.moment H :=
  canonical_of_padded canonicalInput16418 canonicalOutput16418 (by decide) (by decide)
    ⟨true, false, canonicalPermutation44, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput16419 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, -1, 1, 1, -1], ![1, 0, -2, 0, 1], ![0, 2, 1, -2, -1]]⟩

def canonicalOutput16419 : ExponentCode := normalNode4307

theorem canonicalSound16419 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16419.moment H = canonicalOutput16419.moment H :=
  canonical_of_padded canonicalInput16419 canonicalOutput16419 (by decide) (by decide)
    ⟨true, false, canonicalPermutation32, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput16420 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, -1, 1, 1, -1], ![1, 0, 1, -2, 0], ![0, 2, -2, 0, 0]]⟩

def canonicalOutput16420 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2065⟩

theorem canonicalSound16420 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16420.moment H = canonicalOutput16420.moment H :=
  canonical_of_padded canonicalInput16420 canonicalOutput16420 (by decide) (by decide)
    ⟨true, true, canonicalPermutation39, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput16421 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, -1, 1, 1, -1], ![1, 1, -2, 0, 0], ![0, 1, 1, -2, 0]]⟩

def canonicalOutput16421 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2084⟩

theorem canonicalSound16421 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16421.moment H = canonicalOutput16421.moment H :=
  canonical_of_padded canonicalInput16421 canonicalOutput16421 (by decide) (by decide)
    ⟨true, false, canonicalPermutation58, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput16422 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, -1, 1, 1, -1], ![1, 1, -2, 1, -1], ![0, 1, 1, -3, 1]]⟩

def canonicalOutput16422 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2513⟩

theorem canonicalSound16422 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16422.moment H = canonicalOutput16422.moment H :=
  canonical_of_padded canonicalInput16422 canonicalOutput16422 (by decide) (by decide)
    ⟨true, true, canonicalPermutation61, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16423 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 1, 1], ![0, -1, 2, -2, 1], ![0, 1, -2, 1, 0], ![0, 1, 0, 0, -1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput16423 : ExponentCode := normalNode8593

theorem canonicalSound16423 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16423.moment H = canonicalOutput16423.moment H :=
  canonical_of_padded canonicalInput16423 canonicalOutput16423 (by decide) (by decide)
    ⟨true, false, canonicalPermutation30, canonicalPermutation76⟩ (by decide +kernel) hH

def canonicalInput16424 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 1, 1], ![0, -1, 2, -2, 1], ![0, 1, -1, 0, 0], ![0, 1, -1, 1, -1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput16424 : ExponentCode := normalNode10021

theorem canonicalSound16424 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16424.moment H = canonicalOutput16424.moment H :=
  canonical_of_padded canonicalInput16424 canonicalOutput16424 (by decide) (by decide)
    ⟨true, false, canonicalPermutation26, canonicalPermutation26⟩ (by decide +kernel) hH

def canonicalInput16425 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 1, 1], ![0, -1, 2, -2, 1], ![0, 1, -1, 0, 0], ![0, 1, 0, 0, -1], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput16425 : ExponentCode := normalNode8635

theorem canonicalSound16425 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16425.moment H = canonicalOutput16425.moment H :=
  canonical_of_padded canonicalInput16425 canonicalOutput16425 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation173, OAI.MUB6.Certificate.PairSemantics.permutation180⟩ (by decide +kernel) hH

def canonicalInput16426 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 1, 1], ![0, -1, 2, -2, 1], ![0, 1, -1, 0, 0], ![0, 1, 0, 1, -2], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput16426 : ExponentCode := normalNode8251

theorem canonicalSound16426 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16426.moment H = canonicalOutput16426.moment H :=
  canonical_of_padded canonicalInput16426 canonicalOutput16426 (by decide) (by decide)
    ⟨true, false, canonicalPermutation26, canonicalPermutation26⟩ (by decide +kernel) hH

def canonicalInput16427 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 1, 1], ![0, -1, 2, -2, 1], ![0, 1, -1, 1, -1], ![0, 1, 0, 0, -1], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput16427 : ExponentCode := normalNode10024

theorem canonicalSound16427 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16427.moment H = canonicalOutput16427.moment H :=
  canonical_of_padded canonicalInput16427 canonicalOutput16427 (by decide) (by decide)
    ⟨true, false, canonicalPermutation22, canonicalPermutation46⟩ (by decide +kernel) hH

def canonicalInput16428 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, -1, 2, -1, 0], ![-2, 2, -2, 1, 1], ![3, 0, 0, -1, -2]]⟩

def canonicalOutput16428 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code882

theorem canonicalSound16428 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16428.moment H = canonicalOutput16428.moment H :=
  canonical_of_padded canonicalInput16428 canonicalOutput16428 (by decide) (by decide)
    ⟨true, true, canonicalPermutation27, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput16429 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, -1, 2, -1, 0], ![-2, 3, -1, -1, 1], ![3, -1, -1, 1, -2]]⟩

def canonicalOutput16429 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code975

theorem canonicalSound16429 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16429.moment H = canonicalOutput16429.moment H :=
  canonical_of_padded canonicalInput16429 canonicalOutput16429 (by decide) (by decide)
    ⟨true, true, canonicalPermutation27, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16430 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, -1, 2, -1, 0], ![-1, 1, -2, 1, 1], ![2, 1, 0, -1, -2]]⟩

def canonicalOutput16430 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code884

theorem canonicalSound16430 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16430.moment H = canonicalOutput16430.moment H :=
  canonical_of_padded canonicalInput16430 canonicalOutput16430 (by decide) (by decide)
    ⟨true, true, canonicalPermutation27, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput16431 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, -1, 2, -1, 0], ![-1, 1, -1, 1, 0], ![2, 1, -1, -1, -1]]⟩

def canonicalOutput16431 : ExponentCode := normalNode4396

theorem canonicalSound16431 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16431.moment H = canonicalOutput16431.moment H :=
  canonical_of_padded canonicalInput16431 canonicalOutput16431 (by decide) (by decide)
    ⟨true, true, canonicalPermutation27, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16432 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, -1, 2, -1, 0], ![-1, 1, 0, 1, -1], ![2, 1, -2, -1, 0]]⟩

def canonicalOutput16432 : ExponentCode := normalNode3956

theorem canonicalSound16432 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16432.moment H = canonicalOutput16432.moment H :=
  canonical_of_padded canonicalInput16432 canonicalOutput16432 (by decide) (by decide)
    ⟨true, true, canonicalPermutation27, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16433 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, -1, 2, -1, 0], ![-1, 1, 1, 1, -2], ![2, 1, -3, -1, 1]]⟩

def canonicalOutput16433 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code773

theorem canonicalSound16433 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16433.moment H = canonicalOutput16433.moment H :=
  canonical_of_padded canonicalInput16433 canonicalOutput16433 (by decide) (by decide)
    ⟨true, true, canonicalPermutation27, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16434 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, -1, 2, -1, 0], ![-1, 2, -2, 1, 0], ![2, 0, 0, -1, -1]]⟩

def canonicalOutput16434 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1994⟩

theorem canonicalSound16434 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16434.moment H = canonicalOutput16434.moment H :=
  canonical_of_padded canonicalInput16434 canonicalOutput16434 (by decide) (by decide)
    ⟨true, true, canonicalPermutation18, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput16435 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, -1, 2, -1, 0], ![-1, 2, -1, -1, 1], ![2, 0, -1, 1, -2]]⟩

def canonicalOutput16435 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code973

theorem canonicalSound16435 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16435.moment H = canonicalOutput16435.moment H :=
  canonical_of_padded canonicalInput16435 canonicalOutput16435 (by decide) (by decide)
    ⟨true, true, canonicalPermutation27, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16436 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, -1, 2, -1, 0], ![-1, 2, 0, -1, 0], ![2, 0, -2, 1, -1]]⟩

def canonicalOutput16436 : ExponentCode := normalNode3901

theorem canonicalSound16436 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16436.moment H = canonicalOutput16436.moment H :=
  canonical_of_padded canonicalInput16436 canonicalOutput16436 (by decide) (by decide)
    ⟨true, true, canonicalPermutation27, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16437 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, -1, 2, -1, 0], ![-1, 2, 1, -1, -1], ![2, 0, -3, 1, 0]]⟩

def canonicalOutput16437 : ExponentCode := normalNode3485

theorem canonicalSound16437 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16437.moment H = canonicalOutput16437.moment H :=
  canonical_of_padded canonicalInput16437 canonicalOutput16437 (by decide) (by decide)
    ⟨true, true, canonicalPermutation27, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16438 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, -1, 2, -1, 0], ![-1, 3, -1, -1, 0], ![2, -1, -1, 1, -1]]⟩

def canonicalOutput16438 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2074⟩

theorem canonicalSound16438 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16438.moment H = canonicalOutput16438.moment H :=
  canonical_of_padded canonicalInput16438 canonicalOutput16438 (by decide) (by decide)
    ⟨true, true, canonicalPermutation27, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16439 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, -1, 2, -1, 0], ![0, 0, -1, 1, 0], ![1, 2, -1, -1, -1]]⟩

def canonicalOutput16439 : ExponentCode := normalNode9425

theorem canonicalSound16439 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16439.moment H = canonicalOutput16439.moment H :=
  canonical_of_padded canonicalInput16439 canonicalOutput16439 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation195, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput16440 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 1, 1], ![0, -1, 2, -1, 0], ![0, 0, 0, -1, 1], ![0, 2, -1, 1, -2], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput16440 : ExponentCode := normalNode10094

theorem canonicalSound16440 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16440.moment H = canonicalOutput16440.moment H :=
  canonical_of_padded canonicalInput16440 canonicalOutput16440 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation181⟩ (by decide +kernel) hH

def canonicalInput16441 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, -1, 2, -1, 0], ![0, 0, 0, 1, -1], ![1, 2, -2, -1, 0]]⟩

def canonicalOutput16441 : ExponentCode := normalNode9454

theorem canonicalSound16441 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16441.moment H = canonicalOutput16441.moment H :=
  canonical_of_padded canonicalInput16441 canonicalOutput16441 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation192, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput16442 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, -1, 2, -1, 0], ![0, 0, 1, 1, -2], ![1, 2, -3, -1, 1]]⟩

def canonicalOutput16442 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1689⟩

theorem canonicalSound16442 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16442.moment H = canonicalOutput16442.moment H :=
  canonical_of_padded canonicalInput16442 canonicalOutput16442 (by decide) (by decide)
    ⟨true, true, canonicalPermutation55, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput16443 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, -1, 2, -1, 0], ![0, 1, -2, 0, 1], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput16443 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2018⟩

theorem canonicalSound16443 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16443.moment H = canonicalOutput16443.moment H :=
  canonical_of_padded canonicalInput16443 canonicalOutput16443 (by decide) (by decide)
    ⟨true, false, canonicalPermutation42, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput16444 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, -1, 2, -1, 0], ![0, 1, -2, 1, 0], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput16444 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2017⟩

theorem canonicalSound16444 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16444.moment H = canonicalOutput16444.moment H :=
  canonical_of_padded canonicalInput16444 canonicalOutput16444 (by decide) (by decide)
    ⟨true, false, canonicalPermutation18, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput16445 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 1, 1], ![0, -1, 2, -1, 0], ![0, 1, -1, 0, 0], ![0, 1, 0, 0, -1], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput16445 : ExponentCode := normalNode8353

theorem canonicalSound16445 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16445.moment H = canonicalOutput16445.moment H :=
  canonical_of_padded canonicalInput16445 canonicalOutput16445 (by decide) (by decide)
    ⟨true, false, canonicalPermutation26, canonicalPermutation26⟩ (by decide +kernel) hH

def canonicalInput16446 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, -1, 2, -1, 0], ![0, 1, -1, 1, -1], ![1, 1, -1, -1, 0]]⟩

def canonicalOutput16446 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2071⟩

theorem canonicalSound16446 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16446.moment H = canonicalOutput16446.moment H :=
  canonical_of_padded canonicalInput16446 canonicalOutput16446 (by decide) (by decide)
    ⟨true, true, canonicalPermutation27, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput16447 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, -1, 2, -1, 0], ![0, 1, 0, -1, 0], ![1, 1, -2, 1, -1]]⟩

def canonicalOutput16447 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2643⟩

theorem canonicalSound16447 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16447.moment H = canonicalOutput16447.moment H :=
  canonical_of_padded canonicalInput16447 canonicalOutput16447 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation186, canonicalPermutation6⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

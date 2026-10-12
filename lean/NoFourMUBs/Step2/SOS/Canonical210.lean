import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes06
import NoFourMUBs.Step2.SOS.MomentCodes13
import NoFourMUBs.Step2.SOS.MomentCodes20
import NoFourMUBs.Step2.SOS.NormalizationNodes007
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes018
import NoFourMUBs.Step2.SOS.NormalizationNodes019
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes10
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes26
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes31
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes32
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes39
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput13440 : ExponentCode := ⟨5, 4, ![![-1, -2, 0, 3], ![-1, 1, 1, -1], ![0, 0, 1, -1], ![1, 0, -1, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput13440 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1683⟩

theorem canonicalSound13440 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13440.moment H = canonicalOutput13440.moment H :=
  canonical_of_padded canonicalInput13440 canonicalOutput13440 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput13441 : ExponentCode := ⟨5, 4, ![![-1, -2, 0, 3], ![-1, 1, 1, -1], ![0, 0, 1, -1], ![1, 1, -2, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput13441 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1685⟩

theorem canonicalSound13441 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13441.moment H = canonicalOutput13441.moment H :=
  canonical_of_padded canonicalInput13441 canonicalOutput13441 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput13442 : ExponentCode := ⟨5, 4, ![![-1, -2, 0, 3], ![-1, 1, 1, -1], ![0, 1, -1, 0], ![1, -1, 1, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput13442 : ExponentCode := normalNode9331

theorem canonicalSound13442 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13442.moment H = canonicalOutput13442.moment H :=
  canonical_of_padded canonicalInput13442 canonicalOutput13442 (by decide) (by decide)
    ⟨false, true, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput13443 : ExponentCode := ⟨5, 4, ![![-1, -2, 0, 3], ![-1, 1, 1, -1], ![0, 1, 1, -2], ![1, 0, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput13443 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1715⟩

theorem canonicalSound13443 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13443.moment H = canonicalOutput13443.moment H :=
  canonical_of_padded canonicalInput13443 canonicalOutput13443 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput13444 : ExponentCode := ⟨5, 4, ![![-1, -2, 0, 3], ![-1, 1, 1, -1], ![0, 2, -2, 0], ![1, -1, 1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput13444 : ExponentCode := normalNode4014

theorem canonicalSound13444 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13444.moment H = canonicalOutput13444.moment H :=
  canonical_of_padded canonicalInput13444 canonicalOutput13444 (by decide) (by decide)
    ⟨false, false, canonicalPermutation18, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput13445 : ExponentCode := ⟨5, 4, ![![-1, -2, 0, 3], ![-1, 1, 1, -1], ![0, 2, -1, -1], ![1, -1, 1, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput13445 : ExponentCode := normalNode9332

theorem canonicalSound13445 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13445.moment H = canonicalOutput13445.moment H :=
  canonical_of_padded canonicalInput13445 canonicalOutput13445 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation187, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput13446 : ExponentCode := ⟨4, 4, ![![-1, -2, 0, 3], ![-1, 1, 1, -1], ![1, -1, 1, -1], ![1, 2, -2, -1]]⟩

def canonicalOutput13446 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node680⟩

theorem canonicalSound13446 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13446.moment H = canonicalOutput13446.moment H :=
  canonical_of_padded canonicalInput13446 canonicalOutput13446 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput13447 : ExponentCode := ⟨4, 4, ![![-1, -2, 0, 3], ![-1, 1, 1, -1], ![1, 0, 1, -2], ![1, 1, -2, 0]]⟩

def canonicalOutput13447 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node490⟩

theorem canonicalSound13447 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13447.moment H = canonicalOutput13447.moment H :=
  canonical_of_padded canonicalInput13447 canonicalOutput13447 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput13448 : ExponentCode := ⟨5, 4, ![![-1, -2, 0, 3], ![-1, 1, 2, -2], ![0, 0, 0, 0], ![1, 0, -1, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput13448 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1013⟩

theorem canonicalSound13448 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13448.moment H = canonicalOutput13448.moment H :=
  canonical_of_padded canonicalInput13448 canonicalOutput13448 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation180⟩ (by decide +kernel) hH

def canonicalInput13449 : ExponentCode := ⟨5, 4, ![![-1, -2, 0, 3], ![-1, 1, 2, -2], ![0, 0, 0, 0], ![1, 0, 0, -1], ![1, 1, -2, 0]]⟩

def canonicalOutput13449 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1098⟩

theorem canonicalSound13449 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13449.moment H = canonicalOutput13449.moment H :=
  canonical_of_padded canonicalInput13449 canonicalOutput13449 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation151, canonicalPermutation19⟩ (by decide +kernel) hH

def canonicalInput13450 : ExponentCode := ⟨5, 4, ![![-1, -2, 0, 3], ![-1, 1, 2, -2], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput13450 : ExponentCode := normalNode5115

theorem canonicalSound13450 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13450.moment H = canonicalOutput13450.moment H :=
  canonical_of_padded canonicalInput13450 canonicalOutput13450 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation173, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput13451 : ExponentCode := ⟨5, 4, ![![-1, -2, 0, 3], ![-1, 1, 2, -2], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput13451 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1718⟩

theorem canonicalSound13451 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13451.moment H = canonicalOutput13451.moment H :=
  canonical_of_padded canonicalInput13451 canonicalOutput13451 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput13452 : ExponentCode := ⟨5, 4, ![![-1, -2, 0, 3], ![-1, 1, 2, -2], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput13452 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1718⟩

theorem canonicalSound13452 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13452.moment H = canonicalOutput13452.moment H :=
  canonical_of_padded canonicalInput13452 canonicalOutput13452 (by decide) (by decide)
    ⟨false, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput13453 : ExponentCode := ⟨5, 4, ![![-1, -2, 0, 3], ![-1, 1, 2, -2], ![0, 1, 0, -1], ![1, 0, -2, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput13453 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1710⟩

theorem canonicalSound13453 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13453.moment H = canonicalOutput13453.moment H :=
  canonical_of_padded canonicalInput13453 canonicalOutput13453 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput13454 : ExponentCode := ⟨5, 4, ![![-1, -2, 0, 3], ![-1, 1, 2, -2], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput13454 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1716⟩

theorem canonicalSound13454 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13454.moment H = canonicalOutput13454.moment H :=
  canonical_of_padded canonicalInput13454 canonicalOutput13454 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput13455 : ExponentCode := ⟨5, 4, ![![-1, -2, 0, 3], ![-1, 1, 2, -2], ![0, 2, -2, 0], ![1, -1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput13455 : ExponentCode := normalNode4013

theorem canonicalSound13455 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13455.moment H = canonicalOutput13455.moment H :=
  canonical_of_padded canonicalInput13455 canonicalOutput13455 (by decide) (by decide)
    ⟨false, false, canonicalPermutation55, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput13456 : ExponentCode := ⟨5, 4, ![![-1, -2, 0, 3], ![-1, 1, 2, -2], ![0, 2, -2, 0], ![1, 0, -1, 0], ![1, -1, 1, -1]]⟩

def canonicalOutput13456 : ExponentCode := normalNode6684

theorem canonicalSound13456 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13456.moment H = canonicalOutput13456.moment H :=
  canonical_of_padded canonicalInput13456 canonicalOutput13456 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13457 : ExponentCode := ⟨4, 4, ![![-1, -2, 0, 3], ![-1, 1, 2, -2], ![0, 2, -2, 0], ![2, -1, 0, -1]]⟩

def canonicalOutput13457 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code895

theorem canonicalSound13457 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13457.moment H = canonicalOutput13457.moment H :=
  canonical_of_padded canonicalInput13457 canonicalOutput13457 (by decide) (by decide)
    ⟨false, false, canonicalPermutation3, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput13458 : ExponentCode := ⟨5, 4, ![![-1, -2, 0, 3], ![-1, 1, 2, -2], ![0, 2, -1, -1], ![1, -1, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput13458 : ExponentCode := normalNode5116

theorem canonicalSound13458 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13458.moment H = canonicalOutput13458.moment H :=
  canonical_of_padded canonicalInput13458 canonicalOutput13458 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation173, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput13459 : ExponentCode := ⟨4, 4, ![![-1, -2, 0, 3], ![-1, 1, 2, -2], ![1, -1, 0, 0], ![1, 2, -2, -1]]⟩

def canonicalOutput13459 : ExponentCode := normalNode7052

theorem canonicalSound13459 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13459.moment H = canonicalOutput13459.moment H :=
  canonical_of_padded canonicalInput13459 canonicalOutput13459 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput13460 : ExponentCode := ⟨4, 4, ![![-1, -2, 0, 3], ![-1, 1, 2, -2], ![1, -1, 1, -1], ![1, 2, -3, 0]]⟩

def canonicalOutput13460 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1304

theorem canonicalSound13460 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13460.moment H = canonicalOutput13460.moment H :=
  canonical_of_padded canonicalInput13460 canonicalOutput13460 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput13461 : ExponentCode := ⟨4, 4, ![![-1, -2, 0, 3], ![-1, 1, 2, -2], ![1, 0, -1, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput13461 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1013⟩

theorem canonicalSound13461 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13461.moment H = canonicalOutput13461.moment H :=
  canonical_of_padded canonicalInput13461 canonicalOutput13461 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput13462 : ExponentCode := ⟨4, 4, ![![-1, -2, 0, 3], ![-1, 1, 2, -2], ![1, 0, 0, -1], ![1, 1, -2, 0]]⟩

def canonicalOutput13462 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1098⟩

theorem canonicalSound13462 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13462.moment H = canonicalOutput13462.moment H :=
  canonical_of_padded canonicalInput13462 canonicalOutput13462 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation151, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput13463 : ExponentCode := ⟨4, 4, ![![-1, -2, 0, 3], ![-1, 1, 2, -2], ![1, 1, -2, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput13463 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1098⟩

theorem canonicalSound13463 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13463.moment H = canonicalOutput13463.moment H :=
  canonical_of_padded canonicalInput13463 canonicalOutput13463 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation151, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput13464 : ExponentCode := ⟨4, 4, ![![-1, -2, 0, 3], ![-1, 1, 2, -2], ![1, 2, -3, 0], ![1, -1, 1, -1]]⟩

def canonicalOutput13464 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1304

theorem canonicalSound13464 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13464.moment H = canonicalOutput13464.moment H :=
  canonical_of_padded canonicalInput13464 canonicalOutput13464 (by decide) (by decide)
    ⟨false, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput13465 : ExponentCode := ⟨5, 4, ![![-1, -2, 0, 3], ![-1, 2, 0, -1], ![0, 0, 2, -2], ![1, 0, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput13465 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1695⟩

theorem canonicalSound13465 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13465.moment H = canonicalOutput13465.moment H :=
  canonical_of_padded canonicalInput13465 canonicalOutput13465 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput13466 : ExponentCode := ⟨4, 4, ![![-1, -2, 0, 3], ![-1, 2, 0, -1], ![1, -1, 2, -2], ![1, 1, -2, 0]]⟩

def canonicalOutput13466 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node511⟩

theorem canonicalSound13466 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13466.moment H = canonicalOutput13466.moment H :=
  canonical_of_padded canonicalInput13466 canonicalOutput13466 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput13467 : ExponentCode := ⟨5, 4, ![![-1, -2, 0, 3], ![-1, 2, 1, -2], ![0, 1, -1, 0], ![1, -1, 1, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput13467 : ExponentCode := normalNode9316

theorem canonicalSound13467 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13467.moment H = canonicalOutput13467.moment H :=
  canonical_of_padded canonicalInput13467 canonicalOutput13467 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation187, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput13468 : ExponentCode := ⟨4, 4, ![![-1, -2, 0, 3], ![-1, 2, 1, -2], ![1, -1, 1, -1], ![1, 1, -2, 0]]⟩

def canonicalOutput13468 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node690⟩

theorem canonicalSound13468 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13468.moment H = canonicalOutput13468.moment H :=
  canonical_of_padded canonicalInput13468 canonicalOutput13468 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput13469 : ExponentCode := ⟨4, 4, ![![-1, -2, 0, 3], ![-1, 2, 1, -2], ![1, 0, -2, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput13469 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node484⟩

theorem canonicalSound13469 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13469.moment H = canonicalOutput13469.moment H :=
  canonical_of_padded canonicalInput13469 canonicalOutput13469 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput13470 : ExponentCode := ⟨5, 4, ![![-1, -2, 0, 3], ![-1, 2, 2, -3], ![0, 1, -2, 1], ![1, -1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput13470 : ExponentCode := normalNode4226

theorem canonicalSound13470 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13470.moment H = canonicalOutput13470.moment H :=
  canonical_of_padded canonicalInput13470 canonicalOutput13470 (by decide) (by decide)
    ⟨false, false, canonicalPermutation25, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput13471 : ExponentCode := ⟨5, 4, ![![-1, -2, 0, 3], ![-1, 2, 2, -3], ![0, 1, -1, 0], ![1, -1, -1, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput13471 : ExponentCode := normalNode4859

theorem canonicalSound13471 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13471.moment H = canonicalOutput13471.moment H :=
  canonical_of_padded canonicalInput13471 canonicalOutput13471 (by decide) (by decide)
    ⟨false, true, canonicalPermutation44, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput13472 : ExponentCode := ⟨4, 4, ![![-1, -2, 0, 3], ![-1, 2, 2, -3], ![1, 0, -2, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput13472 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1120⟩

theorem canonicalSound13472 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13472.moment H = canonicalOutput13472.moment H :=
  canonical_of_padded canonicalInput13472 canonicalOutput13472 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation151, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput13473 : ExponentCode := ⟨4, 4, ![![-1, -2, 0, 3], ![-1, 2, 2, -3], ![1, 0, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput13473 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1028⟩

theorem canonicalSound13473 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13473.moment H = canonicalOutput13473.moment H :=
  canonical_of_padded canonicalInput13473 canonicalOutput13473 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput13474 : ExponentCode := ⟨5, 4, ![![-1, -2, 0, 3], ![-1, 3, -2, 0], ![0, 0, 1, -1], ![1, -1, 1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput13474 : ExponentCode := normalNode1889

theorem canonicalSound13474 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13474.moment H = canonicalOutput13474.moment H :=
  canonical_of_padded canonicalInput13474 canonicalOutput13474 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation168, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput13475 : ExponentCode := ⟨4, 4, ![![-1, -2, 0, 3], ![-1, 3, -2, 0], ![1, -1, 1, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput13475 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code446

theorem canonicalSound13475 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13475.moment H = canonicalOutput13475.moment H :=
  canonical_of_padded canonicalInput13475 canonicalOutput13475 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput13476 : ExponentCode := ⟨4, 4, ![![-1, -2, 0, 3], ![-1, 3, -2, 0], ![1, -1, 2, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput13476 : ExponentCode := normalNode6713

theorem canonicalSound13476 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13476.moment H = canonicalOutput13476.moment H :=
  canonical_of_padded canonicalInput13476 canonicalOutput13476 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput13477 : ExponentCode := ⟨5, 4, ![![-1, -2, 0, 3], ![-1, 3, -1, -1], ![0, -1, 2, -1], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput13477 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2075⟩

theorem canonicalSound13477 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13477.moment H = canonicalOutput13477.moment H :=
  canonical_of_padded canonicalInput13477 canonicalOutput13477 (by decide) (by decide)
    ⟨false, true, canonicalPermutation27, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput13478 : ExponentCode := ⟨5, 4, ![![-1, -2, 0, 3], ![-1, 3, -1, -1], ![0, -1, 2, -1], ![1, 0, 0, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput13478 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2075⟩

theorem canonicalSound13478 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13478.moment H = canonicalOutput13478.moment H :=
  canonical_of_padded canonicalInput13478 canonicalOutput13478 (by decide) (by decide)
    ⟨false, true, canonicalPermutation36, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput13479 : ExponentCode := ⟨4, 4, ![![-1, -2, 0, 3], ![-1, 3, -1, -1], ![0, -1, 3, -2], ![2, 0, -2, 0]]⟩

def canonicalOutput13479 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code441

theorem canonicalSound13479 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13479.moment H = canonicalOutput13479.moment H :=
  canonical_of_padded canonicalInput13479 canonicalOutput13479 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput13480 : ExponentCode := ⟨5, 4, ![![-1, -2, 0, 3], ![-1, 3, -1, -1], ![0, 0, 1, -1], ![1, -1, 1, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput13480 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2517⟩

theorem canonicalSound13480 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13480.moment H = canonicalOutput13480.moment H :=
  canonical_of_padded canonicalInput13480 canonicalOutput13480 (by decide) (by decide)
    ⟨false, false, canonicalPermutation41, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput13481 : ExponentCode := ⟨5, 4, ![![-1, -2, 0, 3], ![-1, 3, -1, -1], ![0, 0, 2, -2], ![1, -1, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput13481 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2020⟩

theorem canonicalSound13481 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13481.moment H = canonicalOutput13481.moment H :=
  canonical_of_padded canonicalInput13481 canonicalOutput13481 (by decide) (by decide)
    ⟨false, true, canonicalPermutation36, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput13482 : ExponentCode := ⟨4, 4, ![![-1, -2, 0, 3], ![-1, 3, -1, -1], ![1, -1, 2, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput13482 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1018⟩

theorem canonicalSound13482 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13482.moment H = canonicalOutput13482.moment H :=
  canonical_of_padded canonicalInput13482 canonicalOutput13482 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput13483 : ExponentCode := ⟨5, 4, ![![-1, -2, 0, 3], ![-1, 3, 0, -2], ![0, -1, 2, -1], ![1, 0, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput13483 : ExponentCode := normalNode4523

theorem canonicalSound13483 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13483.moment H = canonicalOutput13483.moment H :=
  canonical_of_padded canonicalInput13483 canonicalOutput13483 (by decide) (by decide)
    ⟨false, true, canonicalPermutation50, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput13484 : ExponentCode := ⟨5, 4, ![![-1, -2, 0, 3], ![0, -1, 1, 0], ![-1, 1, 2, -2], ![1, 1, -2, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput13484 : ExponentCode := normalNode6682

theorem canonicalSound13484 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13484.moment H = canonicalOutput13484.moment H :=
  canonical_of_padded canonicalInput13484 canonicalOutput13484 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13485 : ExponentCode := ⟨5, 4, ![![-1, -2, 0, 3], ![0, -1, 1, 0], ![0, 0, 1, -1], ![0, 3, -1, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput13485 : ExponentCode := normalNode9940

theorem canonicalSound13485 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13485.moment H = canonicalOutput13485.moment H :=
  canonical_of_padded canonicalInput13485 canonicalOutput13485 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput13486 : ExponentCode := ⟨5, 4, ![![-1, -2, 0, 3], ![0, -1, 1, 0], ![0, 0, 2, -2], ![1, 1, -2, 0], ![0, 2, -1, -1]]⟩

def canonicalOutput13486 : ExponentCode := normalNode6692

theorem canonicalSound13486 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13486.moment H = canonicalOutput13486.moment H :=
  canonical_of_padded canonicalInput13486 canonicalOutput13486 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13487 : ExponentCode := ⟨4, 4, ![![-1, -2, 0, 3], ![0, -1, 1, 0], ![0, 1, 1, -2], ![1, 2, -2, -1]]⟩

def canonicalOutput13487 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1049⟩

theorem canonicalSound13487 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13487.moment H = canonicalOutput13487.moment H :=
  canonical_of_padded canonicalInput13487 canonicalOutput13487 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput13488 : ExponentCode := ⟨4, 4, ![![-1, -2, 0, 3], ![0, -1, 1, 0], ![0, 2, 1, -3], ![1, 1, -2, 0]]⟩

def canonicalOutput13488 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1231⟩

theorem canonicalSound13488 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13488.moment H = canonicalOutput13488.moment H :=
  canonical_of_padded canonicalInput13488 canonicalOutput13488 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput13489 : ExponentCode := ⟨4, 4, ![![-1, -2, 0, 3], ![0, -1, 1, 0], ![0, 3, -2, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput13489 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1001⟩

theorem canonicalSound13489 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13489.moment H = canonicalOutput13489.moment H :=
  canonical_of_padded canonicalInput13489 canonicalOutput13489 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput13490 : ExponentCode := ⟨5, 4, ![![-1, -2, 0, 3], ![0, -1, 2, -1], ![-1, 1, 1, -1], ![1, 1, -2, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput13490 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1303

theorem canonicalSound13490 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13490.moment H = canonicalOutput13490.moment H :=
  canonical_of_padded canonicalInput13490 canonicalOutput13490 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13491 : ExponentCode := ⟨5, 4, ![![-1, -2, 0, 3], ![0, -1, 2, -1], ![-1, 3, 0, -2], ![1, 0, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput13491 : ExponentCode := normalNode4523

theorem canonicalSound13491 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13491.moment H = canonicalOutput13491.moment H :=
  canonical_of_padded canonicalInput13491 canonicalOutput13491 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation169, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput13492 : ExponentCode := ⟨5, 4, ![![-1, -2, 0, 3], ![0, -1, 2, -1], ![0, 0, 1, -1], ![1, 1, -2, 0], ![0, 2, -1, -1]]⟩

def canonicalOutput13492 : ExponentCode := normalNode6697

theorem canonicalSound13492 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13492.moment H = canonicalOutput13492.moment H :=
  canonical_of_padded canonicalInput13492 canonicalOutput13492 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13493 : ExponentCode := ⟨4, 4, ![![-1, -2, 0, 3], ![0, -1, 2, -1], ![0, 1, -1, 0], ![1, 2, -1, -2]]⟩

def canonicalOutput13493 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1204⟩

theorem canonicalSound13493 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13493.moment H = canonicalOutput13493.moment H :=
  canonical_of_padded canonicalInput13493 canonicalOutput13493 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput13494 : ExponentCode := ⟨4, 4, ![![-1, -2, 0, 3], ![0, -1, 2, -1], ![0, 1, 0, -1], ![1, 2, -2, -1]]⟩

def canonicalOutput13494 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node971⟩

theorem canonicalSound13494 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13494.moment H = canonicalOutput13494.moment H :=
  canonical_of_padded canonicalInput13494 canonicalOutput13494 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput13495 : ExponentCode := ⟨4, 4, ![![-1, -2, 0, 3], ![0, -1, 2, -1], ![0, 2, -2, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput13495 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1190⟩

theorem canonicalSound13495 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13495.moment H = canonicalOutput13495.moment H :=
  canonical_of_padded canonicalInput13495 canonicalOutput13495 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput13496 : ExponentCode := ⟨4, 4, ![![-1, -2, 0, 3], ![0, -1, 2, -1], ![0, 2, -1, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput13496 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1208⟩

theorem canonicalSound13496 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13496.moment H = canonicalOutput13496.moment H :=
  canonical_of_padded canonicalInput13496 canonicalOutput13496 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput13497 : ExponentCode := ⟨4, 4, ![![-1, -2, 0, 3], ![0, -1, 2, -1], ![0, 2, 0, -2], ![1, 1, -2, 0]]⟩

def canonicalOutput13497 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1223⟩

theorem canonicalSound13497 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13497.moment H = canonicalOutput13497.moment H :=
  canonical_of_padded canonicalInput13497 canonicalOutput13497 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput13498 : ExponentCode := ⟨4, 4, ![![-1, -2, 0, 3], ![0, -1, 2, -1], ![0, 3, -2, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput13498 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node951⟩

theorem canonicalSound13498 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13498.moment H = canonicalOutput13498.moment H :=
  canonical_of_padded canonicalInput13498 canonicalOutput13498 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput13499 : ExponentCode := ⟨5, 4, ![![-1, -2, 0, 3], ![0, -1, 2, -1], ![0, 3, -1, -2], ![0, 0, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput13499 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1214⟩

theorem canonicalSound13499 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13499.moment H = canonicalOutput13499.moment H :=
  canonical_of_padded canonicalInput13499 canonicalOutput13499 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation183, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput13500 : ExponentCode := ⟨4, 4, ![![-1, -2, 0, 3], ![0, -1, 2, -1], ![0, 3, -1, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput13500 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1214⟩

theorem canonicalSound13500 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13500.moment H = canonicalOutput13500.moment H :=
  canonical_of_padded canonicalInput13500 canonicalOutput13500 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput13501 : ExponentCode := ⟨5, 4, ![![-1, -2, 0, 3], ![0, -1, 2, -1], ![0, 3, -1, -2], ![1, 0, -1, 0], ![0, 0, 0, 0]]⟩

def canonicalOutput13501 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1214⟩

theorem canonicalSound13501 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13501.moment H = canonicalOutput13501.moment H :=
  canonical_of_padded canonicalInput13501 canonicalOutput13501 (by decide) (by decide)
    ⟨false, false, canonicalPermutation65, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput13502 : ExponentCode := ⟨4, 4, ![![-1, -2, 0, 3], ![0, -1, 3, -2], ![0, 1, 0, -1], ![1, 2, -3, 0]]⟩

def canonicalOutput13502 : ExponentCode := normalNode6693

theorem canonicalSound13502 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13502.moment H = canonicalOutput13502.moment H :=
  canonical_of_padded canonicalInput13502 canonicalOutput13502 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput13503 : ExponentCode := ⟨5, 4, ![![-1, -2, 0, 3], ![0, -1, 3, -2], ![0, 2, -2, 0], ![0, 1, 0, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput13503 : ExponentCode := normalNode6711

theorem canonicalSound13503 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13503.moment H = canonicalOutput13503.moment H :=
  canonical_of_padded canonicalInput13503 canonicalOutput13503 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

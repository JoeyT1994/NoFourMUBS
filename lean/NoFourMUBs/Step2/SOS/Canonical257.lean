import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes13
import NoFourMUBs.Step2.SOS.MomentCodes15
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes018
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes033
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes24
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes25
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes26
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes27
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes28
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes30
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes31
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes32
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput16448 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, -1, 2, -1, 0], ![0, 1, 0, 1, -2], ![1, 1, -2, -1, 1]]⟩

def canonicalOutput16448 : ExponentCode := normalNode3991

theorem canonicalSound16448 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16448.moment H = canonicalOutput16448.moment H :=
  canonical_of_padded canonicalInput16448 canonicalOutput16448 (by decide) (by decide)
    ⟨true, true, canonicalPermutation27, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16449 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, -1, 2, -1, 0], ![0, 1, 1, 1, -3], ![1, 1, -3, -1, 2]]⟩

def canonicalOutput16449 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1947⟩

theorem canonicalSound16449 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16449.moment H = canonicalOutput16449.moment H :=
  canonical_of_padded canonicalInput16449 canonicalOutput16449 (by decide) (by decide)
    ⟨true, true, canonicalPermutation27, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16450 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, -1, 2, -1, 0], ![0, 2, -1, -1, 0], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput16450 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2072⟩

theorem canonicalSound16450 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16450.moment H = canonicalOutput16450.moment H :=
  canonical_of_padded canonicalInput16450 canonicalOutput16450 (by decide) (by decide)
    ⟨true, true, canonicalPermutation27, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16451 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, -1, 2, -1, 0], ![0, 2, 0, -1, -1], ![1, 0, -2, 1, 0]]⟩

def canonicalOutput16451 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2018⟩

theorem canonicalSound16451 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16451.moment H = canonicalOutput16451.moment H :=
  canonical_of_padded canonicalInput16451 canonicalOutput16451 (by decide) (by decide)
    ⟨true, true, canonicalPermutation27, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16452 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, -1, 2, -1, 0], ![0, 2, 1, -1, -2], ![1, 0, -3, 1, 1]]⟩

def canonicalOutput16452 : ExponentCode := normalNode3519

theorem canonicalSound16452 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16452.moment H = canonicalOutput16452.moment H :=
  canonical_of_padded canonicalInput16452 canonicalOutput16452 (by decide) (by decide)
    ⟨true, true, canonicalPermutation27, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16453 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, -1, 2, -1, 0], ![1, 0, -1, 1, -1], ![0, 2, -1, -1, 0]]⟩

def canonicalOutput16453 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2072⟩

theorem canonicalSound16453 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16453.moment H = canonicalOutput16453.moment H :=
  canonical_of_padded canonicalInput16453 canonicalOutput16453 (by decide) (by decide)
    ⟨true, true, canonicalPermutation27, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput16454 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, -1, 2, -1, 0], ![1, 0, 0, 1, -2], ![0, 2, -2, -1, 1]]⟩

def canonicalOutput16454 : ExponentCode := normalNode3965

theorem canonicalSound16454 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16454.moment H = canonicalOutput16454.moment H :=
  canonical_of_padded canonicalInput16454 canonicalOutput16454 (by decide) (by decide)
    ⟨true, true, canonicalPermutation55, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput16455 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, -1, 2, -1, 0], ![1, 0, 1, 1, -3], ![0, 2, -3, -1, 2]]⟩

def canonicalOutput16455 : ExponentCode := normalNode3536

theorem canonicalSound16455 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16455.moment H = canonicalOutput16455.moment H :=
  canonical_of_padded canonicalInput16455 canonicalOutput16455 (by decide) (by decide)
    ⟨true, true, canonicalPermutation27, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16456 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, -1, 2, -1, 0], ![1, 1, 0, -1, -1], ![0, 1, -2, 1, 0]]⟩

def canonicalOutput16456 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2017⟩

theorem canonicalSound16456 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16456.moment H = canonicalOutput16456.moment H :=
  canonical_of_padded canonicalInput16456 canonicalOutput16456 (by decide) (by decide)
    ⟨true, false, canonicalPermutation18, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput16457 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, -1, 2, 0, -1], ![-2, 2, -2, 1, 1], ![3, 0, 0, -2, -1]]⟩

def canonicalOutput16457 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code882

theorem canonicalSound16457 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16457.moment H = canonicalOutput16457.moment H :=
  canonical_of_padded canonicalInput16457 canonicalOutput16457 (by decide) (by decide)
    ⟨true, true, canonicalPermutation36, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput16458 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, -1, 2, 0, -1], ![-2, 2, -1, 1, 0], ![3, 0, -1, -2, 0]]⟩

def canonicalOutput16458 : ExponentCode := normalNode4308

theorem canonicalSound16458 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16458.moment H = canonicalOutput16458.moment H :=
  canonical_of_padded canonicalInput16458 canonicalOutput16458 (by decide) (by decide)
    ⟨true, true, canonicalPermutation36, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16459 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, -1, 2, 0, -1], ![-1, 1, -2, 1, 1], ![2, 1, 0, -2, -1]]⟩

def canonicalOutput16459 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code884

theorem canonicalSound16459 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16459.moment H = canonicalOutput16459.moment H :=
  canonical_of_padded canonicalInput16459 canonicalOutput16459 (by decide) (by decide)
    ⟨true, true, canonicalPermutation36, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput16460 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, -1, 2, 0, -1], ![-1, 1, -1, 1, 0], ![2, 1, -1, -2, 0]]⟩

def canonicalOutput16460 : ExponentCode := normalNode4307

theorem canonicalSound16460 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16460.moment H = canonicalOutput16460.moment H :=
  canonical_of_padded canonicalInput16460 canonicalOutput16460 (by decide) (by decide)
    ⟨true, true, canonicalPermutation36, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16461 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, -1, 2, 0, -1], ![-1, 1, 0, 1, -1], ![2, 1, -2, -2, 1]]⟩

def canonicalOutput16461 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code878

theorem canonicalSound16461 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16461.moment H = canonicalOutput16461.moment H :=
  canonical_of_padded canonicalInput16461 canonicalOutput16461 (by decide) (by decide)
    ⟨true, true, canonicalPermutation36, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16462 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, -1, 2, 0, -1], ![-1, 2, -2, 1, 0], ![2, 0, 0, -2, 0]]⟩

def canonicalOutput16462 : ExponentCode := normalNode3790

theorem canonicalSound16462 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16462.moment H = canonicalOutput16462.moment H :=
  canonical_of_padded canonicalInput16462 canonicalOutput16462 (by decide) (by decide)
    ⟨true, true, canonicalPermutation25, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput16463 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, -1, 2, 0, -1], ![-1, 2, -1, 1, -1], ![2, 0, -1, -2, 1]]⟩

def canonicalOutput16463 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code973

theorem canonicalSound16463 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16463.moment H = canonicalOutput16463.moment H :=
  canonical_of_padded canonicalInput16463 canonicalOutput16463 (by decide) (by decide)
    ⟨true, true, canonicalPermutation36, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16464 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, -1, 2, 0, -1], ![0, 0, -2, 1, 1], ![1, 2, 0, -2, -1]]⟩

def canonicalOutput16464 : ExponentCode := normalNode4647

theorem canonicalSound16464 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16464.moment H = canonicalOutput16464.moment H :=
  canonical_of_padded canonicalInput16464 canonicalOutput16464 (by decide) (by decide)
    ⟨true, false, canonicalPermutation73, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput16465 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, -1, 2, 0, -1], ![0, 0, -1, -2, 3], ![1, 2, -1, 1, -3]]⟩

def canonicalOutput16465 : ExponentCode := normalNode4415

theorem canonicalSound16465 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16465.moment H = canonicalOutput16465.moment H :=
  canonical_of_padded canonicalInput16465 canonicalOutput16465 (by decide) (by decide)
    ⟨true, true, canonicalPermutation36, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16466 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, -1, 2, 0, -1], ![0, 0, -1, 1, 0], ![1, 2, -1, -2, 0]]⟩

def canonicalOutput16466 : ExponentCode := normalNode8981

theorem canonicalSound16466 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16466.moment H = canonicalOutput16466.moment H :=
  canonical_of_padded canonicalInput16466 canonicalOutput16466 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation195, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput16467 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, -1, 2, 0, -1], ![0, 0, 0, -2, 2], ![1, 2, -2, 1, -2]]⟩

def canonicalOutput16467 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1757⟩

theorem canonicalSound16467 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16467.moment H = canonicalOutput16467.moment H :=
  canonical_of_padded canonicalInput16467 canonicalOutput16467 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation200, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput16468 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 1, 1], ![0, -1, 2, 0, -1], ![0, 0, 0, -1, 1], ![0, 2, -1, 0, -1], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput16468 : ExponentCode := normalNode10059

theorem canonicalSound16468 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16468.moment H = canonicalOutput16468.moment H :=
  canonical_of_padded canonicalInput16468 canonicalOutput16468 (by decide) (by decide)
    ⟨true, false, canonicalPermutation35, canonicalPermutation30⟩ (by decide +kernel) hH

def canonicalInput16469 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 1, 1], ![0, -1, 2, 0, -1], ![0, 0, 0, -1, 1], ![0, 2, -1, 1, -2], ![1, 0, -1, -1, 1]]⟩

def canonicalOutput16469 : ExponentCode := normalNode7566

theorem canonicalSound16469 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16469.moment H = canonicalOutput16469.moment H :=
  canonical_of_padded canonicalInput16469 canonicalOutput16469 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation181⟩ (by decide +kernel) hH

def canonicalInput16470 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, -1, 2, 0, -1], ![0, 0, 0, 1, -1], ![1, 2, -2, -2, 1]]⟩

def canonicalOutput16470 : ExponentCode := normalNode9064

theorem canonicalSound16470 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16470.moment H = canonicalOutput16470.moment H :=
  canonical_of_padded canonicalInput16470 canonicalOutput16470 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation192, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput16471 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, -1, 2, 0, -1], ![0, 1, -3, 1, 1], ![1, 1, 1, -2, -1]]⟩

def canonicalOutput16471 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1942⟩

theorem canonicalSound16471 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16471.moment H = canonicalOutput16471.moment H :=
  canonical_of_padded canonicalInput16471 canonicalOutput16471 (by decide) (by decide)
    ⟨true, true, canonicalPermutation36, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput16472 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, -1, 2, 0, -1], ![0, 1, -2, 0, 1], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput16472 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2017⟩

theorem canonicalSound16472 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16472.moment H = canonicalOutput16472.moment H :=
  canonical_of_padded canonicalInput16472 canonicalOutput16472 (by decide) (by decide)
    ⟨true, false, canonicalPermutation42, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput16473 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, -1, 2, 0, -1], ![0, 1, -2, 1, 0], ![1, 1, 0, -2, 0]]⟩

def canonicalOutput16473 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2018⟩

theorem canonicalSound16473 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16473.moment H = canonicalOutput16473.moment H :=
  canonical_of_padded canonicalInput16473 canonicalOutput16473 (by decide) (by decide)
    ⟨true, false, canonicalPermutation18, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput16474 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, -1, 2, 0, -1], ![0, 1, -1, -2, 2], ![1, 1, -1, 1, -2]]⟩

def canonicalOutput16474 : ExponentCode := normalNode4294

theorem canonicalSound16474 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16474.moment H = canonicalOutput16474.moment H :=
  canonical_of_padded canonicalInput16474 canonicalOutput16474 (by decide) (by decide)
    ⟨true, true, canonicalPermutation36, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput16475 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 1, 1], ![0, -1, 2, 0, -1], ![0, 1, -1, 0, 0], ![0, 1, 0, 0, -1], ![1, 0, -1, -1, 1]]⟩

def canonicalOutput16475 : ExponentCode := normalNode8700

theorem canonicalSound16475 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16475.moment H = canonicalOutput16475.moment H :=
  canonical_of_padded canonicalInput16475 canonicalOutput16475 (by decide) (by decide)
    ⟨true, true, canonicalPermutation78, canonicalPermutation19⟩ (by decide +kernel) hH

def canonicalInput16476 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 1, 1], ![0, -1, 2, 0, -1], ![0, 1, -1, 1, -1], ![0, 1, 0, 0, -1], ![1, 0, -1, -2, 2]]⟩

def canonicalOutput16476 : ExponentCode := normalNode7582

theorem canonicalSound16476 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16476.moment H = canonicalOutput16476.moment H :=
  canonical_of_padded canonicalInput16476 canonicalOutput16476 (by decide) (by decide)
    ⟨true, false, canonicalPermutation43, canonicalPermutation53⟩ (by decide +kernel) hH

def canonicalInput16477 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, -1, 2, 0, -1], ![0, 1, -1, 1, -1], ![1, 1, -1, -2, 1]]⟩

def canonicalOutput16477 : ExponentCode := normalNode4304

theorem canonicalSound16477 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16477.moment H = canonicalOutput16477.moment H :=
  canonical_of_padded canonicalInput16477 canonicalOutput16477 (by decide) (by decide)
    ⟨true, true, canonicalPermutation36, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16478 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, -1, 2, 0, -1], ![0, 1, 0, -2, 1], ![1, 1, -2, 1, -1]]⟩

def canonicalOutput16478 : ExponentCode := normalNode3991

theorem canonicalSound16478 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16478.moment H = canonicalOutput16478.moment H :=
  canonical_of_padded canonicalInput16478 canonicalOutput16478 (by decide) (by decide)
    ⟨true, true, canonicalPermutation36, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16479 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 1, 1], ![0, -1, 2, 0, -1], ![0, 1, 0, 0, -1], ![0, 1, -1, 1, -1], ![1, 0, -1, -2, 2]]⟩

def canonicalOutput16479 : ExponentCode := normalNode7582

theorem canonicalSound16479 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16479.moment H = canonicalOutput16479.moment H :=
  canonical_of_padded canonicalInput16479 canonicalOutput16479 (by decide) (by decide)
    ⟨true, false, canonicalPermutation43, OAI.MUB6.Certificate.PairSemantics.permutation179⟩ (by decide +kernel) hH

def canonicalInput16480 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 1, 1], ![0, -1, 2, 0, -1], ![0, 1, 0, 0, -1], ![0, 1, 0, 0, -1], ![1, 0, -2, -1, 2]]⟩

def canonicalOutput16480 : ExponentCode := normalNode7610

theorem canonicalSound16480 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16480.moment H = canonicalOutput16480.moment H :=
  canonical_of_padded canonicalInput16480 canonicalOutput16480 (by decide) (by decide)
    ⟨true, false, canonicalPermutation21, OAI.MUB6.Certificate.PairSemantics.permutation179⟩ (by decide +kernel) hH

def canonicalInput16481 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, -1, 2, 0, -1], ![0, 1, 0, 1, -2], ![1, 1, -2, -2, 2]]⟩

def canonicalOutput16481 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1775⟩

theorem canonicalSound16481 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16481.moment H = canonicalOutput16481.moment H :=
  canonical_of_padded canonicalInput16481 canonicalOutput16481 (by decide) (by decide)
    ⟨true, false, canonicalPermutation65, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput16482 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, -1, 2, 0, -1], ![0, 2, -1, 1, -2], ![1, 0, -1, -2, 2]]⟩

def canonicalOutput16482 : ExponentCode := normalNode4305

theorem canonicalSound16482 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16482.moment H = canonicalOutput16482.moment H :=
  canonical_of_padded canonicalInput16482 canonicalOutput16482 (by decide) (by decide)
    ⟨true, true, canonicalPermutation36, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16483 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, -1, 2, 0, -1], ![1, 0, -2, 1, 0], ![0, 2, 0, -2, 0]]⟩

def canonicalOutput16483 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2021⟩

theorem canonicalSound16483 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16483.moment H = canonicalOutput16483.moment H :=
  canonical_of_padded canonicalInput16483 canonicalOutput16483 (by decide) (by decide)
    ⟨true, false, canonicalPermutation79, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput16484 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, -1, 2, 0, -1], ![1, 0, -1, -2, 2], ![0, 2, -1, 1, -2]]⟩

def canonicalOutput16484 : ExponentCode := normalNode4305

theorem canonicalSound16484 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16484.moment H = canonicalOutput16484.moment H :=
  canonical_of_padded canonicalInput16484 canonicalOutput16484 (by decide) (by decide)
    ⟨true, true, canonicalPermutation36, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput16485 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, -1, 2, 0, -1], ![1, 0, -1, 1, -1], ![0, 2, -1, -2, 1]]⟩

def canonicalOutput16485 : ExponentCode := normalNode4293

theorem canonicalSound16485 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16485.moment H = canonicalOutput16485.moment H :=
  canonical_of_padded canonicalInput16485 canonicalOutput16485 (by decide) (by decide)
    ⟨true, true, canonicalPermutation36, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16486 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, -1, 2, 0, -1], ![1, 0, 0, 1, -2], ![0, 2, -2, -2, 2]]⟩

def canonicalOutput16486 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1734⟩

theorem canonicalSound16486 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16486.moment H = canonicalOutput16486.moment H :=
  canonical_of_padded canonicalInput16486 canonicalOutput16486 (by decide) (by decide)
    ⟨true, false, canonicalPermutation81, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput16487 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, -1, 2, 0, -1], ![1, 1, -3, 1, 0], ![0, 1, 1, -2, 0]]⟩

def canonicalOutput16487 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1690⟩

theorem canonicalSound16487 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16487.moment H = canonicalOutput16487.moment H :=
  canonical_of_padded canonicalInput16487 canonicalOutput16487 (by decide) (by decide)
    ⟨true, true, canonicalPermutation42, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput16488 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, -1, 2, 0, -1], ![1, 1, -1, -2, 1], ![0, 1, -1, 1, -1]]⟩

def canonicalOutput16488 : ExponentCode := normalNode4304

theorem canonicalSound16488 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16488.moment H = canonicalOutput16488.moment H :=
  canonical_of_padded canonicalInput16488 canonicalOutput16488 (by decide) (by decide)
    ⟨true, true, canonicalPermutation36, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput16489 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, -1, 2, 0, -1], ![1, 1, 0, -2, 0], ![0, 1, -2, 1, 0]]⟩

def canonicalOutput16489 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2018⟩

theorem canonicalSound16489 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16489.moment H = canonicalOutput16489.moment H :=
  canonical_of_padded canonicalInput16489 canonicalOutput16489 (by decide) (by decide)
    ⟨true, false, canonicalPermutation18, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput16490 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, -1, 2, 0, -1], ![1, 1, 0, 1, -3], ![0, 1, -2, -2, 3]]⟩

def canonicalOutput16490 : ExponentCode := normalNode3844

theorem canonicalSound16490 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16490.moment H = canonicalOutput16490.moment H :=
  canonical_of_padded canonicalInput16490 canonicalOutput16490 (by decide) (by decide)
    ⟨true, true, canonicalPermutation36, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16491 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 1, 1], ![0, -1, 2, 1, -2], ![0, 1, -1, 0, 0], ![0, 1, 0, 0, -1], ![1, 0, -1, -2, 2]]⟩

def canonicalOutput16491 : ExponentCode := normalNode9234

theorem canonicalSound16491 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16491.moment H = canonicalOutput16491.moment H :=
  canonical_of_padded canonicalInput16491 canonicalOutput16491 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation173, canonicalPermutation36⟩ (by decide +kernel) hH

def canonicalInput16492 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 1, 1], ![0, 0, -2, 0, 2], ![0, 0, 1, -1, 0], ![0, 2, 1, 0, -3], ![1, -1, 0, 0, 0]]⟩

def canonicalOutput16492 : ExponentCode := normalNode10095

theorem canonicalSound16492 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16492.moment H = canonicalOutput16492.moment H :=
  canonical_of_padded canonicalInput16492 canonicalOutput16492 (by decide) (by decide)
    ⟨true, false, canonicalPermutation29, OAI.MUB6.Certificate.PairSemantics.permutation200⟩ (by decide +kernel) hH

def canonicalInput16493 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, -2, 0, 2], ![0, 0, 1, 1, -2], ![1, 1, 1, -2, -1]]⟩

def canonicalOutput16493 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1835⟩

theorem canonicalSound16493 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16493.moment H = canonicalOutput16493.moment H :=
  canonical_of_padded canonicalInput16493 canonicalOutput16493 (by decide) (by decide)
    ⟨true, true, canonicalPermutation59, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16494 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, -2, 0, 2], ![0, 0, 2, -2, 0], ![1, 1, 0, 1, -3]]⟩

def canonicalOutput16494 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1650⟩

theorem canonicalSound16494 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16494.moment H = canonicalOutput16494.moment H :=
  canonical_of_padded canonicalInput16494 canonicalOutput16494 (by decide) (by decide)
    ⟨true, true, canonicalPermutation59, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16495 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, -2, 0, 2], ![0, 0, 2, -1, -1], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput16495 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1749⟩

theorem canonicalSound16495 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16495.moment H = canonicalOutput16495.moment H :=
  canonical_of_padded canonicalInput16495 canonicalOutput16495 (by decide) (by decide)
    ⟨true, true, canonicalPermutation59, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16496 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, -2, 0, 2], ![0, 0, 2, 0, -2], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput16496 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1746⟩

theorem canonicalSound16496 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16496.moment H = canonicalOutput16496.moment H :=
  canonical_of_padded canonicalInput16496 canonicalOutput16496 (by decide) (by decide)
    ⟨true, false, canonicalPermutation59, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput16497 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, -2, 0, 2], ![0, 0, 2, 1, -3], ![1, 1, 0, -2, 0]]⟩

def canonicalOutput16497 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1646⟩

theorem canonicalSound16497 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16497.moment H = canonicalOutput16497.moment H :=
  canonical_of_padded canonicalInput16497 canonicalOutput16497 (by decide) (by decide)
    ⟨true, true, canonicalPermutation59, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput16498 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, -2, 0, 2], ![0, 1, 0, -2, 1], ![1, 0, 2, 1, -4]]⟩

def canonicalOutput16498 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1549⟩

theorem canonicalSound16498 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16498.moment H = canonicalOutput16498.moment H :=
  canonical_of_padded canonicalInput16498 canonicalOutput16498 (by decide) (by decide)
    ⟨true, true, canonicalPermutation68, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput16499 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, -2, 0, 2], ![0, 1, 0, 1, -2], ![1, 0, 2, -2, -1]]⟩

def canonicalOutput16499 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1833⟩

theorem canonicalSound16499 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16499.moment H = canonicalOutput16499.moment H :=
  canonical_of_padded canonicalInput16499 canonicalOutput16499 (by decide) (by decide)
    ⟨true, true, canonicalPermutation74, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16500 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, -2, 0, 2], ![0, 1, 1, -2, 0], ![1, 0, 1, 1, -3]]⟩

def canonicalOutput16500 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1647⟩

theorem canonicalSound16500 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16500.moment H = canonicalOutput16500.moment H :=
  canonical_of_padded canonicalInput16500 canonicalOutput16500 (by decide) (by decide)
    ⟨true, true, canonicalPermutation74, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16501 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, -2, 0, 2], ![0, 1, 1, -1, -1], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput16501 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1747⟩

theorem canonicalSound16501 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16501.moment H = canonicalOutput16501.moment H :=
  canonical_of_padded canonicalInput16501 canonicalOutput16501 (by decide) (by decide)
    ⟨true, true, canonicalPermutation74, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16502 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, -2, 0, 2], ![0, 1, 1, 0, -2], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput16502 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1747⟩

theorem canonicalSound16502 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16502.moment H = canonicalOutput16502.moment H :=
  canonical_of_padded canonicalInput16502 canonicalOutput16502 (by decide) (by decide)
    ⟨true, true, canonicalPermutation59, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput16503 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, -2, 0, 2], ![0, 1, 1, 1, -3], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput16503 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1647⟩

theorem canonicalSound16503 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16503.moment H = canonicalOutput16503.moment H :=
  canonical_of_padded canonicalInput16503 canonicalOutput16503 (by decide) (by decide)
    ⟨true, true, canonicalPermutation59, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput16504 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, -2, 0, 2], ![0, 1, 2, -2, -1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput16504 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1833⟩

theorem canonicalSound16504 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16504.moment H = canonicalOutput16504.moment H :=
  canonical_of_padded canonicalInput16504 canonicalOutput16504 (by decide) (by decide)
    ⟨true, true, canonicalPermutation59, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput16505 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, -2, 0, 2], ![0, 2, 1, -2, -1], ![1, -1, 1, 1, -2]]⟩

def canonicalOutput16505 : ExponentCode := normalNode2554

theorem canonicalSound16505 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16505.moment H = canonicalOutput16505.moment H :=
  canonical_of_padded canonicalInput16505 canonicalOutput16505 (by decide) (by decide)
    ⟨true, true, canonicalPermutation74, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16506 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, -2, 0, 2], ![0, 2, 2, -2, -2], ![1, -1, 0, 1, -1]]⟩

def canonicalOutput16506 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1726⟩

theorem canonicalSound16506 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16506.moment H = canonicalOutput16506.moment H :=
  canonical_of_padded canonicalInput16506 canonicalOutput16506 (by decide) (by decide)
    ⟨true, true, canonicalPermutation59, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput16507 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 1, 1], ![0, 0, -2, 1, 1], ![0, -1, 1, -1, 1], ![0, 2, 1, 0, -3], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput16507 : ExponentCode := normalNode8523

theorem canonicalSound16507 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16507.moment H = canonicalOutput16507.moment H :=
  canonical_of_padded canonicalInput16507 canonicalOutput16507 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput16508 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 1, 1], ![0, 0, -2, 1, 1], ![0, 0, 1, -2, 1], ![0, 2, 1, 0, -3], ![1, -1, 0, 0, 0]]⟩

def canonicalOutput16508 : ExponentCode := normalNode8273

theorem canonicalSound16508 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16508.moment H = canonicalOutput16508.moment H :=
  canonical_of_padded canonicalInput16508 canonicalOutput16508 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation172, OAI.MUB6.Certificate.PairSemantics.permutation197⟩ (by decide +kernel) hH

def canonicalInput16509 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, -2, 1, 1], ![0, 0, 1, -2, 1], ![1, 1, 1, 0, -3]]⟩

def canonicalOutput16509 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2064⟩

theorem canonicalSound16509 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16509.moment H = canonicalOutput16509.moment H :=
  canonical_of_padded canonicalInput16509 canonicalOutput16509 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16510 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 1, 1], ![0, 0, -2, 1, 1], ![0, 0, 1, -1, 0], ![0, 1, 1, 0, -2], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput16510 : ExponentCode := normalNode8620

theorem canonicalSound16510 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16510.moment H = canonicalOutput16510.moment H :=
  canonical_of_padded canonicalInput16510 canonicalOutput16510 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput16511 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 1, 1], ![0, 0, -2, 1, 1], ![0, 0, 1, -1, 0], ![0, 2, 1, -1, -2], ![1, -1, 0, 0, 0]]⟩

def canonicalOutput16511 : ExponentCode := normalNode10102

theorem canonicalSound16511 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16511.moment H = canonicalOutput16511.moment H :=
  canonical_of_padded canonicalInput16511 canonicalOutput16511 (by decide) (by decide)
    ⟨true, false, canonicalPermutation29, OAI.MUB6.Certificate.PairSemantics.permutation200⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

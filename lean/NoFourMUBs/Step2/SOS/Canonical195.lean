import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes12
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes10
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes39
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes40
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes42
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes44
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput12480 : ExponentCode := ⟨4, 4, ![![-1, -3, 1, 3], ![-1, 3, -2, 0], ![1, 0, 0, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput12480 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node809⟩

theorem canonicalSound12480 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12480.moment H = canonicalOutput12480.moment H :=
  canonical_of_padded canonicalInput12480 canonicalOutput12480 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput12481 : ExponentCode := ⟨4, 4, ![![-1, -3, 1, 3], ![-1, 3, -2, 0], ![1, 0, 1, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput12481 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node809⟩

theorem canonicalSound12481 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12481.moment H = canonicalOutput12481.moment H :=
  canonical_of_padded canonicalInput12481 canonicalOutput12481 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput12482 : ExponentCode := ⟨5, 4, ![![-1, -3, 1, 3], ![-1, 3, -1, -1], ![0, 0, 1, -1], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput12482 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2525⟩

theorem canonicalSound12482 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12482.moment H = canonicalOutput12482.moment H :=
  canonical_of_padded canonicalInput12482 canonicalOutput12482 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation174, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput12483 : ExponentCode := ⟨5, 4, ![![-1, -3, 1, 3], ![-1, 3, -1, -1], ![0, 0, 1, -1], ![1, 0, 0, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput12483 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2525⟩

theorem canonicalSound12483 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12483.moment H = canonicalOutput12483.moment H :=
  canonical_of_padded canonicalInput12483 canonicalOutput12483 (by decide) (by decide)
    ⟨false, false, canonicalPermutation37, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput12484 : ExponentCode := ⟨4, 4, ![![-1, -3, 1, 3], ![-1, 3, -1, -1], ![0, 0, 2, -2], ![2, 0, -2, 0]]⟩

def canonicalOutput12484 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code792

theorem canonicalSound12484 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12484.moment H = canonicalOutput12484.moment H :=
  canonical_of_padded canonicalInput12484 canonicalOutput12484 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput12485 : ExponentCode := ⟨4, 4, ![![-1, -3, 1, 3], ![-1, 3, -1, -1], ![1, 0, -1, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput12485 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1105⟩

theorem canonicalSound12485 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12485.moment H = canonicalOutput12485.moment H :=
  canonical_of_padded canonicalInput12485 canonicalOutput12485 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation152, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput12486 : ExponentCode := ⟨4, 4, ![![-1, -3, 1, 3], ![-1, 3, -1, -1], ![1, 0, 1, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput12486 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1105⟩

theorem canonicalSound12486 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12486.moment H = canonicalOutput12486.moment H :=
  canonical_of_padded canonicalInput12486 canonicalOutput12486 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation152, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput12487 : ExponentCode := ⟨5, 4, ![![-1, -3, 1, 3], ![-1, 3, 0, -2], ![0, 0, 1, -1], ![1, 0, -2, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput12487 : ExponentCode := normalNode5441

theorem canonicalSound12487 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12487.moment H = canonicalOutput12487.moment H :=
  canonical_of_padded canonicalInput12487 canonicalOutput12487 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation190, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput12488 : ExponentCode := ⟨5, 4, ![![-1, -3, 1, 3], ![-1, 3, 0, -2], ![0, 0, 1, -1], ![1, 0, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput12488 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2695⟩

theorem canonicalSound12488 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12488.moment H = canonicalOutput12488.moment H :=
  canonical_of_padded canonicalInput12488 canonicalOutput12488 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput12489 : ExponentCode := ⟨4, 4, ![![-1, -3, 1, 3], ![-1, 3, 0, -2], ![1, 0, -2, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput12489 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node675⟩

theorem canonicalSound12489 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12489.moment H = canonicalOutput12489.moment H :=
  canonical_of_padded canonicalInput12489 canonicalOutput12489 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput12490 : ExponentCode := ⟨5, 4, ![![-1, -3, 1, 3], ![-1, 3, 1, -3], ![0, 0, -1, 1], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput12490 : ExponentCode := normalNode10493

theorem canonicalSound12490 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12490.moment H = canonicalOutput12490.moment H :=
  canonical_of_padded canonicalInput12490 canonicalOutput12490 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation180, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput12491 : ExponentCode := ⟨4, 4, ![![-1, -3, 1, 3], ![-1, 3, 1, -3], ![1, 0, -2, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput12491 : ExponentCode := normalNode9441

theorem canonicalSound12491 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12491.moment H = canonicalOutput12491.moment H :=
  canonical_of_padded canonicalInput12491 canonicalOutput12491 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation151, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput12492 : ExponentCode := ⟨4, 4, ![![-1, -3, 1, 3], ![-1, 3, 1, -3], ![1, 0, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput12492 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1101⟩

theorem canonicalSound12492 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12492.moment H = canonicalOutput12492.moment H :=
  canonical_of_padded canonicalInput12492 canonicalOutput12492 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput12493 : ExponentCode := ⟨4, 4, ![![-1, -3, 1, 3], ![-1, 3, 2, -4], ![1, 0, -2, 1], ![1, 0, -1, 0]]⟩

def canonicalOutput12493 : ExponentCode := normalNode6960

theorem canonicalSound12493 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12493.moment H = canonicalOutput12493.moment H :=
  canonical_of_padded canonicalInput12493 canonicalOutput12493 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput12494 : ExponentCode := ⟨5, 4, ![![-1, -3, 1, 3], ![0, 0, -1, 1], ![-1, 1, 0, 0], ![1, 0, -1, 0], ![1, 2, 1, -4]]⟩

def canonicalOutput12494 : ExponentCode := normalNode7361

theorem canonicalSound12494 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12494.moment H = canonicalOutput12494.moment H :=
  canonical_of_padded canonicalInput12494 canonicalOutput12494 (by decide) (by decide)
    ⟨false, true, canonicalPermutation74, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput12495 : ExponentCode := ⟨5, 4, ![![-1, -3, 1, 3], ![0, 0, -1, 1], ![-1, 1, 0, 0], ![1, 0, 1, -2], ![1, 2, -1, -2]]⟩

def canonicalOutput12495 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2566⟩

theorem canonicalSound12495 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12495.moment H = canonicalOutput12495.moment H :=
  canonical_of_padded canonicalInput12495 canonicalOutput12495 (by decide) (by decide)
    ⟨false, true, canonicalPermutation75, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput12496 : ExponentCode := ⟨5, 4, ![![-1, -3, 1, 3], ![0, 0, -1, 1], ![-1, 1, 0, 0], ![1, 1, -1, -1], ![1, 1, 1, -3]]⟩

def canonicalOutput12496 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2522⟩

theorem canonicalSound12496 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12496.moment H = canonicalOutput12496.moment H :=
  canonical_of_padded canonicalInput12496 canonicalOutput12496 (by decide) (by decide)
    ⟨false, true, canonicalPermutation74, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput12497 : ExponentCode := ⟨5, 4, ![![-1, -3, 1, 3], ![0, 0, -1, 1], ![-1, 2, 0, -1], ![1, 0, 1, -2], ![1, 1, -1, -1]]⟩

def canonicalOutput12497 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2572⟩

theorem canonicalSound12497 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12497.moment H = canonicalOutput12497.moment H :=
  canonical_of_padded canonicalInput12497 canonicalOutput12497 (by decide) (by decide)
    ⟨false, true, canonicalPermutation75, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput12498 : ExponentCode := ⟨5, 4, ![![-1, -3, 1, 3], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 0, 0, 0], ![1, 2, 1, -4]]⟩

def canonicalOutput12498 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1115⟩

theorem canonicalSound12498 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12498.moment H = canonicalOutput12498.moment H :=
  canonical_of_padded canonicalInput12498 canonicalOutput12498 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation188⟩ (by decide +kernel) hH

def canonicalInput12499 : ExponentCode := ⟨5, 4, ![![-1, -3, 1, 3], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 0, 2, -2], ![1, 2, -1, -2]]⟩

def canonicalOutput12499 : ExponentCode := normalNode6098

theorem canonicalSound12499 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12499.moment H = canonicalOutput12499.moment H :=
  canonical_of_padded canonicalInput12499 canonicalOutput12499 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12500 : ExponentCode := ⟨5, 4, ![![-1, -3, 1, 3], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 1, 1, -3]]⟩

def canonicalOutput12500 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2548⟩

theorem canonicalSound12500 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12500.moment H = canonicalOutput12500.moment H :=
  canonical_of_padded canonicalInput12500 canonicalOutput12500 (by decide) (by decide)
    ⟨false, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput12501 : ExponentCode := ⟨5, 4, ![![-1, -3, 1, 3], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![0, 2, 2, -4]]⟩

def canonicalOutput12501 : ExponentCode := normalNode6102

theorem canonicalSound12501 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12501.moment H = canonicalOutput12501.moment H :=
  canonical_of_padded canonicalInput12501 canonicalOutput12501 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12502 : ExponentCode := ⟨5, 4, ![![-1, -3, 1, 3], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, 0, 1, -2], ![0, 2, 0, -2]]⟩

def canonicalOutput12502 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2591⟩

theorem canonicalSound12502 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12502.moment H = canonicalOutput12502.moment H :=
  canonical_of_padded canonicalInput12502 canonicalOutput12502 (by decide) (by decide)
    ⟨false, true, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput12503 : ExponentCode := ⟨5, 4, ![![-1, -3, 1, 3], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, 1, -1, -1], ![0, 1, 2, -3]]⟩

def canonicalOutput12503 : ExponentCode := normalNode6101

theorem canonicalSound12503 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12503.moment H = canonicalOutput12503.moment H :=
  canonical_of_padded canonicalInput12503 canonicalOutput12503 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12504 : ExponentCode := ⟨5, 4, ![![-1, -3, 1, 3], ![0, 0, -1, 1], ![0, 2, -1, -1], ![0, 0, 2, -2], ![1, 1, -1, -1]]⟩

def canonicalOutput12504 : ExponentCode := normalNode6099

theorem canonicalSound12504 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12504.moment H = canonicalOutput12504.moment H :=
  canonical_of_padded canonicalInput12504 canonicalOutput12504 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12505 : ExponentCode := ⟨5, 4, ![![-1, -3, 1, 3], ![0, 0, -1, 1], ![0, 2, -1, -1], ![1, 0, 1, -2], ![0, 1, 0, -1]]⟩

def canonicalOutput12505 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2602⟩

theorem canonicalSound12505 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12505.moment H = canonicalOutput12505.moment H :=
  canonical_of_padded canonicalInput12505 canonicalOutput12505 (by decide) (by decide)
    ⟨false, true, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput12506 : ExponentCode := ⟨4, 4, ![![-1, -3, 1, 3], ![0, 0, -1, 1], ![0, 3, 1, -4], ![1, 0, -1, 0]]⟩

def canonicalOutput12506 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1102⟩

theorem canonicalSound12506 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12506.moment H = canonicalOutput12506.moment H :=
  canonical_of_padded canonicalInput12506 canonicalOutput12506 (by decide) (by decide)
    ⟨true, false, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput12507 : ExponentCode := ⟨5, 4, ![![-1, -3, 1, 3], ![0, 0, 1, -1], ![-1, 1, 1, -1], ![1, 1, -3, 1], ![1, 1, 0, -2]]⟩

def canonicalOutput12507 : ExponentCode := normalNode6054

theorem canonicalSound12507 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12507.moment H = canonicalOutput12507.moment H :=
  canonical_of_padded canonicalInput12507 canonicalOutput12507 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12508 : ExponentCode := ⟨5, 4, ![![-1, -3, 1, 3], ![0, 0, 1, -1], ![-1, 2, 0, -1], ![1, 0, 1, -2], ![1, 1, -3, 1]]⟩

def canonicalOutput12508 : ExponentCode := normalNode6077

theorem canonicalSound12508 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12508.moment H = canonicalOutput12508.moment H :=
  canonical_of_padded canonicalInput12508 canonicalOutput12508 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12509 : ExponentCode := ⟨5, 4, ![![-1, -3, 1, 3], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, 1, -3, 1], ![0, 2, 0, -2]]⟩

def canonicalOutput12509 : ExponentCode := normalNode6107

theorem canonicalSound12509 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12509.moment H = canonicalOutput12509.moment H :=
  canonical_of_padded canonicalInput12509 canonicalOutput12509 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12510 : ExponentCode := ⟨4, 4, ![![-1, -3, 1, 3], ![0, 0, 1, -1], ![0, 1, -2, 1], ![1, 2, 0, -3]]⟩

def canonicalOutput12510 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1200⟩

theorem canonicalSound12510 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12510.moment H = canonicalOutput12510.moment H :=
  canonical_of_padded canonicalInput12510 canonicalOutput12510 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput12511 : ExponentCode := ⟨4, 4, ![![-1, -3, 1, 3], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, 2, -1, -2]]⟩

def canonicalOutput12511 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1217⟩

theorem canonicalSound12511 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12511.moment H = canonicalOutput12511.moment H :=
  canonical_of_padded canonicalInput12511 canonicalOutput12511 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput12512 : ExponentCode := ⟨5, 4, ![![-1, -3, 1, 3], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 1, -2, 0]]⟩

def canonicalOutput12512 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2836⟩

theorem canonicalSound12512 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12512.moment H = canonicalOutput12512.moment H :=
  canonical_of_padded canonicalInput12512 canonicalOutput12512 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput12513 : ExponentCode := ⟨5, 4, ![![-1, -3, 1, 3], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, 1, -2], ![0, 2, -3, 1]]⟩

def canonicalOutput12513 : ExponentCode := normalNode6112

theorem canonicalSound12513 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12513.moment H = canonicalOutput12513.moment H :=
  canonical_of_padded canonicalInput12513 canonicalOutput12513 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12514 : ExponentCode := ⟨4, 4, ![![-1, -3, 1, 3], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 2, -2, -1]]⟩

def canonicalOutput12514 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node968⟩

theorem canonicalSound12514 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12514.moment H = canonicalOutput12514.moment H :=
  canonical_of_padded canonicalInput12514 canonicalOutput12514 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput12515 : ExponentCode := ⟨5, 4, ![![-1, -3, 1, 3], ![0, 0, 1, -1], ![0, 1, 1, -2], ![0, 1, 0, -1], ![1, 1, -3, 1]]⟩

def canonicalOutput12515 : ExponentCode := normalNode6111

theorem canonicalSound12515 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12515.moment H = canonicalOutput12515.moment H :=
  canonical_of_padded canonicalInput12515 canonicalOutput12515 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12516 : ExponentCode := ⟨4, 4, ![![-1, -3, 1, 3], ![0, 0, 1, -1], ![0, 1, 1, -2], ![1, 2, -3, 0]]⟩

def canonicalOutput12516 : ExponentCode := normalNode6778

theorem canonicalSound12516 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12516.moment H = canonicalOutput12516.moment H :=
  canonical_of_padded canonicalInput12516 canonicalOutput12516 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput12517 : ExponentCode := ⟨4, 4, ![![-1, -3, 1, 3], ![0, 0, 1, -1], ![0, 2, -2, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput12517 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node819⟩

theorem canonicalSound12517 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12517.moment H = canonicalOutput12517.moment H :=
  canonical_of_padded canonicalInput12517 canonicalOutput12517 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput12518 : ExponentCode := ⟨4, 4, ![![-1, -3, 1, 3], ![0, 0, 1, -1], ![0, 2, -1, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput12518 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node972⟩

theorem canonicalSound12518 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12518.moment H = canonicalOutput12518.moment H :=
  canonical_of_padded canonicalInput12518 canonicalOutput12518 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput12519 : ExponentCode := ⟨4, 4, ![![-1, -3, 1, 3], ![0, 0, 1, -1], ![0, 2, 0, -2], ![1, 1, -2, 0]]⟩

def canonicalOutput12519 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node803⟩

theorem canonicalSound12519 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12519.moment H = canonicalOutput12519.moment H :=
  canonical_of_padded canonicalInput12519 canonicalOutput12519 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput12520 : ExponentCode := ⟨4, 4, ![![-1, -3, 1, 3], ![0, 0, 1, -1], ![0, 3, -3, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput12520 : ExponentCode := normalNode6790

theorem canonicalSound12520 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12520.moment H = canonicalOutput12520.moment H :=
  canonical_of_padded canonicalInput12520 canonicalOutput12520 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput12521 : ExponentCode := ⟨4, 4, ![![-1, -3, 1, 3], ![0, 0, 1, -1], ![0, 3, -2, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput12521 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node977⟩

theorem canonicalSound12521 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12521.moment H = canonicalOutput12521.moment H :=
  canonical_of_padded canonicalInput12521 canonicalOutput12521 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput12522 : ExponentCode := ⟨4, 4, ![![-1, -3, 1, 3], ![0, 0, 1, -1], ![0, 3, -1, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput12522 : ExponentCode := normalNode9973

theorem canonicalSound12522 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12522.moment H = canonicalOutput12522.moment H :=
  canonical_of_padded canonicalInput12522 canonicalOutput12522 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput12523 : ExponentCode := ⟨4, 4, ![![-1, -3, 1, 3], ![0, 0, 1, -1], ![0, 3, 0, -3], ![1, 0, -2, 1]]⟩

def canonicalOutput12523 : ExponentCode := normalNode11005

theorem canonicalSound12523 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12523.moment H = canonicalOutput12523.moment H :=
  canonical_of_padded canonicalInput12523 canonicalOutput12523 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput12524 : ExponentCode := ⟨4, 4, ![![-1, -3, 1, 3], ![0, 0, 2, -2], ![0, 1, -1, 0], ![1, 2, -2, -1]]⟩

def canonicalOutput12524 : ExponentCode := normalNode9962

theorem canonicalSound12524 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12524.moment H = canonicalOutput12524.moment H :=
  canonical_of_padded canonicalInput12524 canonicalOutput12524 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput12525 : ExponentCode := ⟨4, 4, ![![-1, -3, 1, 3], ![0, 0, 2, -2], ![0, 1, 0, -1], ![1, 2, -3, 0]]⟩

def canonicalOutput12525 : ExponentCode := normalNode6779

theorem canonicalSound12525 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12525.moment H = canonicalOutput12525.moment H :=
  canonical_of_padded canonicalInput12525 canonicalOutput12525 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput12526 : ExponentCode := ⟨4, 4, ![![-1, -3, 1, 3], ![0, 0, 2, -2], ![0, 3, -3, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput12526 : ExponentCode := normalNode6793

theorem canonicalSound12526 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12526.moment H = canonicalOutput12526.moment H :=
  canonical_of_padded canonicalInput12526 canonicalOutput12526 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput12527 : ExponentCode := ⟨4, 4, ![![-1, -3, 1, 3], ![0, 0, 2, -2], ![0, 3, -2, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput12527 : ExponentCode := normalNode10682

theorem canonicalSound12527 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12527.moment H = canonicalOutput12527.moment H :=
  canonical_of_padded canonicalInput12527 canonicalOutput12527 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation152, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput12528 : ExponentCode := ⟨4, 4, ![![-1, -3, 1, 3], ![0, 1, -2, 1], ![0, 1, -1, 0], ![1, 1, 2, -4]]⟩

def canonicalOutput12528 : ExponentCode := normalNode7010

theorem canonicalSound12528 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12528.moment H = canonicalOutput12528.moment H :=
  canonical_of_padded canonicalInput12528 canonicalOutput12528 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput12529 : ExponentCode := ⟨4, 4, ![![-1, -3, 1, 3], ![0, 1, -2, 1], ![0, 1, 0, -1], ![1, 1, 1, -3]]⟩

def canonicalOutput12529 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node965⟩

theorem canonicalSound12529 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12529.moment H = canonicalOutput12529.moment H :=
  canonical_of_padded canonicalInput12529 canonicalOutput12529 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput12530 : ExponentCode := ⟨4, 4, ![![-1, -3, 1, 3], ![0, 1, -2, 1], ![0, 1, 1, -2], ![1, 1, 0, -2]]⟩

def canonicalOutput12530 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1239⟩

theorem canonicalSound12530 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12530.moment H = canonicalOutput12530.moment H :=
  canonical_of_padded canonicalInput12530 canonicalOutput12530 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput12531 : ExponentCode := ⟨4, 4, ![![-1, -3, 1, 3], ![0, 1, -2, 1], ![0, 2, 0, -2], ![1, 0, 1, -2]]⟩

def canonicalOutput12531 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1035⟩

theorem canonicalSound12531 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12531.moment H = canonicalOutput12531.moment H :=
  canonical_of_padded canonicalInput12531 canonicalOutput12531 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput12532 : ExponentCode := ⟨4, 4, ![![-1, -3, 1, 3], ![0, 1, -2, 1], ![0, 2, 2, -4], ![1, 0, -1, 0]]⟩

def canonicalOutput12532 : ExponentCode := normalNode7065

theorem canonicalSound12532 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12532.moment H = canonicalOutput12532.moment H :=
  canonical_of_padded canonicalInput12532 canonicalOutput12532 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput12533 : ExponentCode := ⟨5, 4, ![![-1, -3, 1, 3], ![0, 1, -1, 0], ![-1, 1, 0, 0], ![1, 0, 1, -2], ![1, 1, -1, -1]]⟩

def canonicalOutput12533 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2571⟩

theorem canonicalSound12533 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12533.moment H = canonicalOutput12533.moment H :=
  canonical_of_padded canonicalInput12533 canonicalOutput12533 (by decide) (by decide)
    ⟨false, true, canonicalPermutation75, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput12534 : ExponentCode := ⟨5, 4, ![![-1, -3, 1, 3], ![0, 1, -1, 0], ![-1, 1, 1, -1], ![1, 0, 1, -2], ![1, 1, -2, 0]]⟩

def canonicalOutput12534 : ExponentCode := normalNode6057

theorem canonicalSound12534 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12534.moment H = canonicalOutput12534.moment H :=
  canonical_of_padded canonicalInput12534 canonicalOutput12534 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12535 : ExponentCode := ⟨5, 4, ![![-1, -3, 1, 3], ![0, 1, -1, 0], ![-1, 2, 2, -3], ![1, 0, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput12535 : ExponentCode := normalNode6090

theorem canonicalSound12535 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12535.moment H = canonicalOutput12535.moment H :=
  canonical_of_padded canonicalInput12535 canonicalOutput12535 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12536 : ExponentCode := ⟨4, 4, ![![-1, -3, 1, 3], ![0, 1, -1, 0], ![0, 1, -2, 1], ![1, 1, 2, -4]]⟩

def canonicalOutput12536 : ExponentCode := normalNode7010

theorem canonicalSound12536 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12536.moment H = canonicalOutput12536.moment H :=
  canonical_of_padded canonicalInput12536 canonicalOutput12536 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput12537 : ExponentCode := ⟨5, 4, ![![-1, -3, 1, 3], ![0, 1, -1, 0], ![0, 1, -1, 0], ![0, 0, 2, -2], ![1, 1, -1, -1]]⟩

def canonicalOutput12537 : ExponentCode := normalNode6116

theorem canonicalSound12537 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12537.moment H = canonicalOutput12537.moment H :=
  canonical_of_padded canonicalInput12537 canonicalOutput12537 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12538 : ExponentCode := ⟨5, 4, ![![-1, -3, 1, 3], ![0, 1, -1, 0], ![0, 1, -1, 0], ![1, 0, 1, -2], ![0, 1, 0, -1]]⟩

def canonicalOutput12538 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2604⟩

theorem canonicalSound12538 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12538.moment H = canonicalOutput12538.moment H :=
  canonical_of_padded canonicalInput12538 canonicalOutput12538 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation196, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput12539 : ExponentCode := ⟨4, 4, ![![-1, -3, 1, 3], ![0, 1, -1, 0], ![0, 1, -1, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput12539 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node960⟩

theorem canonicalSound12539 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12539.moment H = canonicalOutput12539.moment H :=
  canonical_of_padded canonicalInput12539 canonicalOutput12539 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput12540 : ExponentCode := ⟨5, 4, ![![-1, -3, 1, 3], ![0, 1, -1, 0], ![0, 1, 0, -1], ![0, 0, 2, -2], ![1, 1, -2, 0]]⟩

def canonicalOutput12540 : ExponentCode := normalNode6117

theorem canonicalSound12540 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12540.moment H = canonicalOutput12540.moment H :=
  canonical_of_padded canonicalInput12540 canonicalOutput12540 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12541 : ExponentCode := ⟨5, 4, ![![-1, -3, 1, 3], ![0, 1, -1, 0], ![0, 1, 0, -1], ![0, 1, 1, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput12541 : ExponentCode := normalNode10977

theorem canonicalSound12541 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12541.moment H = canonicalOutput12541.moment H :=
  canonical_of_padded canonicalInput12541 canonicalOutput12541 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput12542 : ExponentCode := ⟨5, 4, ![![-1, -3, 1, 3], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, 1, -2], ![0, 1, -1, 0]]⟩

def canonicalOutput12542 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2604⟩

theorem canonicalSound12542 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12542.moment H = canonicalOutput12542.moment H :=
  canonical_of_padded canonicalInput12542 canonicalOutput12542 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput12543 : ExponentCode := ⟨4, 4, ![![-1, -3, 1, 3], ![0, 1, -1, 0], ![0, 1, 1, -2], ![1, 1, -1, -1]]⟩

def canonicalOutput12543 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node933⟩

theorem canonicalSound12543 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12543.moment H = canonicalOutput12543.moment H :=
  canonical_of_padded canonicalInput12543 canonicalOutput12543 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes000
import NoFourMUBs.Step2.SOS.NormalizationNodes001
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes018
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes11
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes21
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes22
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes24
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes32
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes33
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes38
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes5
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes6
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes8
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput26432 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -1, 1], ![-1, 1, 0], ![1, 1, -2], ![-3, 2, 1], ![3, -2, -1]]⟩

def canonicalOutput26432 : ExponentCode := normalNode5553

theorem canonicalSound26432 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26432.moment H = canonicalOutput26432.moment H :=
  canonical_of_padded canonicalInput26432 canonicalOutput26432 (by decide) (by decide)
    ⟨false, false, canonicalPermutation279, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput26433 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -1, 1], ![-1, 1, 0], ![2, -2, 0], ![-3, 2, 1], ![2, 1, -3]]⟩

def canonicalOutput26433 : ExponentCode := normalNode199

theorem canonicalSound26433 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26433.moment H = canonicalOutput26433.moment H :=
  canonical_of_padded canonicalInput26433 canonicalOutput26433 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation383, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput26434 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -1, 1], ![0, -2, 2], ![-2, 1, 1], ![2, 0, -2], ![0, 3, -3]]⟩

def canonicalOutput26434 : ExponentCode := normalNode4612

theorem canonicalSound26434 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26434.moment H = canonicalOutput26434.moment H :=
  canonical_of_padded canonicalInput26434 canonicalOutput26434 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26435 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -1, 1], ![0, -2, 2], ![-2, 2, 0], ![0, 2, -2], ![2, 0, -2]]⟩

def canonicalOutput26435 : ExponentCode := normalNode4621

theorem canonicalSound26435 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26435.moment H = canonicalOutput26435.moment H :=
  canonical_of_padded canonicalInput26435 canonicalOutput26435 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation248, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26436 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -1, 1], ![0, -2, 2], ![-1, 2, -1], ![-1, 2, -1], ![2, 0, -2]]⟩

def canonicalOutput26436 : ExponentCode := normalNode4632

theorem canonicalSound26436 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26436.moment H = canonicalOutput26436.moment H :=
  canonical_of_padded canonicalInput26436 canonicalOutput26436 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26437 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -1, 1], ![0, -2, 2], ![0, -1, 1], ![-2, 2, 0], ![2, 3, -5]]⟩

def canonicalOutput26437 : ExponentCode := normalNode339

theorem canonicalSound26437 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26437.moment H = canonicalOutput26437.moment H :=
  canonical_of_padded canonicalInput26437 canonicalOutput26437 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation310, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26438 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -1, 1], ![0, -2, 2], ![0, -1, 1], ![-2, 3, -1], ![2, 2, -4]]⟩

def canonicalOutput26438 : ExponentCode := normalNode1005

theorem canonicalSound26438 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26438.moment H = canonicalOutput26438.moment H :=
  canonical_of_padded canonicalInput26438 canonicalOutput26438 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation310, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26439 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -1, 1], ![0, -2, 2], ![1, -1, 0], ![-2, 1, 1], ![1, 4, -5]]⟩

def canonicalOutput26439 : ExponentCode := normalNode5596

theorem canonicalSound26439 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26439.moment H = canonicalOutput26439.moment H :=
  canonical_of_padded canonicalInput26439 canonicalOutput26439 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation283, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26440 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -1, 1], ![0, -2, 2], ![1, 0, -1], ![2, 0, -2], ![-3, 4, -1]]⟩

def canonicalOutput26440 : ExponentCode := normalNode125

theorem canonicalSound26440 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26440.moment H = canonicalOutput26440.moment H :=
  canonical_of_padded canonicalInput26440 canonicalOutput26440 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26441 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -1, 1], ![0, -1, 1], ![-2, 0, 2], ![2, 0, -2], ![0, 3, -3]]⟩

def canonicalOutput26441 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node2109⟩

theorem canonicalSound26441 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26441.moment H = canonicalOutput26441.moment H :=
  canonical_of_padded canonicalInput26441 canonicalOutput26441 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26442 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -1, 1], ![0, -1, 1], ![-2, 1, 1], ![-1, 3, -2], ![3, -1, -2]]⟩

def canonicalOutput26442 : ExponentCode := normalNode218

theorem canonicalSound26442 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26442.moment H = canonicalOutput26442.moment H :=
  canonical_of_padded canonicalInput26442 canonicalOutput26442 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation309, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26443 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -1, 1], ![0, -1, 1], ![-2, 1, 1], ![0, 2, -2], ![2, 0, -2]]⟩

def canonicalOutput26443 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node2118⟩

theorem canonicalSound26443 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26443.moment H = canonicalOutput26443.moment H :=
  canonical_of_padded canonicalInput26443 canonicalOutput26443 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation395, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26444 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -1, 1], ![0, -1, 1], ![-2, 1, 1], ![2, -1, -1], ![0, 3, -3]]⟩

def canonicalOutput26444 : ExponentCode := normalNode5591

theorem canonicalSound26444 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26444.moment H = canonicalOutput26444.moment H :=
  canonical_of_padded canonicalInput26444 canonicalOutput26444 (by decide) (by decide)
    ⟨false, false, canonicalPermutation142, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26445 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -1, 1], ![0, -1, 1], ![-2, 1, 1], ![2, 0, -2], ![0, 2, -2]]⟩

def canonicalOutput26445 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node2118⟩

theorem canonicalSound26445 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26445.moment H = canonicalOutput26445.moment H :=
  canonical_of_padded canonicalInput26445 canonicalOutput26445 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26446 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -1, 1], ![0, -1, 1], ![-2, 2, 0], ![0, 1, -1], ![2, 0, -2]]⟩

def canonicalOutput26446 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node2135⟩

theorem canonicalSound26446 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26446.moment H = canonicalOutput26446.moment H :=
  canonical_of_padded canonicalInput26446 canonicalOutput26446 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation248, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26447 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -1, 1], ![0, -1, 1], ![-2, 2, 0], ![0, 2, -2], ![2, -1, -1]]⟩

def canonicalOutput26447 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node2118⟩

theorem canonicalSound26447 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26447.moment H = canonicalOutput26447.moment H :=
  canonical_of_padded canonicalInput26447 canonicalOutput26447 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation248, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26448 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -1, 1], ![0, -1, 1], ![-1, -1, 2], ![-2, 2, 0], ![3, 2, -5]]⟩

def canonicalOutput26448 : ExponentCode := normalNode52

theorem canonicalSound26448 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26448.moment H = canonicalOutput26448.moment H :=
  canonical_of_padded canonicalInput26448 canonicalOutput26448 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26449 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -1, 1], ![0, -1, 1], ![-1, -1, 2], ![-2, 3, -1], ![3, 1, -4]]⟩

def canonicalOutput26449 : ExponentCode := normalNode124

theorem canonicalSound26449 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26449.moment H = canonicalOutput26449.moment H :=
  canonical_of_padded canonicalInput26449 canonicalOutput26449 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26450 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -1, 1], ![0, -1, 1], ![-1, -1, 2], ![3, 0, -3], ![-2, 4, -2]]⟩

def canonicalOutput26450 : ExponentCode := normalNode167

theorem canonicalSound26450 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26450.moment H = canonicalOutput26450.moment H :=
  canonical_of_padded canonicalInput26450 canonicalOutput26450 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26451 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -1, 1], ![0, -1, 1], ![-1, 1, 0], ![-3, 3, 0], ![4, -1, -3]]⟩

def canonicalOutput26451 : ExponentCode := normalNode131

theorem canonicalSound26451 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26451.moment H = canonicalOutput26451.moment H :=
  canonical_of_padded canonicalInput26451 canonicalOutput26451 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation389, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput26452 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -1, 1], ![0, -1, 1], ![-1, 1, 0], ![-1, 2, -1], ![2, 0, -2]]⟩

def canonicalOutput26452 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node2142⟩

theorem canonicalSound26452 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26452.moment H = canonicalOutput26452.moment H :=
  canonical_of_padded canonicalInput26452 canonicalOutput26452 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation309, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26453 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -1, 1], ![0, -1, 1], ![-1, 2, -1], ![-1, 1, 0], ![2, 0, -2]]⟩

def canonicalOutput26453 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node2142⟩

theorem canonicalSound26453 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26453.moment H = canonicalOutput26453.moment H :=
  canonical_of_padded canonicalInput26453 canonicalOutput26453 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26454 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -1, 1], ![0, -1, 1], ![-1, 2, -1], ![-1, 2, -1], ![2, -1, -1]]⟩

def canonicalOutput26454 : ExponentCode := normalNode5603

theorem canonicalSound26454 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26454.moment H = canonicalOutput26454.moment H :=
  canonical_of_padded canonicalInput26454 canonicalOutput26454 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26455 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -1, 1], ![0, -1, 1], ![0, -2, 2], ![-2, 2, 0], ![2, 3, -5]]⟩

def canonicalOutput26455 : ExponentCode := normalNode339

theorem canonicalSound26455 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26455.moment H = canonicalOutput26455.moment H :=
  canonical_of_padded canonicalInput26455 canonicalOutput26455 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26456 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -1, 1], ![0, -1, 1], ![0, -2, 2], ![-2, 3, -1], ![2, 2, -4]]⟩

def canonicalOutput26456 : ExponentCode := normalNode1005

theorem canonicalSound26456 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26456.moment H = canonicalOutput26456.moment H :=
  canonical_of_padded canonicalInput26456 canonicalOutput26456 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26457 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -1, 1], ![0, -1, 1], ![0, -1, 1], ![-3, 2, 1], ![3, 2, -5]]⟩

def canonicalOutput26457 : ExponentCode := normalNode51

theorem canonicalSound26457 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26457.moment H = canonicalOutput26457.moment H :=
  canonical_of_padded canonicalInput26457 canonicalOutput26457 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26458 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -1, 1], ![0, -1, 1], ![0, -1, 1], ![-3, 3, 0], ![3, 1, -4]]⟩

def canonicalOutput26458 : ExponentCode := normalNode123

theorem canonicalSound26458 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26458.moment H = canonicalOutput26458.moment H :=
  canonical_of_padded canonicalInput26458 canonicalOutput26458 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26459 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -1, 1], ![0, -1, 1], ![0, -1, 1], ![-2, 1, 1], ![2, 3, -5]]⟩

def canonicalOutput26459 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node1436⟩

theorem canonicalSound26459 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26459.moment H = canonicalOutput26459.moment H :=
  canonical_of_padded canonicalInput26459 canonicalOutput26459 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26460 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -1, 1], ![0, -1, 1], ![0, -1, 1], ![-2, 2, 0], ![2, 2, -4]]⟩

def canonicalOutput26460 : ExponentCode := normalNode1004

theorem canonicalSound26460 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26460.moment H = canonicalOutput26460.moment H :=
  canonical_of_padded canonicalInput26460 canonicalOutput26460 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26461 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -1, 1], ![0, -1, 1], ![0, -1, 1], ![2, 0, -2], ![-2, 4, -2]]⟩

def canonicalOutput26461 : ExponentCode := normalNode1004

theorem canonicalSound26461 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26461.moment H = canonicalOutput26461.moment H :=
  canonical_of_padded canonicalInput26461 canonicalOutput26461 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26462 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -1, 1], ![0, -1, 1], ![0, -1, 1], ![3, 0, -3], ![-3, 4, -1]]⟩

def canonicalOutput26462 : ExponentCode := normalNode123

theorem canonicalSound26462 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26462.moment H = canonicalOutput26462.moment H :=
  canonical_of_padded canonicalInput26462 canonicalOutput26462 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26463 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -1, 1], ![0, -1, 1], ![0, 1, -1], ![-4, 3, 1], ![4, -1, -3]]⟩

def canonicalOutput26463 : ExponentCode := normalNode0

theorem canonicalSound26463 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26463.moment H = canonicalOutput26463.moment H :=
  canonical_of_padded canonicalInput26463 canonicalOutput26463 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation288, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26464 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -1, 1], ![0, -1, 1], ![0, 1, -1], ![-3, 3, 0], ![3, -1, -2]]⟩

def canonicalOutput26464 : ExponentCode := normalNode160

theorem canonicalSound26464 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26464.moment H = canonicalOutput26464.moment H :=
  canonical_of_padded canonicalInput26464 canonicalOutput26464 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation288, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26465 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -1, 1], ![0, -1, 1], ![1, -2, 1], ![-2, 1, 1], ![1, 4, -5]]⟩

def canonicalOutput26465 : ExponentCode := normalNode5602

theorem canonicalSound26465 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26465.moment H = canonicalOutput26465.moment H :=
  canonical_of_padded canonicalInput26465 canonicalOutput26465 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26466 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -1, 1], ![0, -1, 1], ![1, -1, 0], ![-4, 3, 1], ![3, 1, -4]]⟩

def canonicalOutput26466 : ExponentCode := normalNode3

theorem canonicalSound26466 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26466.moment H = canonicalOutput26466.moment H :=
  canonical_of_padded canonicalInput26466 canonicalOutput26466 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation373, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput26467 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -1, 1], ![0, -1, 1], ![1, -1, 0], ![-3, 1, 2], ![2, 3, -5]]⟩

def canonicalOutput26467 : ExponentCode := normalNode203

theorem canonicalSound26467 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26467.moment H = canonicalOutput26467.moment H :=
  canonical_of_padded canonicalInput26467 canonicalOutput26467 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26468 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -1, 1], ![0, -1, 1], ![1, -1, 0], ![-3, 2, 1], ![2, 2, -4]]⟩

def canonicalOutput26468 : ExponentCode := normalNode219

theorem canonicalSound26468 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26468.moment H = canonicalOutput26468.moment H :=
  canonical_of_padded canonicalInput26468 canonicalOutput26468 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26469 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -1, 1], ![0, -1, 1], ![1, -1, 0], ![-2, 0, 2], ![1, 4, -5]]⟩

def canonicalOutput26469 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node2123⟩

theorem canonicalSound26469 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26469.moment H = canonicalOutput26469.moment H :=
  canonical_of_padded canonicalInput26469 canonicalOutput26469 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26470 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -1, 1], ![0, -1, 1], ![1, -1, 0], ![-1, -1, 2], ![0, 5, -5]]⟩

def canonicalOutput26470 : ExponentCode := normalNode9527

theorem canonicalSound26470 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26470.moment H = canonicalOutput26470.moment H :=
  canonical_of_padded canonicalInput26470 canonicalOutput26470 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation259, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26471 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -1, 1], ![0, -1, 1], ![1, -1, 0], ![2, 0, -2], ![-3, 4, -1]]⟩

def canonicalOutput26471 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node1388⟩

theorem canonicalSound26471 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26471.moment H = canonicalOutput26471.moment H :=
  canonical_of_padded canonicalInput26471 canonicalOutput26471 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26472 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -1, 1], ![0, -1, 1], ![1, 0, -1], ![2, 0, -2], ![-3, 3, 0]]⟩

def canonicalOutput26472 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node1410⟩

theorem canonicalSound26472 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26472.moment H = canonicalOutput26472.moment H :=
  canonical_of_padded canonicalInput26472 canonicalOutput26472 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26473 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -1, 1], ![0, 0, 0], ![0, 1, -1], ![-3, 2, 1], ![3, -1, -2]]⟩

def canonicalOutput26473 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node364⟩

theorem canonicalSound26473 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26473.moment H = canonicalOutput26473.moment H :=
  canonical_of_padded canonicalInput26473 canonicalOutput26473 (by decide) (by decide)
    ⟨false, false, canonicalPermutation324, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26474 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -1, 1], ![0, 0, 0], ![0, 1, -1], ![-2, -1, 3], ![2, 2, -4]]⟩

def canonicalOutput26474 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node429⟩

theorem canonicalSound26474 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26474.moment H = canonicalOutput26474.moment H :=
  canonical_of_padded canonicalInput26474 canonicalOutput26474 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation239, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26475 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -1, 1], ![0, 0, 0], ![1, 0, -1], ![-2, -1, 3], ![1, 3, -4]]⟩

def canonicalOutput26475 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node553⟩

theorem canonicalSound26475 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26475.moment H = canonicalOutput26475.moment H :=
  canonical_of_padded canonicalInput26475 canonicalOutput26475 (by decide) (by decide)
    ⟨false, false, canonicalPermutation252, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26476 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -1, 1], ![0, 1, -1], ![-1, 1, 0], ![-3, 2, 1], ![4, -2, -2]]⟩

def canonicalOutput26476 : ExponentCode := normalNode968

theorem canonicalSound26476 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26476.moment H = canonicalOutput26476.moment H :=
  canonical_of_padded canonicalInput26476 canonicalOutput26476 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation363, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput26477 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -1, 1], ![0, 1, -1], ![-1, 1, 0], ![-2, -1, 3], ![3, 1, -4]]⟩

def canonicalOutput26477 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node1383⟩

theorem canonicalSound26477 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26477.moment H = canonicalOutput26477.moment H :=
  canonical_of_padded canonicalInput26477 canonicalOutput26477 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation355, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26478 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -1, 1], ![0, 1, -1], ![0, 0, 0], ![-3, 2, 1], ![3, -1, -2]]⟩

def canonicalOutput26478 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node364⟩

theorem canonicalSound26478 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26478.moment H = canonicalOutput26478.moment H :=
  canonical_of_padded canonicalInput26478 canonicalOutput26478 (by decide) (by decide)
    ⟨false, false, canonicalPermutation280, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26479 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -1, 1], ![0, 1, -1], ![0, 0, 0], ![-2, -1, 3], ![2, 2, -4]]⟩

def canonicalOutput26479 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node429⟩

theorem canonicalSound26479 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26479.moment H = canonicalOutput26479.moment H :=
  canonical_of_padded canonicalInput26479 canonicalOutput26479 (by decide) (by decide)
    ⟨false, true, canonicalPermutation279, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26480 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -1, 1], ![0, 1, -1], ![0, 0, 0], ![-1, -2, 3], ![1, 3, -4]]⟩

def canonicalOutput26480 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node746⟩

theorem canonicalSound26480 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26480.moment H = canonicalOutput26480.moment H :=
  canonical_of_padded canonicalInput26480 canonicalOutput26480 (by decide) (by decide)
    ⟨false, true, canonicalPermutation279, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26481 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -1, 1], ![0, 1, -1], ![0, 0, 0], ![1, -3, 2], ![-1, 4, -3]]⟩

def canonicalOutput26481 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node746⟩

theorem canonicalSound26481 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26481.moment H = canonicalOutput26481.moment H :=
  canonical_of_padded canonicalInput26481 canonicalOutput26481 (by decide) (by decide)
    ⟨false, false, canonicalPermutation279, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26482 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -1, 1], ![0, 1, -1], ![0, 1, -1], ![-4, 2, 2], ![4, -2, -2]]⟩

def canonicalOutput26482 : ExponentCode := normalNode14

theorem canonicalSound26482 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26482.moment H = canonicalOutput26482.moment H :=
  canonical_of_padded canonicalInput26482 canonicalOutput26482 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26483 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -1, 1], ![0, 1, -1], ![0, 1, -1], ![-3, -1, 4], ![3, 1, -4]]⟩

def canonicalOutput26483 : ExponentCode := normalNode108

theorem canonicalSound26483 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26483.moment H = canonicalOutput26483.moment H :=
  canonical_of_padded canonicalInput26483 canonicalOutput26483 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26484 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -1, 1], ![0, 1, -1], ![0, 1, -1], ![-3, 2, 1], ![3, -2, -1]]⟩

def canonicalOutput26484 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node1421⟩

theorem canonicalSound26484 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26484.moment H = canonicalOutput26484.moment H :=
  canonical_of_padded canonicalInput26484 canonicalOutput26484 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation286, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26485 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -1, 1], ![0, 1, -1], ![0, 1, -1], ![-2, -2, 4], ![2, 2, -4]]⟩

def canonicalOutput26485 : ExponentCode := normalNode993

theorem canonicalSound26485 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26485.moment H = canonicalOutput26485.moment H :=
  canonical_of_padded canonicalInput26485 canonicalOutput26485 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26486 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -1, 1], ![0, 1, -1], ![1, -2, 1], ![-3, 2, 1], ![2, 1, -3]]⟩

def canonicalOutput26486 : ExponentCode := normalNode210

theorem canonicalSound26486 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26486.moment H = canonicalOutput26486.moment H :=
  canonical_of_padded canonicalInput26486 canonicalOutput26486 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation283, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26487 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -1, 1], ![0, 1, -1], ![1, 0, -1], ![-3, -1, 4], ![2, 2, -4]]⟩

def canonicalOutput26487 : ExponentCode := normalNode109

theorem canonicalSound26487 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26487.moment H = canonicalOutput26487.moment H :=
  canonical_of_padded canonicalInput26487 canonicalOutput26487 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26488 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -1, 1], ![0, 1, -1], ![1, 0, -1], ![-2, -2, 4], ![1, 3, -4]]⟩

def canonicalOutput26488 : ExponentCode := normalNode995

theorem canonicalSound26488 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26488.moment H = canonicalOutput26488.moment H :=
  canonical_of_padded canonicalInput26488 canonicalOutput26488 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26489 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -1, 1], ![0, 1, -1], ![1, 0, -1], ![-1, -2, 3], ![0, 3, -3]]⟩

def canonicalOutput26489 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node2477⟩

theorem canonicalSound26489 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26489.moment H = canonicalOutput26489.moment H :=
  canonical_of_padded canonicalInput26489 canonicalOutput26489 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation259, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26490 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -1, 1], ![0, 1, -1], ![1, 0, -1], ![0, -3, 3], ![-1, 4, -3]]⟩

def canonicalOutput26490 : ExponentCode := normalNode6286

theorem canonicalSound26490 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26490.moment H = canonicalOutput26490.moment H :=
  canonical_of_padded canonicalInput26490 canonicalOutput26490 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation356, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26491 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -1, 1], ![0, 1, -1], ![1, 0, -1], ![1, -3, 2], ![-2, 4, -2]]⟩

def canonicalOutput26491 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node1537⟩

theorem canonicalSound26491 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26491.moment H = canonicalOutput26491.moment H :=
  canonical_of_padded canonicalInput26491 canonicalOutput26491 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation355, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26492 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -1, 1], ![0, 1, -1], ![1, 1, -2], ![-4, 2, 2], ![3, -2, -1]]⟩

def canonicalOutput26492 : ExponentCode := normalNode15

theorem canonicalSound26492 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26492.moment H = canonicalOutput26492.moment H :=
  canonical_of_padded canonicalInput26492 canonicalOutput26492 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26493 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -1, 1], ![0, 1, -1], ![1, 1, -2], ![-3, 2, 1], ![2, -2, 0]]⟩

def canonicalOutput26493 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node1426⟩

theorem canonicalSound26493 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26493.moment H = canonicalOutput26493.moment H :=
  canonical_of_padded canonicalInput26493 canonicalOutput26493 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation283, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26494 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -1, 1], ![0, 1, -1], ![2, -2, 0], ![-4, 2, 2], ![2, 1, -3]]⟩

def canonicalOutput26494 : ExponentCode := normalNode16

theorem canonicalSound26494 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26494.moment H = canonicalOutput26494.moment H :=
  canonical_of_padded canonicalInput26494 canonicalOutput26494 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26495 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -1, 1], ![0, 1, -1], ![2, -2, 0], ![-3, 2, 1], ![1, 1, -2]]⟩

def canonicalOutput26495 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node1426⟩

theorem canonicalSound26495 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26495.moment H = canonicalOutput26495.moment H :=
  canonical_of_padded canonicalInput26495 canonicalOutput26495 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation284, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

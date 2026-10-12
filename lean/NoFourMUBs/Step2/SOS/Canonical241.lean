import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes10
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes21
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes24
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes39
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes40
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes42
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes5
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput15424 : ExponentCode := ⟨3, 4, ![![-1, -1, -1, 3], ![0, 1, -3, 2], ![1, 0, 4, -5]]⟩

def canonicalOutput15424 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node77⟩

theorem canonicalSound15424 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15424.moment H = canonicalOutput15424.moment H :=
  canonical_of_padded canonicalInput15424 canonicalOutput15424 (by decide) (by decide)
    ⟨true, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15425 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![0, 1, -2, 1], ![0, -1, 2, -1], ![1, 1, 1, -3]]⟩

def canonicalOutput15425 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node941⟩

theorem canonicalSound15425 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15425.moment H = canonicalOutput15425.moment H :=
  canonical_of_padded canonicalInput15425 canonicalOutput15425 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15426 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![0, 1, -2, 1], ![0, 0, 0, 0], ![1, 0, 3, -4]]⟩

def canonicalOutput15426 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node173⟩

theorem canonicalSound15426 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15426.moment H = canonicalOutput15426.moment H :=
  canonical_of_padded canonicalInput15426 canonicalOutput15426 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput15427 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, 1, -2, 1], ![0, 0, 3, -3], ![0, 1, 0, -1], ![1, -1, 0, 0]]⟩

def canonicalOutput15427 : ExponentCode := normalNode7978

theorem canonicalSound15427 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15427.moment H = canonicalOutput15427.moment H :=
  canonical_of_padded canonicalInput15427 canonicalOutput15427 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15428 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![0, 1, -2, 1], ![0, 0, 3, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput15428 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node977⟩

theorem canonicalSound15428 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15428.moment H = canonicalOutput15428.moment H :=
  canonical_of_padded canonicalInput15428 canonicalOutput15428 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15429 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![0, 1, -2, 1], ![0, 1, -1, 0], ![1, -1, 4, -4]]⟩

def canonicalOutput15429 : ExponentCode := normalNode6485

theorem canonicalSound15429 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15429.moment H = canonicalOutput15429.moment H :=
  canonical_of_padded canonicalInput15429 canonicalOutput15429 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput15430 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![0, 1, -2, 1], ![0, 2, 0, -2], ![1, -2, 3, -2]]⟩

def canonicalOutput15430 : ExponentCode := normalNode6220

theorem canonicalSound15430 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15430.moment H = canonicalOutput15430.moment H :=
  canonical_of_padded canonicalInput15430 canonicalOutput15430 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput15431 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![0, 1, -2, 1], ![1, -1, 1, -1], ![0, 1, 2, -3]]⟩

def canonicalOutput15431 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node984⟩

theorem canonicalSound15431 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15431.moment H = canonicalOutput15431.moment H :=
  canonical_of_padded canonicalInput15431 canonicalOutput15431 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15432 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![0, 1, -2, 1], ![1, -1, 3, -3], ![0, 1, 0, -1]]⟩

def canonicalOutput15432 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node982⟩

theorem canonicalSound15432 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15432.moment H = canonicalOutput15432.moment H :=
  canonical_of_padded canonicalInput15432 canonicalOutput15432 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15433 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, 1, -1, 0], ![-1, 1, -1, 1], ![1, -1, 0, 0], ![1, 0, 3, -4]]⟩

def canonicalOutput15433 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2520⟩

theorem canonicalSound15433 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15433.moment H = canonicalOutput15433.moment H :=
  canonical_of_padded canonicalInput15433 canonicalOutput15433 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15434 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, 1, -1, 0], ![-1, 1, 1, -1], ![1, -1, 2, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput15434 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2527⟩

theorem canonicalSound15434 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15434.moment H = canonicalOutput15434.moment H :=
  canonical_of_padded canonicalInput15434 canonicalOutput15434 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15435 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, 1, -1, 0], ![-1, 1, 2, -2], ![1, -1, 1, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput15435 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2527⟩

theorem canonicalSound15435 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15435.moment H = canonicalOutput15435.moment H :=
  canonical_of_padded canonicalInput15435 canonicalOutput15435 (by decide) (by decide)
    ⟨false, false, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15436 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, 1, -1, 0], ![-1, 1, 3, -3], ![1, -1, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput15436 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2525⟩

theorem canonicalSound15436 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15436.moment H = canonicalOutput15436.moment H :=
  canonical_of_padded canonicalInput15436 canonicalOutput15436 (by decide) (by decide)
    ⟨false, false, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15437 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![0, 1, -1, 0], ![0, -1, 1, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput15437 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1350⟩

theorem canonicalSound15437 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15437.moment H = canonicalOutput15437.moment H :=
  canonical_of_padded canonicalInput15437 canonicalOutput15437 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput15438 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![0, 1, -1, 0], ![0, -1, 3, -2], ![1, 1, -1, -1]]⟩

def canonicalOutput15438 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node949⟩

theorem canonicalSound15438 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15438.moment H = canonicalOutput15438.moment H :=
  canonical_of_padded canonicalInput15438 canonicalOutput15438 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15439 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![0, 1, -1, 0], ![0, 0, -1, 1], ![1, 0, 3, -4]]⟩

def canonicalOutput15439 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node962⟩

theorem canonicalSound15439 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15439.moment H = canonicalOutput15439.moment H :=
  canonical_of_padded canonicalInput15439 canonicalOutput15439 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15440 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![0, 1, -1, 0], ![0, 0, 4, -4], ![1, 0, -2, 1]]⟩

def canonicalOutput15440 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node981⟩

theorem canonicalSound15440 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15440.moment H = canonicalOutput15440.moment H :=
  canonical_of_padded canonicalInput15440 canonicalOutput15440 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15441 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![0, 1, -1, 0], ![0, 1, -2, 1], ![1, -1, 4, -4]]⟩

def canonicalOutput15441 : ExponentCode := normalNode6485

theorem canonicalSound15441 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15441.moment H = canonicalOutput15441.moment H :=
  canonical_of_padded canonicalInput15441 canonicalOutput15441 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput15442 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, 1, -1, 0], ![0, 1, -1, 0], ![0, -1, 0, 1], ![1, 0, 3, -4]]⟩

def canonicalOutput15442 : ExponentCode := normalNode7871

theorem canonicalSound15442 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15442.moment H = canonicalOutput15442.moment H :=
  canonical_of_padded canonicalInput15442 canonicalOutput15442 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15443 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, 1, -1, 0], ![0, 1, -1, 0], ![1, -1, 0, 0], ![0, 0, 3, -3]]⟩

def canonicalOutput15443 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2560⟩

theorem canonicalSound15443 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15443.moment H = canonicalOutput15443.moment H :=
  canonical_of_padded canonicalInput15443 canonicalOutput15443 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15444 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, 1, -1, 0], ![0, 1, 0, -1], ![0, -1, 3, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput15444 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2545⟩

theorem canonicalSound15444 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15444.moment H = canonicalOutput15444.moment H :=
  canonical_of_padded canonicalInput15444 canonicalOutput15444 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15445 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, 2, -2], ![0, 0, 0, 0]]⟩

def canonicalOutput15445 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1116⟩

theorem canonicalSound15445 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15445.moment H = canonicalOutput15445.moment H :=
  canonical_of_padded canonicalInput15445 canonicalOutput15445 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, canonicalPermutation33⟩ (by decide +kernel) hH

def canonicalInput15446 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, 1, -1, 0], ![0, 1, 1, -2], ![0, -1, 2, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput15446 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2541⟩

theorem canonicalSound15446 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15446.moment H = canonicalOutput15446.moment H :=
  canonical_of_padded canonicalInput15446 canonicalOutput15446 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15447 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, 1, -1, 0], ![0, 1, 1, -2], ![1, -1, 1, -1], ![0, 0, 0, 0]]⟩

def canonicalOutput15447 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node936⟩

theorem canonicalSound15447 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15447.moment H = canonicalOutput15447.moment H :=
  canonical_of_padded canonicalInput15447 canonicalOutput15447 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput15448 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, 1, -1, 0], ![0, 1, 3, -4], ![0, -1, 0, 1], ![1, 0, -1, 0]]⟩

def canonicalOutput15448 : ExponentCode := normalNode7873

theorem canonicalSound15448 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15448.moment H = canonicalOutput15448.moment H :=
  canonical_of_padded canonicalInput15448 canonicalOutput15448 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15449 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, 1, -1, 0], ![0, 1, 3, -4], ![1, -1, 0, 0], ![0, 0, -1, 1]]⟩

def canonicalOutput15449 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2549⟩

theorem canonicalSound15449 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15449.moment H = canonicalOutput15449.moment H :=
  canonical_of_padded canonicalInput15449 canonicalOutput15449 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15450 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![0, 1, -1, 0], ![1, -1, 0, 0], ![0, 1, 2, -3]]⟩

def canonicalOutput15450 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1268⟩

theorem canonicalSound15450 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15450.moment H = canonicalOutput15450.moment H :=
  canonical_of_padded canonicalInput15450 canonicalOutput15450 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput15451 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![0, 1, -1, 0], ![1, -1, 2, -2], ![0, 1, 0, -1]]⟩

def canonicalOutput15451 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1116⟩

theorem canonicalSound15451 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15451.moment H = canonicalOutput15451.moment H :=
  canonical_of_padded canonicalInput15451 canonicalOutput15451 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput15452 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![0, 1, -1, 0], ![1, -1, 4, -4], ![0, 1, -2, 1]]⟩

def canonicalOutput15452 : ExponentCode := normalNode6485

theorem canonicalSound15452 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15452.moment H = canonicalOutput15452.moment H :=
  canonical_of_padded canonicalInput15452 canonicalOutput15452 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput15453 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, 1, 0, -1], ![-1, 1, 1, -1], ![1, -1, 1, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput15453 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2512⟩

theorem canonicalSound15453 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15453.moment H = canonicalOutput15453.moment H :=
  canonical_of_padded canonicalInput15453 canonicalOutput15453 (by decide) (by decide)
    ⟨false, false, canonicalPermutation0, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput15454 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![0, 1, 0, -1], ![0, 1, -2, 1], ![1, -1, 3, -3]]⟩

def canonicalOutput15454 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node982⟩

theorem canonicalSound15454 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15454.moment H = canonicalOutput15454.moment H :=
  canonical_of_padded canonicalInput15454 canonicalOutput15454 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15455 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, 1, 0, -1], ![0, 1, 0, -1], ![0, -1, 2, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput15455 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2542⟩

theorem canonicalSound15455 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15455.moment H = canonicalOutput15455.moment H :=
  canonical_of_padded canonicalInput15455 canonicalOutput15455 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15456 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -1, 1, -1], ![0, 0, 0, 0]]⟩

def canonicalOutput15456 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node966⟩

theorem canonicalSound15456 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15456.moment H = canonicalOutput15456.moment H :=
  canonical_of_padded canonicalInput15456 canonicalOutput15456 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput15457 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![0, 1, 1, -2], ![0, -1, 1, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput15457 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node936⟩

theorem canonicalSound15457 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15457.moment H = canonicalOutput15457.moment H :=
  canonical_of_padded canonicalInput15457 canonicalOutput15457 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15458 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![0, 1, 1, -2], ![0, 0, 1, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput15458 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node969⟩

theorem canonicalSound15458 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15458.moment H = canonicalOutput15458.moment H :=
  canonical_of_padded canonicalInput15458 canonicalOutput15458 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15459 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![0, 1, 1, -2], ![0, 1, -2, 1], ![1, -1, 2, -2]]⟩

def canonicalOutput15459 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node983⟩

theorem canonicalSound15459 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15459.moment H = canonicalOutput15459.moment H :=
  canonical_of_padded canonicalInput15459 canonicalOutput15459 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15460 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![0, 1, 1, -2], ![0, 2, -2, 0], ![1, -2, 2, -1]]⟩

def canonicalOutput15460 : ExponentCode := normalNode6951

theorem canonicalSound15460 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15460.moment H = canonicalOutput15460.moment H :=
  canonical_of_padded canonicalInput15460 canonicalOutput15460 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput15461 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![0, 1, 1, -2], ![1, -1, 1, -1], ![0, 1, -1, 0]]⟩

def canonicalOutput15461 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node936⟩

theorem canonicalSound15461 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15461.moment H = canonicalOutput15461.moment H :=
  canonical_of_padded canonicalInput15461 canonicalOutput15461 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput15462 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![0, 1, 2, -3], ![0, -1, 2, -1], ![1, 1, -3, 1]]⟩

def canonicalOutput15462 : ExponentCode := normalNode7904

theorem canonicalSound15462 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15462.moment H = canonicalOutput15462.moment H :=
  canonical_of_padded canonicalInput15462 canonicalOutput15462 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15463 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![0, 1, 2, -3], ![0, 1, -2, 1], ![1, -1, 1, -1]]⟩

def canonicalOutput15463 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node984⟩

theorem canonicalSound15463 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15463.moment H = canonicalOutput15463.moment H :=
  canonical_of_padded canonicalInput15463 canonicalOutput15463 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15464 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![0, 1, 2, -3], ![0, 1, 0, -1], ![1, -1, -1, 1]]⟩

def canonicalOutput15464 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node972⟩

theorem canonicalSound15464 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15464.moment H = canonicalOutput15464.moment H :=
  canonical_of_padded canonicalInput15464 canonicalOutput15464 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput15465 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![0, 1, 2, -3], ![1, -1, 1, -1], ![0, 1, -2, 1]]⟩

def canonicalOutput15465 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node984⟩

theorem canonicalSound15465 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15465.moment H = canonicalOutput15465.moment H :=
  canonical_of_padded canonicalInput15465 canonicalOutput15465 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15466 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![0, 1, 3, -4], ![0, -1, 0, 1], ![1, 1, -2, 0]]⟩

def canonicalOutput15466 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node934⟩

theorem canonicalSound15466 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15466.moment H = canonicalOutput15466.moment H :=
  canonical_of_padded canonicalInput15466 canonicalOutput15466 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15467 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![0, 1, 3, -4], ![0, -1, 1, 0], ![1, 1, -3, 1]]⟩

def canonicalOutput15467 : ExponentCode := normalNode7893

theorem canonicalSound15467 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15467.moment H = canonicalOutput15467.moment H :=
  canonical_of_padded canonicalInput15467 canonicalOutput15467 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15468 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![0, 1, 3, -4], ![0, 1, -2, 1], ![1, -1, 0, 0]]⟩

def canonicalOutput15468 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node985⟩

theorem canonicalSound15468 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15468.moment H = canonicalOutput15468.moment H :=
  canonical_of_padded canonicalInput15468 canonicalOutput15468 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15469 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![0, 1, 3, -4], ![0, 1, -1, 0], ![1, -1, -1, 1]]⟩

def canonicalOutput15469 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node986⟩

theorem canonicalSound15469 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15469.moment H = canonicalOutput15469.moment H :=
  canonical_of_padded canonicalInput15469 canonicalOutput15469 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15470 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![0, 1, 3, -4], ![0, 2, -2, 0], ![1, -2, 0, 1]]⟩

def canonicalOutput15470 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node929⟩

theorem canonicalSound15470 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15470.moment H = canonicalOutput15470.moment H :=
  canonical_of_padded canonicalInput15470 canonicalOutput15470 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput15471 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![0, 1, 3, -4], ![1, -1, -1, 1], ![0, 1, -1, 0]]⟩

def canonicalOutput15471 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node986⟩

theorem canonicalSound15471 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15471.moment H = canonicalOutput15471.moment H :=
  canonical_of_padded canonicalInput15471 canonicalOutput15471 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15472 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![0, 1, 3, -4], ![1, -1, 0, 0], ![0, 1, -2, 1]]⟩

def canonicalOutput15472 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node985⟩

theorem canonicalSound15472 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15472.moment H = canonicalOutput15472.moment H :=
  canonical_of_padded canonicalInput15472 canonicalOutput15472 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15473 : ExponentCode := ⟨3, 4, ![![-1, -1, -1, 3], ![0, 2, -3, 1], ![1, -1, 4, -4]]⟩

def canonicalOutput15473 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node80⟩

theorem canonicalSound15473 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15473.moment H = canonicalOutput15473.moment H :=
  canonical_of_padded canonicalInput15473 canonicalOutput15473 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput15474 : ExponentCode := ⟨3, 4, ![![-1, -1, -1, 3], ![0, 2, 3, -5], ![1, -1, -2, 2]]⟩

def canonicalOutput15474 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node78⟩

theorem canonicalSound15474 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15474.moment H = canonicalOutput15474.moment H :=
  canonical_of_padded canonicalInput15474 canonicalOutput15474 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput15475 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![1, -2, 1, 0], ![0, 1, 1, -2], ![0, 2, -1, -1]]⟩

def canonicalOutput15475 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node943⟩

theorem canonicalSound15475 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15475.moment H = canonicalOutput15475.moment H :=
  canonical_of_padded canonicalInput15475 canonicalOutput15475 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput15476 : ExponentCode := ⟨3, 4, ![![-1, -1, -1, 3], ![1, -2, 2, -1], ![0, 3, -1, -2]]⟩

def canonicalOutput15476 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node109⟩

theorem canonicalSound15476 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15476.moment H = canonicalOutput15476.moment H :=
  canonical_of_padded canonicalInput15476 canonicalOutput15476 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput15477 : ExponentCode := ⟨3, 4, ![![-1, -1, -1, 3], ![1, -2, 3, -2], ![0, 3, -2, -1]]⟩

def canonicalOutput15477 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node108⟩

theorem canonicalSound15477 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15477.moment H = canonicalOutput15477.moment H :=
  canonical_of_padded canonicalInput15477 canonicalOutput15477 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput15478 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![1, -1, -2, 2], ![0, 0, 3, -3], ![0, 2, 0, -2]]⟩

def canonicalOutput15478 : ExponentCode := normalNode7981

theorem canonicalSound15478 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15478.moment H = canonicalOutput15478.moment H :=
  canonical_of_padded canonicalInput15478 canonicalOutput15478 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15479 : ExponentCode := ⟨3, 4, ![![-1, -1, -1, 3], ![1, -1, -2, 2], ![0, 2, 3, -5]]⟩

def canonicalOutput15479 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node78⟩

theorem canonicalSound15479 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15479.moment H = canonicalOutput15479.moment H :=
  canonical_of_padded canonicalInput15479 canonicalOutput15479 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15480 : ExponentCode := ⟨3, 4, ![![-1, -1, -1, 3], ![1, -1, -1, 1], ![0, 2, 2, -4]]⟩

def canonicalOutput15480 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node244⟩

theorem canonicalSound15480 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15480.moment H = canonicalOutput15480.moment H :=
  canonical_of_padded canonicalInput15480 canonicalOutput15480 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput15481 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![1, -1, 2, -2], ![0, 1, -2, 1], ![0, 1, 1, -2]]⟩

def canonicalOutput15481 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node983⟩

theorem canonicalSound15481 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15481.moment H = canonicalOutput15481.moment H :=
  canonical_of_padded canonicalInput15481 canonicalOutput15481 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15482 : ExponentCode := ⟨3, 4, ![![-1, -1, -1, 3], ![1, -1, 4, -4], ![0, 2, -3, 1]]⟩

def canonicalOutput15482 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node80⟩

theorem canonicalSound15482 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15482.moment H = canonicalOutput15482.moment H :=
  canonical_of_padded canonicalInput15482 canonicalOutput15482 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput15483 : ExponentCode := ⟨3, 5, ![![-1, -1, -1, 3, 0], ![0, -1, 2, 0, -1], ![1, 2, -1, -3, 1]]⟩

def canonicalOutput15483 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node697⟩

theorem canonicalSound15483 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15483.moment H = canonicalOutput15483.moment H :=
  canonical_of_padded canonicalInput15483 canonicalOutput15483 (by decide) (by decide)
    ⟨true, true, canonicalPermutation36, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput15484 : ExponentCode := ⟨3, 5, ![![-1, -1, -1, 3, 0], ![1, -1, 2, 0, -2], ![0, 2, -1, -3, 2]]⟩

def canonicalOutput15484 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node351⟩

theorem canonicalSound15484 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15484.moment H = canonicalOutput15484.moment H :=
  canonical_of_padded canonicalInput15484 canonicalOutput15484 (by decide) (by decide)
    ⟨true, true, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15485 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, -2, 4], ![0, 0, -1, 2, -1], ![0, 1, 0, 1, -2], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput15485 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1552⟩

theorem canonicalSound15485 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15485.moment H = canonicalOutput15485.moment H :=
  canonical_of_padded canonicalInput15485 canonicalOutput15485 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation200, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput15486 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, -2, 4], ![0, 0, -1, 3, -2], ![0, 0, 1, -1, 0], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput15486 : ExponentCode := normalNode10839

theorem canonicalSound15486 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15486.moment H = canonicalOutput15486.moment H :=
  canonical_of_padded canonicalInput15486 canonicalOutput15486 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation177, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput15487 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, -2, 4], ![0, 0, 0, 2, -2], ![0, 1, -1, 0, 0], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput15487 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2739⟩

theorem canonicalSound15487 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15487.moment H = canonicalOutput15487.moment H :=
  canonical_of_padded canonicalInput15487 canonicalOutput15487 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation173, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes019
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes033
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes11
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes24
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes26
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes27
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes28
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes32
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes38
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes39
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes40
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes41
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes42
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes43
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput16576 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 0, -2, 2], ![0, 0, 1, 2, -3], ![1, 1, -1, -1, 0]]⟩

def canonicalOutput16576 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1680⟩

theorem canonicalSound16576 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16576.moment H = canonicalOutput16576.moment H :=
  canonical_of_padded canonicalInput16576 canonicalOutput16576 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation200, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput16577 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 0, -2, 2], ![0, 0, 2, -1, -1], ![1, 1, -2, 2, -2]]⟩

def canonicalOutput16577 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1756⟩

theorem canonicalSound16577 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16577.moment H = canonicalOutput16577.moment H :=
  canonical_of_padded canonicalInput16577 canonicalOutput16577 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation200, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16578 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 0, -2, 2], ![0, 0, 2, 0, -2], ![1, 1, -2, 1, -1]]⟩

def canonicalOutput16578 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1843⟩

theorem canonicalSound16578 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16578.moment H = canonicalOutput16578.moment H :=
  canonical_of_padded canonicalInput16578 canonicalOutput16578 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation200, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16579 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 0, -2, 2], ![0, 0, 2, 1, -3], ![1, 1, -2, 0, 0]]⟩

def canonicalOutput16579 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1695⟩

theorem canonicalSound16579 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16579.moment H = canonicalOutput16579.moment H :=
  canonical_of_padded canonicalInput16579 canonicalOutput16579 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation200, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput16580 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 0, -2, 2], ![0, 1, -2, 1, 0], ![1, 0, 2, 0, -3]]⟩

def canonicalOutput16580 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1696⟩

theorem canonicalSound16580 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16580.moment H = canonicalOutput16580.moment H :=
  canonical_of_padded canonicalInput16580 canonicalOutput16580 (by decide) (by decide)
    ⟨true, true, canonicalPermutation80, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16581 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 0, -2, 2], ![0, 1, -1, -1, 1], ![1, 0, 1, 2, -4]]⟩

def canonicalOutput16581 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1548⟩

theorem canonicalSound16581 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16581.moment H = canonicalOutput16581.moment H :=
  canonical_of_padded canonicalInput16581 canonicalOutput16581 (by decide) (by decide)
    ⟨true, true, canonicalPermutation54, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput16582 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 0, -2, 2], ![0, 1, -1, 0, 0], ![1, 0, 1, 1, -3]]⟩

def canonicalOutput16582 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2742⟩

theorem canonicalSound16582 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16582.moment H = canonicalOutput16582.moment H :=
  canonical_of_padded canonicalInput16582 canonicalOutput16582 (by decide) (by decide)
    ⟨true, false, canonicalPermutation36, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput16583 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 0, -2, 2], ![0, 1, -1, 1, -1], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput16583 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1786⟩

theorem canonicalSound16583 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16583.moment H = canonicalOutput16583.moment H :=
  canonical_of_padded canonicalInput16583 canonicalOutput16583 (by decide) (by decide)
    ⟨true, true, canonicalPermutation80, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16584 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 0, -2, 2], ![0, 1, -1, 2, -2], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput16584 : ExponentCode := normalNode2687

theorem canonicalSound16584 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16584.moment H = canonicalOutput16584.moment H :=
  canonical_of_padded canonicalInput16584 canonicalOutput16584 (by decide) (by decide)
    ⟨true, false, canonicalPermutation72, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput16585 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 0, -2, 2], ![0, 1, 0, -1, 0], ![1, 0, 0, 2, -3]]⟩

def canonicalOutput16585 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1109⟩

theorem canonicalSound16585 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16585.moment H = canonicalOutput16585.moment H :=
  canonical_of_padded canonicalInput16585 canonicalOutput16585 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation176⟩ (by decide +kernel) hH

def canonicalInput16586 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 0, -2, 2], ![0, 1, 0, 0, -1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput16586 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1110⟩

theorem canonicalSound16586 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16586.moment H = canonicalOutput16586.moment H :=
  canonical_of_padded canonicalInput16586 canonicalOutput16586 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation176⟩ (by decide +kernel) hH

def canonicalInput16587 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 0, -2, 2], ![0, 1, 0, 1, -2], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput16587 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1110⟩

theorem canonicalSound16587 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16587.moment H = canonicalOutput16587.moment H :=
  canonical_of_padded canonicalInput16587 canonicalOutput16587 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, canonicalPermutation50⟩ (by decide +kernel) hH

def canonicalInput16588 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 0, -2, 2], ![0, 1, 1, 0, -2], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput16588 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1786⟩

theorem canonicalSound16588 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16588.moment H = canonicalOutput16588.moment H :=
  canonical_of_padded canonicalInput16588 canonicalOutput16588 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation200, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput16589 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 0, -2, 2], ![1, 0, 2, 0, -3], ![0, 1, -2, 1, 0]]⟩

def canonicalOutput16589 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1696⟩

theorem canonicalSound16589 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16589.moment H = canonicalOutput16589.moment H :=
  canonical_of_padded canonicalInput16589 canonicalOutput16589 (by decide) (by decide)
    ⟨true, true, canonicalPermutation80, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput16590 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 0, -1, 1], ![0, -1, 2, 0, -1], ![0, 1, -2, 1, 0], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput16590 : ExponentCode := normalNode8561

theorem canonicalSound16590 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16590.moment H = canonicalOutput16590.moment H :=
  canonical_of_padded canonicalInput16590 canonicalOutput16590 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput16591 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 0, -1, 1], ![0, 0, -1, 1, 0], ![0, 1, 1, -1, -1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput16591 : ExponentCode := normalNode8690

theorem canonicalSound16591 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16591.moment H = canonicalOutput16591.moment H :=
  canonical_of_padded canonicalInput16591 canonicalOutput16591 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, canonicalPermutation41⟩ (by decide +kernel) hH

def canonicalInput16592 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 0, -1, 1], ![0, 0, 1, 0, -1], ![0, 0, -1, 1, 0], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput16592 : ExponentCode := normalNode8687

theorem canonicalSound16592 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16592.moment H = canonicalOutput16592.moment H :=
  canonical_of_padded canonicalInput16592 canonicalOutput16592 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput16593 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 0, -1, 1], ![0, 0, 1, 0, -1], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput16593 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2785⟩

theorem canonicalSound16593 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16593.moment H = canonicalOutput16593.moment H :=
  canonical_of_padded canonicalInput16593 canonicalOutput16593 (by decide) (by decide)
    ⟨true, false, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput16594 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 0, -1, 1], ![0, 0, 1, 1, -2], ![1, 1, -1, -1, 0]]⟩

def canonicalOutput16594 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2612⟩

theorem canonicalSound16594 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16594.moment H = canonicalOutput16594.moment H :=
  canonical_of_padded canonicalInput16594 canonicalOutput16594 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation200, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput16595 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 0, -1, 1], ![0, 0, 2, 0, -2], ![1, 1, -2, 0, 0]]⟩

def canonicalOutput16595 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2613⟩

theorem canonicalSound16595 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16595.moment H = canonicalOutput16595.moment H :=
  canonical_of_padded canonicalInput16595 canonicalOutput16595 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation200, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput16596 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 0, -1, 1], ![0, 1, -2, 1, 0], ![0, 0, 2, -1, -1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput16596 : ExponentCode := normalNode8749

theorem canonicalSound16596 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16596.moment H = canonicalOutput16596.moment H :=
  canonical_of_padded canonicalInput16596 canonicalOutput16596 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput16597 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 0, -1, 1], ![0, 1, -2, 1, 0], ![0, 1, 1, -1, -1], ![1, -1, 1, 0, -1]]⟩

def canonicalOutput16597 : ExponentCode := normalNode8529

theorem canonicalSound16597 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16597.moment H = canonicalOutput16597.moment H :=
  canonical_of_padded canonicalInput16597 canonicalOutput16597 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation201, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput16598 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 0, -1, 1], ![0, 1, -1, -1, 1], ![1, 0, 1, 1, -3]]⟩

def canonicalOutput16598 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2531⟩

theorem canonicalSound16598 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16598.moment H = canonicalOutput16598.moment H :=
  canonical_of_padded canonicalInput16598 canonicalOutput16598 (by decide) (by decide)
    ⟨true, true, canonicalPermutation54, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput16599 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 0, -1, 1], ![0, 1, -1, 0, 0], ![0, 1, 1, -1, -1], ![1, -1, 0, 1, -1]]⟩

def canonicalOutput16599 : ExponentCode := normalNode10154

theorem canonicalSound16599 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16599.moment H = canonicalOutput16599.moment H :=
  canonical_of_padded canonicalInput16599 canonicalOutput16599 (by decide) (by decide)
    ⟨false, true, canonicalPermutation75, OAI.MUB6.Certificate.PairSemantics.permutation176⟩ (by decide +kernel) hH

def canonicalInput16600 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 0, -1, 1], ![0, 1, -1, 1, -1], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput16600 : ExponentCode := normalNode9465

theorem canonicalSound16600 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16600.moment H = canonicalOutput16600.moment H :=
  canonical_of_padded canonicalInput16600 canonicalOutput16600 (by decide) (by decide)
    ⟨true, false, canonicalPermutation72, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput16601 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 0, -1, 1], ![0, 1, 0, 0, -1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput16601 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1118⟩

theorem canonicalSound16601 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16601.moment H = canonicalOutput16601.moment H :=
  canonical_of_padded canonicalInput16601 canonicalOutput16601 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation176⟩ (by decide +kernel) hH

def canonicalInput16602 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 0, 0, 0], ![0, 0, 1, -1, 0], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput16602 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node1294⟩

theorem canonicalSound16602 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16602.moment H = canonicalOutput16602.moment H :=
  canonical_of_padded canonicalInput16602 canonicalOutput16602 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation195, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput16603 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 0, 0, 0], ![0, 0, 1, 1, -2], ![1, 1, -1, -2, 1]]⟩

def canonicalOutput16603 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node709⟩

theorem canonicalSound16603 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16603.moment H = canonicalOutput16603.moment H :=
  canonical_of_padded canonicalInput16603 canonicalOutput16603 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput16604 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 0, 0, 0], ![0, 1, -1, 0, 0], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput16604 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node1294⟩

theorem canonicalSound16604 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16604.moment H = canonicalOutput16604.moment H :=
  canonical_of_padded canonicalInput16604 canonicalOutput16604 (by decide) (by decide)
    ⟨true, false, canonicalPermutation25, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput16605 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 0, 0, 0], ![0, 1, -1, 1, -1], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput16605 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node711⟩

theorem canonicalSound16605 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16605.moment H = canonicalOutput16605.moment H :=
  canonical_of_padded canonicalInput16605 canonicalOutput16605 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation190, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput16606 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 0, 0, 0], ![0, 1, 0, -2, 1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput16606 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node230⟩

theorem canonicalSound16606 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16606.moment H = canonicalOutput16606.moment H :=
  canonical_of_padded canonicalInput16606 canonicalOutput16606 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation178, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput16607 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 0, 1, -1], ![0, -1, 2, -2, 1], ![1, 2, -2, 0, -1]]⟩

def canonicalOutput16607 : ExponentCode := normalNode9106

theorem canonicalSound16607 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16607.moment H = canonicalOutput16607.moment H :=
  canonical_of_padded canonicalInput16607 canonicalOutput16607 (by decide) (by decide)
    ⟨true, true, canonicalPermutation53, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput16608 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 0, 1, -1], ![0, 0, 0, -1, 1], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput16608 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1114⟩

theorem canonicalSound16608 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16608.moment H = canonicalOutput16608.moment H :=
  canonical_of_padded canonicalInput16608 canonicalOutput16608 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation176⟩ (by decide +kernel) hH

def canonicalInput16609 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 0, 1, -1], ![0, 0, 1, -2, 1], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput16609 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2612⟩

theorem canonicalSound16609 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16609.moment H = canonicalOutput16609.moment H :=
  canonical_of_padded canonicalInput16609 canonicalOutput16609 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation192, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput16610 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 0, 1, -1], ![0, 0, 1, -1, 0], ![1, 1, -1, -1, 0]]⟩

def canonicalOutput16610 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2785⟩

theorem canonicalSound16610 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16610.moment H = canonicalOutput16610.moment H :=
  canonical_of_padded canonicalInput16610 canonicalOutput16610 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput16611 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 0, 1, -1], ![0, 0, 1, 0, -1], ![1, 1, -1, -2, 1]]⟩

def canonicalOutput16611 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2639⟩

theorem canonicalSound16611 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16611.moment H = canonicalOutput16611.moment H :=
  canonical_of_padded canonicalInput16611 canonicalOutput16611 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput16612 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 0, 1, -1], ![0, 0, 2, -1, -1], ![1, 1, -2, -1, 1]]⟩

def canonicalOutput16612 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2637⟩

theorem canonicalSound16612 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16612.moment H = canonicalOutput16612.moment H :=
  canonical_of_padded canonicalInput16612 canonicalOutput16612 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation192, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16613 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 0, 1, -1], ![0, 0, 2, 0, -2], ![1, 1, -2, -2, 2]]⟩

def canonicalOutput16613 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2435⟩

theorem canonicalSound16613 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16613.moment H = canonicalOutput16613.moment H :=
  canonical_of_padded canonicalInput16613 canonicalOutput16613 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput16614 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 0, 1, -1], ![0, 1, -1, -1, 1], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput16614 : ExponentCode := normalNode9465

theorem canonicalSound16614 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16614.moment H = canonicalOutput16614.moment H :=
  canonical_of_padded canonicalInput16614 canonicalOutput16614 (by decide) (by decide)
    ⟨true, false, canonicalPermutation54, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput16615 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 0, 1, -1], ![0, 1, -1, 0, 0], ![0, 1, 0, 0, -1], ![1, -1, 1, -2, 1]]⟩

def canonicalOutput16615 : ExponentCode := normalNode8652

theorem canonicalSound16615 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16615.moment H = canonicalOutput16615.moment H :=
  canonical_of_padded canonicalInput16615 canonicalOutput16615 (by decide) (by decide)
    ⟨true, true, canonicalPermutation45, canonicalPermutation53⟩ (by decide +kernel) hH

def canonicalInput16616 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 0, 1, -1], ![0, 1, -1, 0, 0], ![0, 1, 1, 0, -2], ![1, -1, 0, -2, 2]]⟩

def canonicalOutput16616 : ExponentCode := normalNode9775

theorem canonicalSound16616 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16616.moment H = canonicalOutput16616.moment H :=
  canonical_of_padded canonicalInput16616 canonicalOutput16616 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation200, OAI.MUB6.Certificate.PairSemantics.permutation171⟩ (by decide +kernel) hH

def canonicalInput16617 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 0, 1, -1], ![0, 1, -1, 0, 0], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput16617 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2725⟩

theorem canonicalSound16617 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16617.moment H = canonicalOutput16617.moment H :=
  canonical_of_padded canonicalInput16617 canonicalOutput16617 (by decide) (by decide)
    ⟨true, true, canonicalPermutation72, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput16618 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 0, 1, -1], ![0, 1, 0, -3, 2], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput16618 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1116⟩

theorem canonicalSound16618 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16618.moment H = canonicalOutput16618.moment H :=
  canonical_of_padded canonicalInput16618 canonicalOutput16618 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, canonicalPermutation73⟩ (by decide +kernel) hH

def canonicalInput16619 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 0, 1, -1], ![0, 1, 0, -1, 0], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput16619 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1118⟩

theorem canonicalSound16619 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16619.moment H = canonicalOutput16619.moment H :=
  canonical_of_padded canonicalInput16619 canonicalOutput16619 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation177⟩ (by decide +kernel) hH

def canonicalInput16620 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 0, 2, -2], ![0, 0, 1, -2, 1], ![1, 1, -1, -1, 0]]⟩

def canonicalOutput16620 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1785⟩

theorem canonicalSound16620 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16620.moment H = canonicalOutput16620.moment H :=
  canonical_of_padded canonicalInput16620 canonicalOutput16620 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation192, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput16621 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 0, 2, -2], ![0, 0, 1, -1, 0], ![1, 1, -1, -2, 1]]⟩

def canonicalOutput16621 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2778⟩

theorem canonicalSound16621 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16621.moment H = canonicalOutput16621.moment H :=
  canonical_of_padded canonicalInput16621 canonicalOutput16621 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation181, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput16622 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 0, 2, -2], ![0, 0, 2, -1, -1], ![1, 1, -2, -2, 2]]⟩

def canonicalOutput16622 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1756⟩

theorem canonicalSound16622 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16622.moment H = canonicalOutput16622.moment H :=
  canonical_of_padded canonicalInput16622 canonicalOutput16622 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation192, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16623 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 0, 2, -2], ![0, 1, 0, -2, 1], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput16623 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1110⟩

theorem canonicalSound16623 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16623.moment H = canonicalOutput16623.moment H :=
  canonical_of_padded canonicalInput16623 canonicalOutput16623 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, canonicalPermutation73⟩ (by decide +kernel) hH

def canonicalInput16624 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 1, -3, 2], ![0, 0, 0, 2, -2], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput16624 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1680⟩

theorem canonicalSound16624 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16624.moment H = canonicalOutput16624.moment H :=
  canonical_of_padded canonicalInput16624 canonicalOutput16624 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation192, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput16625 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 1, -3, 2], ![0, 0, 1, 1, -2], ![1, 1, -2, 1, -1]]⟩

def canonicalOutput16625 : ExponentCode := normalNode5079

theorem canonicalSound16625 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16625.moment H = canonicalOutput16625.moment H :=
  canonical_of_padded canonicalInput16625 canonicalOutput16625 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation197, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput16626 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 1, -3, 2], ![0, 0, 2, 0, -2], ![1, 1, -3, 2, -1]]⟩

def canonicalOutput16626 : ExponentCode := normalNode3539

theorem canonicalSound16626 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16626.moment H = canonicalOutput16626.moment H :=
  canonical_of_padded canonicalInput16626 canonicalOutput16626 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation178, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput16627 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 1, -3, 2], ![0, 1, -2, 1, 0], ![1, 0, 1, 1, -3]]⟩

def canonicalOutput16627 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2075⟩

theorem canonicalSound16627 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16627.moment H = canonicalOutput16627.moment H :=
  canonical_of_padded canonicalInput16627 canonicalOutput16627 (by decide) (by decide)
    ⟨true, false, canonicalPermutation18, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput16628 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 1, -3, 2], ![0, 1, -1, 1, -1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput16628 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1739⟩

theorem canonicalSound16628 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16628.moment H = canonicalOutput16628.moment H :=
  canonical_of_padded canonicalInput16628 canonicalOutput16628 (by decide) (by decide)
    ⟨true, false, canonicalPermutation80, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput16629 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 1, -3, 2], ![1, 0, 2, 0, -3], ![0, 1, -3, 2, 0]]⟩

def canonicalOutput16629 : ExponentCode := normalNode6674

theorem canonicalSound16629 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16629.moment H = canonicalOutput16629.moment H :=
  canonical_of_padded canonicalInput16629 canonicalOutput16629 (by decide) (by decide)
    ⟨true, true, canonicalPermutation52, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput16630 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 1, -2, 1], ![0, 0, 0, 2, -2], ![1, 1, -1, -1, 0]]⟩

def canonicalOutput16630 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1785⟩

theorem canonicalSound16630 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16630.moment H = canonicalOutput16630.moment H :=
  canonical_of_padded canonicalInput16630 canonicalOutput16630 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation192, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput16631 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 1, -2, 1], ![0, 0, 1, 0, -1], ![1, 1, -2, 1, -1]]⟩

def canonicalOutput16631 : ExponentCode := normalNode9088

theorem canonicalSound16631 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16631.moment H = canonicalOutput16631.moment H :=
  canonical_of_padded canonicalInput16631 canonicalOutput16631 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation176, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput16632 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 1, -2, 1], ![0, 0, 1, 1, -2], ![1, 1, -2, 0, 0]]⟩

def canonicalOutput16632 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2087⟩

theorem canonicalSound16632 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16632.moment H = canonicalOutput16632.moment H :=
  canonical_of_padded canonicalInput16632 canonicalOutput16632 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation180, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput16633 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 1, -2, 1], ![0, 0, 1, 2, -3], ![1, 1, -2, -1, 1]]⟩

def canonicalOutput16633 : ExponentCode := normalNode5079

theorem canonicalSound16633 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16633.moment H = canonicalOutput16633.moment H :=
  canonical_of_padded canonicalInput16633 canonicalOutput16633 (by decide) (by decide)
    ⟨true, false, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput16634 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 1, -2, 1], ![0, 1, -2, -1, 2], ![1, 0, 1, 2, -4]]⟩

def canonicalOutput16634 : ExponentCode := normalNode5044

theorem canonicalSound16634 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16634.moment H = canonicalOutput16634.moment H :=
  canonical_of_padded canonicalInput16634 canonicalOutput16634 (by decide) (by decide)
    ⟨true, false, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16635 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 1, -2, 1], ![0, 1, -2, 0, 1], ![1, 0, 1, 1, -3]]⟩

def canonicalOutput16635 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2069⟩

theorem canonicalSound16635 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16635.moment H = canonicalOutput16635.moment H :=
  canonical_of_padded canonicalInput16635 canonicalOutput16635 (by decide) (by decide)
    ⟨true, false, canonicalPermutation42, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput16636 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 1, -2, 1], ![0, 1, -2, 1, 0], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput16636 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2073⟩

theorem canonicalSound16636 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16636.moment H = canonicalOutput16636.moment H :=
  canonical_of_padded canonicalInput16636 canonicalOutput16636 (by decide) (by decide)
    ⟨true, false, canonicalPermutation18, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput16637 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 1, -2, 1], ![0, 1, -2, 2, -1], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput16637 : ExponentCode := normalNode2699

theorem canonicalSound16637 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16637.moment H = canonicalOutput16637.moment H :=
  canonical_of_padded canonicalInput16637 canonicalOutput16637 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation187, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput16638 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 1, -2, 1], ![0, 1, -1, -1, 1], ![1, 0, 0, 2, -3]]⟩

def canonicalOutput16638 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1768⟩

theorem canonicalSound16638 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16638.moment H = canonicalOutput16638.moment H :=
  canonical_of_padded canonicalInput16638 canonicalOutput16638 (by decide) (by decide)
    ⟨true, false, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput16639 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![0, 0, 1, -2, 1], ![0, 1, -1, 0, 0], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput16639 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2744⟩

theorem canonicalSound16639 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16639.moment H = canonicalOutput16639.moment H :=
  canonical_of_padded canonicalInput16639 canonicalOutput16639 (by decide) (by decide)
    ⟨true, false, canonicalPermutation27, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

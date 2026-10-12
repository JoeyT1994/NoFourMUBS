import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes005
import NoFourMUBs.Step2.SOS.NormalizationNodes006
import NoFourMUBs.Step2.SOS.NormalizationNodes008
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes033
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes25
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes26
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes27
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes28
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes30
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes31
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes32
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes35
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes43
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput15616 : ExponentCode := ⟨5, 6, ![![-1, -1, 0, 0, 0, 2], ![0, 0, 0, 1, -1, 0], ![0, 0, 1, -1, 0, 0], ![0, 1, 0, 0, 0, -1], ![1, 0, -1, 0, 1, -1]]⟩

def canonicalOutput15616 : ExponentCode := normalNode10400

theorem canonicalSound15616 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15616.moment H = canonicalOutput15616.moment H :=
  canonical_of_padded canonicalInput15616 canonicalOutput15616 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation397, OAI.MUB6.Certificate.PairSemantics.permutation189⟩ (by decide +kernel) hH

def canonicalInput15617 : ExponentCode := ⟨5, 6, ![![-1, -1, 0, 0, 0, 2], ![0, 0, 0, 2, -2, 0], ![0, 0, 0, -2, 2, 0], ![0, 1, 0, 0, 0, -1], ![1, 0, 0, 0, 0, -1]]⟩

def canonicalOutput15617 : ExponentCode := normalNode8295

theorem canonicalSound15617 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15617.moment H = canonicalOutput15617.moment H :=
  canonical_of_padded canonicalInput15617 canonicalOutput15617 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation221⟩ (by decide +kernel) hH

def canonicalInput15618 : ExponentCode := ⟨5, 6, ![![-1, -1, 0, 0, 0, 2], ![0, 0, 0, 2, -2, 0], ![0, 0, 1, -2, 1, 0], ![0, 1, -1, 0, 1, -1], ![1, 0, 0, 0, 0, -1]]⟩

def canonicalOutput15618 : ExponentCode := normalNode8155

theorem canonicalSound15618 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15618.moment H = canonicalOutput15618.moment H :=
  canonical_of_padded canonicalInput15618 canonicalOutput15618 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation367, OAI.MUB6.Certificate.PairSemantics.permutation201⟩ (by decide +kernel) hH

def canonicalInput15619 : ExponentCode := ⟨5, 6, ![![-1, -1, 0, 0, 0, 2], ![0, 0, 0, 2, -2, 0], ![0, 0, 1, -2, 1, 0], ![0, 1, 0, 0, 0, -1], ![1, 0, -1, 0, 1, -1]]⟩

def canonicalOutput15619 : ExponentCode := normalNode8155

theorem canonicalSound15619 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15619.moment H = canonicalOutput15619.moment H :=
  canonical_of_padded canonicalInput15619 canonicalOutput15619 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation366, OAI.MUB6.Certificate.PairSemantics.permutation196⟩ (by decide +kernel) hH

def canonicalInput15620 : ExponentCode := ⟨5, 6, ![![-1, -1, 0, 0, 0, 2], ![0, 1, -2, 1, 1, -1], ![0, 0, 1, -2, 1, 0], ![0, 0, 1, 1, -2, 0], ![1, 0, 0, 0, 0, -1]]⟩

def canonicalOutput15620 : ExponentCode := normalNode10745

theorem canonicalSound15620 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15620.moment H = canonicalOutput15620.moment H :=
  canonical_of_padded canonicalInput15620 canonicalOutput15620 (by decide) (by decide)
    ⟨true, true, canonicalPermutation45, canonicalPermutation30⟩ (by decide +kernel) hH

def canonicalInput15621 : ExponentCode := ⟨5, 6, ![![-1, -1, 0, 0, 0, 2], ![0, 1, -1, -1, 2, -1], ![0, 0, -1, 2, -1, 0], ![0, 0, 2, -1, -1, 0], ![1, 0, 0, 0, 0, -1]]⟩

def canonicalOutput15621 : ExponentCode := normalNode10742

theorem canonicalSound15621 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15621.moment H = canonicalOutput15621.moment H :=
  canonical_of_padded canonicalInput15621 canonicalOutput15621 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation176, canonicalPermutation30⟩ (by decide +kernel) hH

def canonicalInput15622 : ExponentCode := ⟨5, 6, ![![-1, -1, 0, 0, 0, 2], ![1, -1, -2, 1, 1, 0], ![0, 0, 1, -2, 1, 0], ![0, 0, 1, 1, -2, 0], ![0, 2, 0, 0, 0, -2]]⟩

def canonicalOutput15622 : ExponentCode := normalNode3677

theorem canonicalSound15622 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15622.moment H = canonicalOutput15622.moment H :=
  canonical_of_padded canonicalInput15622 canonicalOutput15622 (by decide) (by decide)
    ⟨true, false, canonicalPermutation115, canonicalPermutation27⟩ (by decide +kernel) hH

def canonicalInput15623 : ExponentCode := ⟨5, 6, ![![-1, -1, 0, 0, 0, 2], ![1, -1, -1, -1, 2, 0], ![0, 0, -1, 2, -1, 0], ![0, 0, 2, -1, -1, 0], ![0, 2, 0, 0, 0, -2]]⟩

def canonicalOutput15623 : ExponentCode := normalNode3672

theorem canonicalSound15623 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15623.moment H = canonicalOutput15623.moment H :=
  canonical_of_padded canonicalInput15623 canonicalOutput15623 (by decide) (by decide)
    ⟨true, true, canonicalPermutation116, canonicalPermutation30⟩ (by decide +kernel) hH

def canonicalInput15624 : ExponentCode := ⟨5, 6, ![![-1, -1, 0, 0, 1, 1], ![0, 0, 0, 1, -1, 0], ![0, 0, 1, 0, 0, -1], ![0, 1, 0, -1, 0, 0], ![1, 0, -1, 0, 0, 0]]⟩

def canonicalOutput15624 : ExponentCode := normalNode10451

theorem canonicalSound15624 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15624.moment H = canonicalOutput15624.moment H :=
  canonical_of_padded canonicalInput15624 canonicalOutput15624 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation298, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput15625 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, -1, -2, 2, 1], ![0, 2, 0, -1, -1], ![1, 0, 2, -1, -2]]⟩

def canonicalOutput15625 : ExponentCode := normalNode5246

theorem canonicalSound15625 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15625.moment H = canonicalOutput15625.moment H :=
  canonical_of_padded canonicalInput15625 canonicalOutput15625 (by decide) (by decide)
    ⟨true, true, canonicalPermutation20, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput15626 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, -1, -2, 2, 1], ![0, 2, 0, 0, -2], ![1, 0, 2, -2, -1]]⟩

def canonicalOutput15626 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2273⟩

theorem canonicalSound15626 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15626.moment H = canonicalOutput15626.moment H :=
  canonical_of_padded canonicalInput15626 canonicalOutput15626 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation171, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput15627 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, -1, -2, 2, 1], ![0, 2, 1, -2, -1], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput15627 : ExponentCode := normalNode5883

theorem canonicalSound15627 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15627.moment H = canonicalOutput15627.moment H :=
  canonical_of_padded canonicalInput15627 canonicalOutput15627 (by decide) (by decide)
    ⟨true, false, canonicalPermutation71, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput15628 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, -1, -2, 2, 1], ![0, 2, 1, -1, -2], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput15628 : ExponentCode := normalNode5133

theorem canonicalSound15628 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15628.moment H = canonicalOutput15628.moment H :=
  canonical_of_padded canonicalInput15628 canonicalOutput15628 (by decide) (by decide)
    ⟨true, true, canonicalPermutation30, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput15629 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, -1, -2, 2, 1], ![0, 2, 1, 0, -3], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput15629 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1943⟩

theorem canonicalSound15629 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15629.moment H = canonicalOutput15629.moment H :=
  canonical_of_padded canonicalInput15629 canonicalOutput15629 (by decide) (by decide)
    ⟨true, true, canonicalPermutation30, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput15630 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, -1, -1, 1, 1], ![0, 0, 2, -2, 0], ![1, 2, -1, 1, -3]]⟩

def canonicalOutput15630 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1645⟩

theorem canonicalSound15630 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15630.moment H = canonicalOutput15630.moment H :=
  canonical_of_padded canonicalInput15630 canonicalOutput15630 (by decide) (by decide)
    ⟨true, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15631 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, -1, -1, 1, 1], ![0, 1, -1, 1, -1], ![1, 1, 2, -2, -2]]⟩

def canonicalOutput15631 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1732⟩

theorem canonicalSound15631 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15631.moment H = canonicalOutput15631.moment H :=
  canonical_of_padded canonicalInput15631 canonicalOutput15631 (by decide) (by decide)
    ⟨true, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15632 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, -1, -1, 1, 1], ![0, 1, 1, 1, -3], ![1, 1, 0, -2, 0]]⟩

def canonicalOutput15632 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1652⟩

theorem canonicalSound15632 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15632.moment H = canonicalOutput15632.moment H :=
  canonical_of_padded canonicalInput15632 canonicalOutput15632 (by decide) (by decide)
    ⟨true, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput15633 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, -1, -1, 1, 1], ![0, 1, 2, -2, -1], ![1, 1, -1, 1, -2]]⟩

def canonicalOutput15633 : ExponentCode := normalNode2557

theorem canonicalSound15633 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15633.moment H = canonicalOutput15633.moment H :=
  canonical_of_padded canonicalInput15633 canonicalOutput15633 (by decide) (by decide)
    ⟨true, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15634 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, -1, -1, 1, 1], ![0, 1, 2, -1, -2], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput15634 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1740⟩

theorem canonicalSound15634 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15634.moment H = canonicalOutput15634.moment H :=
  canonical_of_padded canonicalInput15634 canonicalOutput15634 (by decide) (by decide)
    ⟨true, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput15635 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, -1, -1, 1, 1], ![0, 1, 2, 1, -4], ![1, 1, -1, -2, 1]]⟩

def canonicalOutput15635 : ExponentCode := normalNode1304

theorem canonicalSound15635 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15635.moment H = canonicalOutput15635.moment H :=
  canonical_of_padded canonicalInput15635 canonicalOutput15635 (by decide) (by decide)
    ⟨true, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput15636 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, -1, -1, 1, 1], ![0, 2, 0, -1, -1], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput15636 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1751⟩

theorem canonicalSound15636 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15636.moment H = canonicalOutput15636.moment H :=
  canonical_of_padded canonicalInput15636 canonicalOutput15636 (by decide) (by decide)
    ⟨true, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15637 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, -1, -1, 1, 1], ![0, 2, 0, 0, -2], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput15637 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1747⟩

theorem canonicalSound15637 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15637.moment H = canonicalOutput15637.moment H :=
  canonical_of_padded canonicalInput15637 canonicalOutput15637 (by decide) (by decide)
    ⟨true, false, canonicalPermutation46, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput15638 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, -1, -1, 1, 1], ![0, 2, 0, 1, -3], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput15638 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1648⟩

theorem canonicalSound15638 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15638.moment H = canonicalOutput15638.moment H :=
  canonical_of_padded canonicalInput15638 canonicalOutput15638 (by decide) (by decide)
    ⟨true, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput15639 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, -1, -1, 1, 1], ![0, 2, 1, -2, -1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput15639 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1836⟩

theorem canonicalSound15639 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15639.moment H = canonicalOutput15639.moment H :=
  canonical_of_padded canonicalInput15639 canonicalOutput15639 (by decide) (by decide)
    ⟨true, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput15640 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, -1, -1, 1, 1], ![0, 2, 1, 0, -3], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput15640 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2811⟩

theorem canonicalSound15640 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15640.moment H = canonicalOutput15640.moment H :=
  canonical_of_padded canonicalInput15640 canonicalOutput15640 (by decide) (by decide)
    ⟨true, true, canonicalPermutation15, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput15641 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, -1, -1, 1, 1], ![0, 2, 2, -2, -2], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput15641 : ExponentCode := normalNode2320

theorem canonicalSound15641 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15641.moment H = canonicalOutput15641.moment H :=
  canonical_of_padded canonicalInput15641 canonicalOutput15641 (by decide) (by decide)
    ⟨true, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput15642 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, -1, -1, 1, 1], ![1, 0, 1, -2, 0], ![0, 2, 0, 1, -3]]⟩

def canonicalOutput15642 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1648⟩

theorem canonicalSound15642 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15642.moment H = canonicalOutput15642.moment H :=
  canonical_of_padded canonicalInput15642 canonicalOutput15642 (by decide) (by decide)
    ⟨true, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15643 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, -1, -1, 1, 1], ![1, 1, -1, 1, -2], ![0, 1, 2, -2, -1]]⟩

def canonicalOutput15643 : ExponentCode := normalNode2557

theorem canonicalSound15643 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15643.moment H = canonicalOutput15643.moment H :=
  canonical_of_padded canonicalInput15643 canonicalOutput15643 (by decide) (by decide)
    ⟨true, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput15644 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 0, 2], ![0, -1, -1, 2, 0], ![0, 0, 1, -1, 0], ![0, 1, 0, 0, -1], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput15644 : ExponentCode := normalNode10036

theorem canonicalSound15644 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15644.moment H = canonicalOutput15644.moment H :=
  canonical_of_padded canonicalInput15644 canonicalOutput15644 (by decide) (by decide)
    ⟨false, false, canonicalPermutation78, OAI.MUB6.Certificate.PairSemantics.permutation177⟩ (by decide +kernel) hH

def canonicalInput15645 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 0, 2], ![0, -1, -1, 2, 0], ![0, 0, 1, 0, -1], ![0, 1, 0, -1, 0], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput15645 : ExponentCode := normalNode10035

theorem canonicalSound15645 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15645.moment H = canonicalOutput15645.moment H :=
  canonical_of_padded canonicalInput15645 canonicalOutput15645 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15646 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 0, 2], ![0, -1, -1, 2, 0], ![0, 0, 1, 0, -1], ![0, 2, 0, -2, 0], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput15646 : ExponentCode := normalNode8297

theorem canonicalSound15646 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15646.moment H = canonicalOutput15646.moment H :=
  canonical_of_padded canonicalInput15646 canonicalOutput15646 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation201, canonicalPermutation20⟩ (by decide +kernel) hH

def canonicalInput15647 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, -1, -1, 2, 0], ![0, 0, 2, -2, 0], ![1, 2, -1, 0, -2]]⟩

def canonicalOutput15647 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1997⟩

theorem canonicalSound15647 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15647.moment H = canonicalOutput15647.moment H :=
  canonical_of_padded canonicalInput15647 canonicalOutput15647 (by decide) (by decide)
    ⟨true, true, canonicalPermutation30, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput15648 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, -1, -1, 2, 0], ![0, 0, 2, -1, -1], ![1, 2, -1, -1, -1]]⟩

def canonicalOutput15648 : ExponentCode := normalNode4212

theorem canonicalSound15648 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15648.moment H = canonicalOutput15648.moment H :=
  canonical_of_padded canonicalInput15648 canonicalOutput15648 (by decide) (by decide)
    ⟨true, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15649 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, -1, -1, 2, 0], ![0, 0, 2, 0, -2], ![1, 2, -1, -2, 0]]⟩

def canonicalOutput15649 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2002⟩

theorem canonicalSound15649 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15649.moment H = canonicalOutput15649.moment H :=
  canonical_of_padded canonicalInput15649 canonicalOutput15649 (by decide) (by decide)
    ⟨true, true, canonicalPermutation58, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15650 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, -1, -1, 2, 0], ![0, 1, -1, -1, 1], ![1, 1, 2, -1, -3]]⟩

def canonicalOutput15650 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1711⟩

theorem canonicalSound15650 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15650.moment H = canonicalOutput15650.moment H :=
  canonical_of_padded canonicalInput15650 canonicalOutput15650 (by decide) (by decide)
    ⟨true, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput15651 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 0, 2], ![0, -1, -1, 2, 0], ![0, 1, -1, 0, 0], ![0, 1, 0, -1, 0], ![1, 0, 2, -1, -2]]⟩

def canonicalOutput15651 : ExponentCode := normalNode9491

theorem canonicalSound15651 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15651.moment H = canonicalOutput15651.moment H :=
  canonical_of_padded canonicalInput15651 canonicalOutput15651 (by decide) (by decide)
    ⟨true, true, canonicalPermutation44, OAI.MUB6.Certificate.PairSemantics.permutation178⟩ (by decide +kernel) hH

def canonicalInput15652 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 0, 2], ![0, -1, -1, 2, 0], ![0, 1, -1, 0, 0], ![0, 1, 0, 0, -1], ![1, 0, 2, -2, -1]]⟩

def canonicalOutput15652 : ExponentCode := normalNode9488

theorem canonicalSound15652 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15652.moment H = canonicalOutput15652.moment H :=
  canonical_of_padded canonicalInput15652 canonicalOutput15652 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation173, OAI.MUB6.Certificate.PairSemantics.permutation179⟩ (by decide +kernel) hH

def canonicalInput15653 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 0, 2], ![0, -1, -1, 2, 0], ![0, 1, 0, -1, 0], ![0, 1, 0, -1, 0], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput15653 : ExponentCode := normalNode8285

theorem canonicalSound15653 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15653.moment H = canonicalOutput15653.moment H :=
  canonical_of_padded canonicalInput15653 canonicalOutput15653 (by decide) (by decide)
    ⟨true, false, canonicalPermutation58, OAI.MUB6.Certificate.PairSemantics.permutation180⟩ (by decide +kernel) hH

def canonicalInput15654 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 0, 2], ![0, -1, -1, 2, 0], ![0, 1, 0, 0, -1], ![0, 1, 0, -1, 0], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput15654 : ExponentCode := normalNode8685

theorem canonicalSound15654 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15654.moment H = canonicalOutput15654.moment H :=
  canonical_of_padded canonicalInput15654 canonicalOutput15654 (by decide) (by decide)
    ⟨false, true, canonicalPermutation20, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15655 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 0, 2], ![0, -1, -1, 2, 0], ![0, 1, 0, 0, -1], ![0, 1, 0, 0, -1], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput15655 : ExponentCode := normalNode8285

theorem canonicalSound15655 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15655.moment H = canonicalOutput15655.moment H :=
  canonical_of_padded canonicalInput15655 canonicalOutput15655 (by decide) (by decide)
    ⟨true, false, canonicalPermutation46, canonicalPermutation19⟩ (by decide +kernel) hH

def canonicalInput15656 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 0, 2], ![0, -1, -1, 2, 0], ![0, 1, 0, 0, -1], ![0, 1, 2, -2, -1], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput15656 : ExponentCode := normalNode10082

theorem canonicalSound15656 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15656.moment H = canonicalOutput15656.moment H :=
  canonical_of_padded canonicalInput15656 canonicalOutput15656 (by decide) (by decide)
    ⟨true, false, canonicalPermutation22, canonicalPermutation80⟩ (by decide +kernel) hH

def canonicalInput15657 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, -1, -1, 2, 0], ![0, 1, 1, -2, 0], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput15657 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2000⟩

theorem canonicalSound15657 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15657.moment H = canonicalOutput15657.moment H :=
  canonical_of_padded canonicalInput15657 canonicalOutput15657 (by decide) (by decide)
    ⟨true, false, canonicalPermutation58, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput15658 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, -1, -1, 2, 0], ![0, 1, 1, -1, -1], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput15658 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2057⟩

theorem canonicalSound15658 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15658.moment H = canonicalOutput15658.moment H :=
  canonical_of_padded canonicalInput15658 canonicalOutput15658 (by decide) (by decide)
    ⟨true, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15659 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, -1, -1, 2, 0], ![0, 1, 1, 0, -2], ![1, 1, 0, -2, 0]]⟩

def canonicalOutput15659 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2003⟩

theorem canonicalSound15659 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15659.moment H = canonicalOutput15659.moment H :=
  canonical_of_padded canonicalInput15659 canonicalOutput15659 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput15660 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, -1, -1, 2, 0], ![0, 1, 2, -2, -1], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput15660 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1994⟩

theorem canonicalSound15660 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15660.moment H = canonicalOutput15660.moment H :=
  canonical_of_padded canonicalInput15660 canonicalOutput15660 (by decide) (by decide)
    ⟨true, true, canonicalPermutation58, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput15661 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 0, 2], ![0, -1, -1, 2, 0], ![0, 1, 2, -1, -2], ![0, 1, -1, -1, 1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput15661 : ExponentCode := normalNode8138

theorem canonicalSound15661 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15661.moment H = canonicalOutput15661.moment H :=
  canonical_of_padded canonicalInput15661 canonicalOutput15661 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15662 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, -1, -1, 2, 0], ![0, 1, 2, -1, -2], ![1, 1, -1, -1, 0]]⟩

def canonicalOutput15662 : ExponentCode := normalNode3784

theorem canonicalSound15662 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15662.moment H = canonicalOutput15662.moment H :=
  canonical_of_padded canonicalInput15662 canonicalOutput15662 (by decide) (by decide)
    ⟨true, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput15663 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, -1, -1, 2, 0], ![0, 2, -1, -1, 0], ![1, 0, 2, -1, -2]]⟩

def canonicalOutput15663 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1996⟩

theorem canonicalSound15663 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15663.moment H = canonicalOutput15663.moment H :=
  canonical_of_padded canonicalInput15663 canonicalOutput15663 (by decide) (by decide)
    ⟨true, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15664 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, -1, -1, 2, 0], ![0, 2, -1, 0, -1], ![1, 0, 2, -2, -1]]⟩

def canonicalOutput15664 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1995⟩

theorem canonicalSound15664 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15664.moment H = canonicalOutput15664.moment H :=
  canonical_of_padded canonicalInput15664 canonicalOutput15664 (by decide) (by decide)
    ⟨true, true, canonicalPermutation58, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15665 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, -1, -1, 2, 0], ![0, 2, 0, -2, 0], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput15665 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1999⟩

theorem canonicalSound15665 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15665.moment H = canonicalOutput15665.moment H :=
  canonical_of_padded canonicalInput15665 canonicalOutput15665 (by decide) (by decide)
    ⟨true, false, canonicalPermutation58, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput15666 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, -1, -1, 2, 0], ![0, 2, 0, -1, -1], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput15666 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2056⟩

theorem canonicalSound15666 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15666.moment H = canonicalOutput15666.moment H :=
  canonical_of_padded canonicalInput15666 canonicalOutput15666 (by decide) (by decide)
    ⟨true, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput15667 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, -1, -1, 2, 0], ![0, 2, 0, 0, -2], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput15667 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1999⟩

theorem canonicalSound15667 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15667.moment H = canonicalOutput15667.moment H :=
  canonical_of_padded canonicalInput15667 canonicalOutput15667 (by decide) (by decide)
    ⟨true, false, canonicalPermutation46, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput15668 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, -1, -1, 2, 0], ![1, 0, 1, -1, -1], ![0, 2, 0, -1, -1]]⟩

def canonicalOutput15668 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2056⟩

theorem canonicalSound15668 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15668.moment H = canonicalOutput15668.moment H :=
  canonical_of_padded canonicalInput15668 canonicalOutput15668 (by decide) (by decide)
    ⟨true, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15669 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, -1, -1, 2, 0], ![1, 0, 2, -2, -1], ![0, 2, -1, 0, -1]]⟩

def canonicalOutput15669 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1995⟩

theorem canonicalSound15669 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15669.moment H = canonicalOutput15669.moment H :=
  canonical_of_padded canonicalInput15669 canonicalOutput15669 (by decide) (by decide)
    ⟨true, true, canonicalPermutation58, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput15670 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, -1, -1, 2, 0], ![1, 0, 2, -1, -2], ![0, 2, -1, -1, 0]]⟩

def canonicalOutput15670 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1996⟩

theorem canonicalSound15670 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15670.moment H = canonicalOutput15670.moment H :=
  canonical_of_padded canonicalInput15670 canonicalOutput15670 (by decide) (by decide)
    ⟨true, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput15671 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, -1, -1, 2, 0], ![1, 1, -1, -1, 0], ![0, 1, 2, -1, -2]]⟩

def canonicalOutput15671 : ExponentCode := normalNode3784

theorem canonicalSound15671 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15671.moment H = canonicalOutput15671.moment H :=
  canonical_of_padded canonicalInput15671 canonicalOutput15671 (by decide) (by decide)
    ⟨true, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15672 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, -1, -1, 2, 0], ![1, 1, 0, -2, 0], ![0, 1, 1, 0, -2]]⟩

def canonicalOutput15672 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2003⟩

theorem canonicalSound15672 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15672.moment H = canonicalOutput15672.moment H :=
  canonical_of_padded canonicalInput15672 canonicalOutput15672 (by decide) (by decide)
    ⟨true, false, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput15673 : ExponentCode := ⟨6, 5, ![![-1, -1, 0, 0, 2], ![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![-1, 0, 1, 1, -1], ![0, 1, 1, 0, -2], ![2, 1, -1, -2, 0]]⟩

def canonicalOutput15673 : ExponentCode := normalNode2857

theorem canonicalSound15673 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15673.moment H = canonicalOutput15673.moment H :=
  canonical_of_padded canonicalInput15673 canonicalOutput15673 (by decide) (by decide)
    ⟨false, true, canonicalPermutation85, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15674 : ExponentCode := ⟨6, 5, ![![-1, -1, 0, 0, 2], ![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![-1, 0, 2, 0, -1], ![0, 1, -1, 1, -1], ![2, 1, 0, -2, -1]]⟩

def canonicalOutput15674 : ExponentCode := normalNode1617

theorem canonicalSound15674 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15674.moment H = canonicalOutput15674.moment H :=
  canonical_of_padded canonicalInput15674 canonicalOutput15674 (by decide) (by decide)
    ⟨false, true, canonicalPermutation85, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15675 : ExponentCode := ⟨6, 5, ![![-1, -1, 0, 0, 2], ![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![-1, 0, 2, 0, -1], ![0, 2, 0, -2, 0], ![2, 0, -1, 1, -2]]⟩

def canonicalOutput15675 : ExponentCode := normalNode1497

theorem canonicalSound15675 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15675.moment H = canonicalOutput15675.moment H :=
  canonical_of_padded canonicalInput15675 canonicalOutput15675 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation362, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput15676 : ExponentCode := ⟨6, 5, ![![-1, -1, 0, 0, 2], ![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![-1, 0, 2, 0, -1], ![1, 1, -1, -2, 1], ![1, 1, 0, 1, -3]]⟩

def canonicalOutput15676 : ExponentCode := normalNode2198

theorem canonicalSound15676 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15676.moment H = canonicalOutput15676.moment H :=
  canonical_of_padded canonicalInput15676 canonicalOutput15676 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation260, canonicalPermutation53⟩ (by decide +kernel) hH

def canonicalInput15677 : ExponentCode := ⟨6, 5, ![![-1, -1, 0, 0, 2], ![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![-1, 0, 2, 0, -1], ![1, 1, 0, -2, 0], ![1, 1, -1, 1, -2]]⟩

def canonicalOutput15677 : ExponentCode := normalNode3701

theorem canonicalSound15677 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15677.moment H = canonicalOutput15677.moment H :=
  canonical_of_padded canonicalInput15677 canonicalOutput15677 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation250, canonicalPermutation32⟩ (by decide +kernel) hH

def canonicalInput15678 : ExponentCode := ⟨6, 5, ![![-1, -1, 0, 0, 2], ![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![-1, 1, -1, 1, 0], ![2, 0, 0, -2, 0], ![0, 1, 2, 0, -3]]⟩

def canonicalOutput15678 : ExponentCode := normalNode1479

theorem canonicalSound15678 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15678.moment H = canonicalOutput15678.moment H :=
  canonical_of_padded canonicalInput15678 canonicalOutput15678 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation399, canonicalPermutation50⟩ (by decide +kernel) hH

def canonicalInput15679 : ExponentCode := ⟨6, 5, ![![-1, -1, 0, 0, 2], ![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![-1, 1, -1, 1, 0], ![2, 0, 0, 0, -2], ![0, 1, 2, -2, -1]]⟩

def canonicalOutput15679 : ExponentCode := normalNode1632

theorem canonicalSound15679 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15679.moment H = canonicalOutput15679.moment H :=
  canonical_of_padded canonicalInput15679 canonicalOutput15679 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation399, canonicalPermutation50⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

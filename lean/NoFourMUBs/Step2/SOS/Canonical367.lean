import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations
import OAI.Analysis.MutuallyUnbiased.PairTargets.ExtraPermutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput23488 : ExponentCode := ⟨4, 4, ![![-1, 2, -1, 0], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, -2, -1, 2]]⟩

def canonicalOutput23488 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1040⟩

theorem canonicalSound23488 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23488.moment H = canonicalOutput23488.moment H :=
  canonical_of_padded canonicalInput23488 canonicalOutput23488 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput23489 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![-2, -1, 3, 0, 0, 0], ![3, -1, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23489 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node43⟩

theorem canonicalSound23489 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23489.moment H = canonicalOutput23489.moment H :=
  canonical_of_padded canonicalInput23489 canonicalOutput23489 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation253, OAI.MUB6.Certificate.PairSemantics.permutation254⟩ (by decide +kernel) hH

def canonicalInput23490 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![-2, 0, 2, 0, 0, 0], ![3, -2, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23490 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node36⟩

theorem canonicalSound23490 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23490.moment H = canonicalOutput23490.moment H :=
  canonical_of_padded canonicalInput23490 canonicalOutput23490 (by decide) (by decide)
    ⟨false, false, canonicalPermutation63, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65⟩ (by decide +kernel) hH

def canonicalInput23491 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![-2, 1, 1, 0, 0, 0], ![3, -3, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23491 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node63⟩

theorem canonicalSound23491 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23491.moment H = canonicalOutput23491.moment H :=
  canonical_of_padded canonicalInput23491 canonicalOutput23491 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation253, canonicalPermutation60⟩ (by decide +kernel) hH

def canonicalInput23492 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![-1, -2, 3, 0, 0, 0], ![2, 0, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23492 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node36⟩

theorem canonicalSound23492 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23492.moment H = canonicalOutput23492.moment H :=
  canonical_of_padded canonicalInput23492 canonicalOutput23492 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65, OAI.MUB6.Certificate.PairSemantics.permutation254⟩ (by decide +kernel) hH

def canonicalInput23493 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23493 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node276⟩

theorem canonicalSound23493 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23493.moment H = canonicalOutput23493.moment H :=
  canonical_of_padded canonicalInput23493 canonicalOutput23493 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation299, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput23494 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, -1, 0, 0], ![1, 0, 0, -1, 0, 0]]⟩

def canonicalOutput23494 : ExponentCode := normalNode3766

theorem canonicalSound23494 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23494.moment H = canonicalOutput23494.moment H :=
  canonical_of_padded canonicalInput23494 canonicalOutput23494 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation241, OAI.MUB6.Certificate.PairSemantics.permutation306⟩ (by decide +kernel) hH

def canonicalInput23495 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, 0, -1, 0], ![1, 0, 0, -2, 1, 0]]⟩

def canonicalOutput23495 : ExponentCode := normalNode10446

theorem canonicalSound23495 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23495.moment H = canonicalOutput23495.moment H :=
  canonical_of_padded canonicalInput23495 canonicalOutput23495 (by decide) (by decide)
    ⟨false, false, canonicalPermutation269, OAI.MUB6.Certificate.PairSemantics.permutation401⟩ (by decide +kernel) hH

def canonicalInput23496 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-2, 0, 0, 3, -1, 0], ![0, 0, 0, -1, 1, 0], ![2, 0, 0, -2, 0, 0]]⟩

def canonicalOutput23496 : ExponentCode := normalNode10743

theorem canonicalSound23496 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23496.moment H = canonicalOutput23496.moment H :=
  canonical_of_padded canonicalInput23496 canonicalOutput23496 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation275, OAI.MUB6.Certificate.PairSemantics.permutation401⟩ (by decide +kernel) hH

def canonicalInput23497 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput23497 : ExponentCode := normalNode3656

theorem canonicalSound23497 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23497.moment H = canonicalOutput23497.moment H :=
  canonical_of_padded canonicalInput23497 canonicalOutput23497 (by decide) (by decide)
    ⟨false, true, canonicalPermutation96, OAI.MUB6.Certificate.PairSemantics.permutation180⟩ (by decide +kernel) hH

def canonicalInput23498 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput23498 : ExponentCode := normalNode8064

theorem canonicalSound23498 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23498.moment H = canonicalOutput23498.moment H :=
  canonical_of_padded canonicalInput23498 canonicalOutput23498 (by decide) (by decide)
    ⟨false, false, canonicalPermutation135, OAI.MUB6.Certificate.PairSemantics.permutation248⟩ (by decide +kernel) hH

def canonicalInput23499 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput23499 : ExponentCode := normalNode8064

theorem canonicalSound23499 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23499.moment H = canonicalOutput23499.moment H :=
  canonical_of_padded canonicalInput23499 canonicalOutput23499 (by decide) (by decide)
    ⟨false, false, canonicalPermutation200, OAI.MUB6.Certificate.PairSemantics.permutation248⟩ (by decide +kernel) hH

def canonicalInput23500 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput23500 : ExponentCode := normalNode3656

theorem canonicalSound23500 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23500.moment H = canonicalOutput23500.moment H :=
  canonical_of_padded canonicalInput23500 canonicalOutput23500 (by decide) (by decide)
    ⟨false, true, canonicalPermutation62, OAI.MUB6.Certificate.PairSemantics.permutation180⟩ (by decide +kernel) hH

def canonicalInput23501 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput23501 : ExponentCode := normalNode8064

theorem canonicalSound23501 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23501.moment H = canonicalOutput23501.moment H :=
  canonical_of_padded canonicalInput23501 canonicalOutput23501 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation331, OAI.MUB6.Certificate.PairSemantics.permutation294⟩ (by decide +kernel) hH

def canonicalInput23502 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput23502 : ExponentCode := normalNode11165

theorem canonicalSound23502 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23502.moment H = canonicalOutput23502.moment H :=
  canonical_of_padded canonicalInput23502 canonicalOutput23502 (by decide) (by decide)
    ⟨false, true, canonicalPermutation67, canonicalPermutation139⟩ (by decide +kernel) hH

def canonicalInput23503 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput23503 : ExponentCode := normalNode10869

theorem canonicalSound23503 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23503.moment H = canonicalOutput23503.moment H :=
  canonical_of_padded canonicalInput23503 canonicalOutput23503 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation356, OAI.MUB6.Certificate.PairSemantics.permutation257⟩ (by decide +kernel) hH

def canonicalInput23504 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput23504 : ExponentCode := normalNode10869

theorem canonicalSound23504 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23504.moment H = canonicalOutput23504.moment H :=
  canonical_of_padded canonicalInput23504 canonicalOutput23504 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation284, OAI.MUB6.Certificate.PairSemantics.permutation257⟩ (by decide +kernel) hH

def canonicalInput23505 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23505 : ExponentCode := normalNode11165

theorem canonicalSound23505 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23505.moment H = canonicalOutput23505.moment H :=
  canonical_of_padded canonicalInput23505 canonicalOutput23505 (by decide) (by decide)
    ⟨false, true, canonicalPermutation107, canonicalPermutation139⟩ (by decide +kernel) hH

def canonicalInput23506 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput23506 : ExponentCode := normalNode8064

theorem canonicalSound23506 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23506.moment H = canonicalOutput23506.moment H :=
  canonical_of_padded canonicalInput23506 canonicalOutput23506 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation277, OAI.MUB6.Certificate.PairSemantics.permutation294⟩ (by decide +kernel) hH

def canonicalInput23507 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput23507 : ExponentCode := normalNode8064

theorem canonicalSound23507 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23507.moment H = canonicalOutput23507.moment H :=
  canonical_of_padded canonicalInput23507 canonicalOutput23507 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation332, OAI.MUB6.Certificate.PairSemantics.permutation294⟩ (by decide +kernel) hH

def canonicalInput23508 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput23508 : ExponentCode := normalNode10869

theorem canonicalSound23508 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23508.moment H = canonicalOutput23508.moment H :=
  canonical_of_padded canonicalInput23508 canonicalOutput23508 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation356, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput23509 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput23509 : ExponentCode := normalNode11165

theorem canonicalSound23509 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23509.moment H = canonicalOutput23509.moment H :=
  canonical_of_padded canonicalInput23509 canonicalOutput23509 (by decide) (by decide)
    ⟨false, true, canonicalPermutation67, OAI.MUB6.Certificate.PairSemantics.permutation389⟩ (by decide +kernel) hH

def canonicalInput23510 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23510 : ExponentCode := normalNode11165

theorem canonicalSound23510 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23510.moment H = canonicalOutput23510.moment H :=
  canonical_of_padded canonicalInput23510 canonicalOutput23510 (by decide) (by decide)
    ⟨false, true, canonicalPermutation107, OAI.MUB6.Certificate.PairSemantics.permutation389⟩ (by decide +kernel) hH

def canonicalInput23511 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput23511 : ExponentCode := normalNode10869

theorem canonicalSound23511 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23511.moment H = canonicalOutput23511.moment H :=
  canonical_of_padded canonicalInput23511 canonicalOutput23511 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation284, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput23512 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput23512 : ExponentCode := normalNode8064

theorem canonicalSound23512 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23512.moment H = canonicalOutput23512.moment H :=
  canonical_of_padded canonicalInput23512 canonicalOutput23512 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation278, OAI.MUB6.Certificate.PairSemantics.permutation294⟩ (by decide +kernel) hH

def canonicalInput23513 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput23513 : ExponentCode := normalNode3656

theorem canonicalSound23513 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23513.moment H = canonicalOutput23513.moment H :=
  canonical_of_padded canonicalInput23513 canonicalOutput23513 (by decide) (by decide)
    ⟨false, true, canonicalPermutation95, OAI.MUB6.Certificate.PairSemantics.permutation180⟩ (by decide +kernel) hH

def canonicalInput23514 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput23514 : ExponentCode := normalNode8064

theorem canonicalSound23514 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23514.moment H = canonicalOutput23514.moment H :=
  canonical_of_padded canonicalInput23514 canonicalOutput23514 (by decide) (by decide)
    ⟨false, false, canonicalPermutation135, canonicalPermutation142⟩ (by decide +kernel) hH

def canonicalInput23515 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput23515 : ExponentCode := normalNode8064

theorem canonicalSound23515 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23515.moment H = canonicalOutput23515.moment H :=
  canonical_of_padded canonicalInput23515 canonicalOutput23515 (by decide) (by decide)
    ⟨false, false, canonicalPermutation200, canonicalPermutation142⟩ (by decide +kernel) hH

def canonicalInput23516 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput23516 : ExponentCode := normalNode3656

theorem canonicalSound23516 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23516.moment H = canonicalOutput23516.moment H :=
  canonical_of_padded canonicalInput23516 canonicalOutput23516 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation234, OAI.MUB6.Certificate.PairSemantics.permutation180⟩ (by decide +kernel) hH

def canonicalInput23517 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput23517 : ExponentCode := normalNode10869

theorem canonicalSound23517 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23517.moment H = canonicalOutput23517.moment H :=
  canonical_of_padded canonicalInput23517 canonicalOutput23517 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation355, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput23518 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput23518 : ExponentCode := normalNode8064

theorem canonicalSound23518 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23518.moment H = canonicalOutput23518.moment H :=
  canonical_of_padded canonicalInput23518 canonicalOutput23518 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation277, canonicalPermutation142⟩ (by decide +kernel) hH

def canonicalInput23519 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput23519 : ExponentCode := normalNode11165

theorem canonicalSound23519 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23519.moment H = canonicalOutput23519.moment H :=
  canonical_of_padded canonicalInput23519 canonicalOutput23519 (by decide) (by decide)
    ⟨false, true, canonicalPermutation67, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput23520 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23520 : ExponentCode := normalNode11165

theorem canonicalSound23520 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23520.moment H = canonicalOutput23520.moment H :=
  canonical_of_padded canonicalInput23520 canonicalOutput23520 (by decide) (by decide)
    ⟨false, true, canonicalPermutation107, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput23521 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput23521 : ExponentCode := normalNode8064

theorem canonicalSound23521 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23521.moment H = canonicalOutput23521.moment H :=
  canonical_of_padded canonicalInput23521 canonicalOutput23521 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation331, canonicalPermutation142⟩ (by decide +kernel) hH

def canonicalInput23522 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput23522 : ExponentCode := normalNode10869

theorem canonicalSound23522 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23522.moment H = canonicalOutput23522.moment H :=
  canonical_of_padded canonicalInput23522 canonicalOutput23522 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation283, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput23523 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput23523 : ExponentCode := normalNode11165

theorem canonicalSound23523 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23523.moment H = canonicalOutput23523.moment H :=
  canonical_of_padded canonicalInput23523 canonicalOutput23523 (by decide) (by decide)
    ⟨false, true, canonicalPermutation279, canonicalPermutation139⟩ (by decide +kernel) hH

def canonicalInput23524 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput23524 : ExponentCode := normalNode11165

theorem canonicalSound23524 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23524.moment H = canonicalOutput23524.moment H :=
  canonical_of_padded canonicalInput23524 canonicalOutput23524 (by decide) (by decide)
    ⟨false, true, canonicalPermutation279, OAI.MUB6.Certificate.PairSemantics.permutation389⟩ (by decide +kernel) hH

def canonicalInput23525 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput23525 : ExponentCode := normalNode11165

theorem canonicalSound23525 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23525.moment H = canonicalOutput23525.moment H :=
  canonical_of_padded canonicalInput23525 canonicalOutput23525 (by decide) (by decide)
    ⟨false, true, canonicalPermutation279, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput23526 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23526 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node44⟩

theorem canonicalSound23526 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23526.moment H = canonicalOutput23526.moment H :=
  canonical_of_padded canonicalInput23526 canonicalOutput23526 (by decide) (by decide)
    ⟨false, true, canonicalPermutation60, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput23527 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput23527 : ExponentCode := normalNode11165

theorem canonicalSound23527 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23527.moment H = canonicalOutput23527.moment H :=
  canonical_of_padded canonicalInput23527 canonicalOutput23527 (by decide) (by decide)
    ⟨false, true, canonicalPermutation280, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput23528 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput23528 : ExponentCode := normalNode11165

theorem canonicalSound23528 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23528.moment H = canonicalOutput23528.moment H :=
  canonical_of_padded canonicalInput23528 canonicalOutput23528 (by decide) (by decide)
    ⟨false, true, canonicalPermutation280, OAI.MUB6.Certificate.PairSemantics.permutation389⟩ (by decide +kernel) hH

def canonicalInput23529 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput23529 : ExponentCode := normalNode11165

theorem canonicalSound23529 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23529.moment H = canonicalOutput23529.moment H :=
  canonical_of_padded canonicalInput23529 canonicalOutput23529 (by decide) (by decide)
    ⟨false, true, canonicalPermutation280, canonicalPermutation139⟩ (by decide +kernel) hH

def canonicalInput23530 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput23530 : ExponentCode := normalNode8064

theorem canonicalSound23530 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23530.moment H = canonicalOutput23530.moment H :=
  canonical_of_padded canonicalInput23530 canonicalOutput23530 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation277, OAI.MUB6.Certificate.PairSemantics.permutation248⟩ (by decide +kernel) hH

def canonicalInput23531 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput23531 : ExponentCode := normalNode10869

theorem canonicalSound23531 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23531.moment H = canonicalOutput23531.moment H :=
  canonical_of_padded canonicalInput23531 canonicalOutput23531 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation355, OAI.MUB6.Certificate.PairSemantics.permutation257⟩ (by decide +kernel) hH

def canonicalInput23532 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23532 : ExponentCode := normalNode11165

theorem canonicalSound23532 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23532.moment H = canonicalOutput23532.moment H :=
  canonical_of_padded canonicalInput23532 canonicalOutput23532 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation383, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput23533 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput23533 : ExponentCode := normalNode11165

theorem canonicalSound23533 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23533.moment H = canonicalOutput23533.moment H :=
  canonical_of_padded canonicalInput23533 canonicalOutput23533 (by decide) (by decide)
    ⟨false, true, canonicalPermutation123, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput23534 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput23534 : ExponentCode := normalNode10869

theorem canonicalSound23534 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23534.moment H = canonicalOutput23534.moment H :=
  canonical_of_padded canonicalInput23534 canonicalOutput23534 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation283, OAI.MUB6.Certificate.PairSemantics.permutation257⟩ (by decide +kernel) hH

def canonicalInput23535 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput23535 : ExponentCode := normalNode8064

theorem canonicalSound23535 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23535.moment H = canonicalOutput23535.moment H :=
  canonical_of_padded canonicalInput23535 canonicalOutput23535 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation331, OAI.MUB6.Certificate.PairSemantics.permutation248⟩ (by decide +kernel) hH

def canonicalInput23536 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput23536 : ExponentCode := normalNode10869

theorem canonicalSound23536 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23536.moment H = canonicalOutput23536.moment H :=
  canonical_of_padded canonicalInput23536 canonicalOutput23536 (by decide) (by decide)
    ⟨false, true, canonicalPermutation281, OAI.MUB6.Certificate.PairSemantics.permutation257⟩ (by decide +kernel) hH

def canonicalInput23537 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23537 : ExponentCode := normalNode11165

theorem canonicalSound23537 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23537.moment H = canonicalOutput23537.moment H :=
  canonical_of_padded canonicalInput23537 canonicalOutput23537 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation383, OAI.MUB6.Certificate.PairSemantics.permutation389⟩ (by decide +kernel) hH

def canonicalInput23538 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput23538 : ExponentCode := normalNode8064

theorem canonicalSound23538 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23538.moment H = canonicalOutput23538.moment H :=
  canonical_of_padded canonicalInput23538 canonicalOutput23538 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation278, canonicalPermutation142⟩ (by decide +kernel) hH

def canonicalInput23539 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput23539 : ExponentCode := normalNode8064

theorem canonicalSound23539 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23539.moment H = canonicalOutput23539.moment H :=
  canonical_of_padded canonicalInput23539 canonicalOutput23539 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation332, canonicalPermutation142⟩ (by decide +kernel) hH

def canonicalInput23540 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput23540 : ExponentCode := normalNode11165

theorem canonicalSound23540 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23540.moment H = canonicalOutput23540.moment H :=
  canonical_of_padded canonicalInput23540 canonicalOutput23540 (by decide) (by decide)
    ⟨false, true, canonicalPermutation123, OAI.MUB6.Certificate.PairSemantics.permutation389⟩ (by decide +kernel) hH

def canonicalInput23541 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput23541 : ExponentCode := normalNode10869

theorem canonicalSound23541 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23541.moment H = canonicalOutput23541.moment H :=
  canonical_of_padded canonicalInput23541 canonicalOutput23541 (by decide) (by decide)
    ⟨false, true, canonicalPermutation160, OAI.MUB6.Certificate.PairSemantics.permutation257⟩ (by decide +kernel) hH

def canonicalInput23542 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput23542 : ExponentCode := normalNode8064

theorem canonicalSound23542 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23542.moment H = canonicalOutput23542.moment H :=
  canonical_of_padded canonicalInput23542 canonicalOutput23542 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation278, OAI.MUB6.Certificate.PairSemantics.permutation248⟩ (by decide +kernel) hH

def canonicalInput23543 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23543 : ExponentCode := normalNode11165

theorem canonicalSound23543 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23543.moment H = canonicalOutput23543.moment H :=
  canonical_of_padded canonicalInput23543 canonicalOutput23543 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation383, canonicalPermutation139⟩ (by decide +kernel) hH

def canonicalInput23544 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput23544 : ExponentCode := normalNode10869

theorem canonicalSound23544 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23544.moment H = canonicalOutput23544.moment H :=
  canonical_of_padded canonicalInput23544 canonicalOutput23544 (by decide) (by decide)
    ⟨false, true, canonicalPermutation281, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput23545 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput23545 : ExponentCode := normalNode10869

theorem canonicalSound23545 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23545.moment H = canonicalOutput23545.moment H :=
  canonical_of_padded canonicalInput23545 canonicalOutput23545 (by decide) (by decide)
    ⟨false, true, canonicalPermutation160, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput23546 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput23546 : ExponentCode := normalNode11165

theorem canonicalSound23546 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23546.moment H = canonicalOutput23546.moment H :=
  canonical_of_padded canonicalInput23546 canonicalOutput23546 (by decide) (by decide)
    ⟨false, true, canonicalPermutation123, canonicalPermutation139⟩ (by decide +kernel) hH

def canonicalInput23547 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput23547 : ExponentCode := normalNode8064

theorem canonicalSound23547 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23547.moment H = canonicalOutput23547.moment H :=
  canonical_of_padded canonicalInput23547 canonicalOutput23547 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation332, OAI.MUB6.Certificate.PairSemantics.permutation248⟩ (by decide +kernel) hH

def canonicalInput23548 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput23548 : ExponentCode := normalNode3656

theorem canonicalSound23548 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23548.moment H = canonicalOutput23548.moment H :=
  canonical_of_padded canonicalInput23548 canonicalOutput23548 (by decide) (by decide)
    ⟨false, true, canonicalPermutation101, OAI.MUB6.Certificate.PairSemantics.permutation180⟩ (by decide +kernel) hH

def canonicalInput23549 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput23549 : ExponentCode := normalNode8064

theorem canonicalSound23549 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23549.moment H = canonicalOutput23549.moment H :=
  canonical_of_padded canonicalInput23549 canonicalOutput23549 (by decide) (by decide)
    ⟨false, false, canonicalPermutation135, OAI.MUB6.Certificate.PairSemantics.permutation294⟩ (by decide +kernel) hH

def canonicalInput23550 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput23550 : ExponentCode := normalNode8064

theorem canonicalSound23550 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23550.moment H = canonicalOutput23550.moment H :=
  canonical_of_padded canonicalInput23550 canonicalOutput23550 (by decide) (by decide)
    ⟨false, false, canonicalPermutation200, OAI.MUB6.Certificate.PairSemantics.permutation294⟩ (by decide +kernel) hH

def canonicalInput23551 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput23551 : ExponentCode := normalNode3656

theorem canonicalSound23551 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23551.moment H = canonicalOutput23551.moment H :=
  canonical_of_padded canonicalInput23551 canonicalOutput23551 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation231, OAI.MUB6.Certificate.PairSemantics.permutation180⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput33472 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput33472 : ExponentCode := normalNode10453

theorem canonicalSound33472 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33472.moment H = canonicalOutput33472.moment H :=
  canonical_of_padded canonicalInput33472 canonicalOutput33472 (by decide) (by decide)
    ⟨false, false, canonicalPermutation253, canonicalPermutation229⟩ (by decide +kernel) hH

def canonicalInput33473 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput33473 : ExponentCode := normalNode10645

theorem canonicalSound33473 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33473.moment H = canonicalOutput33473.moment H :=
  canonical_of_padded canonicalInput33473 canonicalOutput33473 (by decide) (by decide)
    ⟨false, false, canonicalPermutation154, canonicalPermutation110⟩ (by decide +kernel) hH

def canonicalInput33474 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput33474 : ExponentCode := normalNode10645

theorem canonicalSound33474 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33474.moment H = canonicalOutput33474.moment H :=
  canonical_of_padded canonicalInput33474 canonicalOutput33474 (by decide) (by decide)
    ⟨false, false, canonicalPermutation154, canonicalPermutation230⟩ (by decide +kernel) hH

def canonicalInput33475 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput33475 : ExponentCode := normalNode10645

theorem canonicalSound33475 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33475.moment H = canonicalOutput33475.moment H :=
  canonical_of_padded canonicalInput33475 canonicalOutput33475 (by decide) (by decide)
    ⟨false, false, canonicalPermutation154, canonicalPermutation235⟩ (by decide +kernel) hH

def canonicalInput33476 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33476 : ExponentCode := ⟨2, 2, OAI.MUB6.Certificate.PairSemantics.node5⟩

theorem canonicalSound33476 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33476.moment H = canonicalOutput33476.moment H :=
  canonical_of_padded canonicalInput33476 canonicalOutput33476 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation232, OAI.MUB6.Certificate.PairSemantics.permutation213⟩ (by decide +kernel) hH

def canonicalInput33477 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput33477 : ExponentCode := normalNode10645

theorem canonicalSound33477 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33477.moment H = canonicalOutput33477.moment H :=
  canonical_of_padded canonicalInput33477 canonicalOutput33477 (by decide) (by decide)
    ⟨false, false, canonicalPermutation390, canonicalPermutation235⟩ (by decide +kernel) hH

def canonicalInput33478 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput33478 : ExponentCode := normalNode10645

theorem canonicalSound33478 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33478.moment H = canonicalOutput33478.moment H :=
  canonical_of_padded canonicalInput33478 canonicalOutput33478 (by decide) (by decide)
    ⟨false, false, canonicalPermutation390, canonicalPermutation230⟩ (by decide +kernel) hH

def canonicalInput33479 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput33479 : ExponentCode := normalNode10645

theorem canonicalSound33479 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33479.moment H = canonicalOutput33479.moment H :=
  canonical_of_padded canonicalInput33479 canonicalOutput33479 (by decide) (by decide)
    ⟨false, false, canonicalPermutation390, canonicalPermutation110⟩ (by decide +kernel) hH

def canonicalInput33480 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput33480 : ExponentCode := normalNode8361

theorem canonicalSound33480 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33480.moment H = canonicalOutput33480.moment H :=
  canonical_of_padded canonicalInput33480 canonicalOutput33480 (by decide) (by decide)
    ⟨false, false, canonicalPermutation362, canonicalPermutation226⟩ (by decide +kernel) hH

def canonicalInput33481 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput33481 : ExponentCode := normalNode10453

theorem canonicalSound33481 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33481.moment H = canonicalOutput33481.moment H :=
  canonical_of_padded canonicalInput33481 canonicalOutput33481 (by decide) (by decide)
    ⟨false, false, canonicalPermutation244, OAI.MUB6.Certificate.PairSemantics.permutation205⟩ (by decide +kernel) hH

def canonicalInput33482 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33482 : ExponentCode := normalNode10645

theorem canonicalSound33482 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33482.moment H = canonicalOutput33482.moment H :=
  canonical_of_padded canonicalInput33482 canonicalOutput33482 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation238, canonicalPermutation235⟩ (by decide +kernel) hH

def canonicalInput33483 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput33483 : ExponentCode := normalNode10645

theorem canonicalSound33483 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33483.moment H = canonicalOutput33483.moment H :=
  canonical_of_padded canonicalInput33483 canonicalOutput33483 (by decide) (by decide)
    ⟨false, false, canonicalPermutation295, canonicalPermutation235⟩ (by decide +kernel) hH

def canonicalInput33484 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput33484 : ExponentCode := normalNode10453

theorem canonicalSound33484 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33484.moment H = canonicalOutput33484.moment H :=
  canonical_of_padded canonicalInput33484 canonicalOutput33484 (by decide) (by decide)
    ⟨false, false, canonicalPermutation253, OAI.MUB6.Certificate.PairSemantics.permutation205⟩ (by decide +kernel) hH

def canonicalInput33485 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput33485 : ExponentCode := normalNode8361

theorem canonicalSound33485 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33485.moment H = canonicalOutput33485.moment H :=
  canonical_of_padded canonicalInput33485 canonicalOutput33485 (by decide) (by decide)
    ⟨false, false, canonicalPermutation358, canonicalPermutation226⟩ (by decide +kernel) hH

def canonicalInput33486 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput33486 : ExponentCode := normalNode10453

theorem canonicalSound33486 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33486.moment H = canonicalOutput33486.moment H :=
  canonical_of_padded canonicalInput33486 canonicalOutput33486 (by decide) (by decide)
    ⟨false, false, canonicalPermutation248, OAI.MUB6.Certificate.PairSemantics.permutation205⟩ (by decide +kernel) hH

def canonicalInput33487 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33487 : ExponentCode := normalNode10645

theorem canonicalSound33487 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33487.moment H = canonicalOutput33487.moment H :=
  canonical_of_padded canonicalInput33487 canonicalOutput33487 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation238, canonicalPermutation230⟩ (by decide +kernel) hH

def canonicalInput33488 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput33488 : ExponentCode := normalNode8361

theorem canonicalSound33488 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33488.moment H = canonicalOutput33488.moment H :=
  canonical_of_padded canonicalInput33488 canonicalOutput33488 (by decide) (by decide)
    ⟨false, false, canonicalPermutation313, canonicalPermutation233⟩ (by decide +kernel) hH

def canonicalInput33489 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput33489 : ExponentCode := normalNode8361

theorem canonicalSound33489 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33489.moment H = canonicalOutput33489.moment H :=
  canonical_of_padded canonicalInput33489 canonicalOutput33489 (by decide) (by decide)
    ⟨false, false, canonicalPermutation360, canonicalPermutation233⟩ (by decide +kernel) hH

def canonicalInput33490 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput33490 : ExponentCode := normalNode10645

theorem canonicalSound33490 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33490.moment H = canonicalOutput33490.moment H :=
  canonical_of_padded canonicalInput33490 canonicalOutput33490 (by decide) (by decide)
    ⟨false, false, canonicalPermutation295, canonicalPermutation230⟩ (by decide +kernel) hH

def canonicalInput33491 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput33491 : ExponentCode := normalNode10453

theorem canonicalSound33491 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33491.moment H = canonicalOutput33491.moment H :=
  canonical_of_padded canonicalInput33491 canonicalOutput33491 (by decide) (by decide)
    ⟨false, false, canonicalPermutation246, OAI.MUB6.Certificate.PairSemantics.permutation205⟩ (by decide +kernel) hH

def canonicalInput33492 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput33492 : ExponentCode := normalNode8361

theorem canonicalSound33492 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33492.moment H = canonicalOutput33492.moment H :=
  canonical_of_padded canonicalInput33492 canonicalOutput33492 (by decide) (by decide)
    ⟨false, false, canonicalPermutation313, canonicalPermutation226⟩ (by decide +kernel) hH

def canonicalInput33493 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33493 : ExponentCode := normalNode10645

theorem canonicalSound33493 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33493.moment H = canonicalOutput33493.moment H :=
  canonical_of_padded canonicalInput33493 canonicalOutput33493 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation238, canonicalPermutation110⟩ (by decide +kernel) hH

def canonicalInput33494 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput33494 : ExponentCode := normalNode10453

theorem canonicalSound33494 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33494.moment H = canonicalOutput33494.moment H :=
  canonical_of_padded canonicalInput33494 canonicalOutput33494 (by decide) (by decide)
    ⟨false, false, canonicalPermutation248, canonicalPermutation229⟩ (by decide +kernel) hH

def canonicalInput33495 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput33495 : ExponentCode := normalNode10453

theorem canonicalSound33495 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33495.moment H = canonicalOutput33495.moment H :=
  canonical_of_padded canonicalInput33495 canonicalOutput33495 (by decide) (by decide)
    ⟨false, false, canonicalPermutation246, canonicalPermutation229⟩ (by decide +kernel) hH

def canonicalInput33496 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput33496 : ExponentCode := normalNode10645

theorem canonicalSound33496 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33496.moment H = canonicalOutput33496.moment H :=
  canonical_of_padded canonicalInput33496 canonicalOutput33496 (by decide) (by decide)
    ⟨false, false, canonicalPermutation295, canonicalPermutation110⟩ (by decide +kernel) hH

def canonicalInput33497 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput33497 : ExponentCode := normalNode8361

theorem canonicalSound33497 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33497.moment H = canonicalOutput33497.moment H :=
  canonical_of_padded canonicalInput33497 canonicalOutput33497 (by decide) (by decide)
    ⟨false, false, canonicalPermutation360, canonicalPermutation226⟩ (by decide +kernel) hH

def canonicalInput33498 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput33498 : ExponentCode := normalNode11165

theorem canonicalSound33498 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33498.moment H = canonicalOutput33498.moment H :=
  canonical_of_padded canonicalInput33498 canonicalOutput33498 (by decide) (by decide)
    ⟨false, true, canonicalPermutation250, OAI.MUB6.Certificate.PairSemantics.permutation202⟩ (by decide +kernel) hH

def canonicalInput33499 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput33499 : ExponentCode := normalNode8361

theorem canonicalSound33499 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33499.moment H = canonicalOutput33499.moment H :=
  canonical_of_padded canonicalInput33499 canonicalOutput33499 (by decide) (by decide)
    ⟨false, false, canonicalPermutation316, canonicalPermutation228⟩ (by decide +kernel) hH

def canonicalInput33500 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput33500 : ExponentCode := normalNode8361

theorem canonicalSound33500 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33500.moment H = canonicalOutput33500.moment H :=
  canonical_of_padded canonicalInput33500 canonicalOutput33500 (by decide) (by decide)
    ⟨false, false, canonicalPermutation367, canonicalPermutation228⟩ (by decide +kernel) hH

def canonicalInput33501 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput33501 : ExponentCode := normalNode11165

theorem canonicalSound33501 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33501.moment H = canonicalOutput33501.moment H :=
  canonical_of_padded canonicalInput33501 canonicalOutput33501 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation226, OAI.MUB6.Certificate.PairSemantics.permutation202⟩ (by decide +kernel) hH

def canonicalInput33502 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 2, 0, -2], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -2, 1, 1]]⟩

def canonicalOutput33502 : ExponentCode := normalNode10415

theorem canonicalSound33502 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33502.moment H = canonicalOutput33502.moment H :=
  canonical_of_padded canonicalInput33502 canonicalOutput33502 (by decide) (by decide)
    ⟨false, true, canonicalPermutation263, canonicalPermutation231⟩ (by decide +kernel) hH

def canonicalInput33503 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 3, -1, -2], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -2, 0, 2]]⟩

def canonicalOutput33503 : ExponentCode := normalNode10371

theorem canonicalSound33503 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33503.moment H = canonicalOutput33503.moment H :=
  canonical_of_padded canonicalInput33503 canonicalOutput33503 (by decide) (by decide)
    ⟨false, false, canonicalPermutation245, canonicalPermutation231⟩ (by decide +kernel) hH

def canonicalInput33504 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![2, 0, 0, 0, -2, 0], ![0, 0, 0, -1, 1, 0], ![-2, 0, 0, 1, 1, 0]]⟩

def canonicalOutput33504 : ExponentCode := normalNode10274

theorem canonicalSound33504 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33504.moment H = canonicalOutput33504.moment H :=
  canonical_of_padded canonicalInput33504 canonicalOutput33504 (by decide) (by decide)
    ⟨false, true, canonicalPermutation261, OAI.MUB6.Certificate.PairSemantics.permutation220⟩ (by decide +kernel) hH

def canonicalInput33505 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, -1, 0, 0], ![1, 0, 0, -1, 0, 0]]⟩

def canonicalOutput33505 : ExponentCode := normalNode10685

theorem canonicalSound33505 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33505.moment H = canonicalOutput33505.moment H :=
  canonical_of_padded canonicalInput33505 canonicalOutput33505 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation213, OAI.MUB6.Certificate.PairSemantics.permutation300⟩ (by decide +kernel) hH

def canonicalInput33506 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, 0, -1, 0], ![1, 0, 0, -2, 1, 0]]⟩

def canonicalOutput33506 : ExponentCode := normalNode10452

theorem canonicalSound33506 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33506.moment H = canonicalOutput33506.moment H :=
  canonical_of_padded canonicalInput33506 canonicalOutput33506 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation270, canonicalPermutation85⟩ (by decide +kernel) hH

def canonicalInput33507 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-2, 0, 0, 3, -1, 0], ![0, 0, 0, -1, 1, 0], ![2, 0, 0, -2, 0, 0]]⟩

def canonicalOutput33507 : ExponentCode := normalNode10367

theorem canonicalSound33507 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33507.moment H = canonicalOutput33507.moment H :=
  canonical_of_padded canonicalInput33507 canonicalOutput33507 (by decide) (by decide)
    ⟨false, false, canonicalPermutation241, OAI.MUB6.Certificate.PairSemantics.permutation403⟩ (by decide +kernel) hH

def canonicalInput33508 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput33508 : ExponentCode := normalNode10869

theorem canonicalSound33508 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33508.moment H = canonicalOutput33508.moment H :=
  canonical_of_padded canonicalInput33508 canonicalOutput33508 (by decide) (by decide)
    ⟨false, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput33509 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput33509 : ExponentCode := normalNode8067

theorem canonicalSound33509 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33509.moment H = canonicalOutput33509.moment H :=
  canonical_of_padded canonicalInput33509 canonicalOutput33509 (by decide) (by decide)
    ⟨false, false, canonicalPermutation169, canonicalPermutation121⟩ (by decide +kernel) hH

def canonicalInput33510 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput33510 : ExponentCode := normalNode8067

theorem canonicalSound33510 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33510.moment H = canonicalOutput33510.moment H :=
  canonical_of_padded canonicalInput33510 canonicalOutput33510 (by decide) (by decide)
    ⟨false, false, canonicalPermutation168, canonicalPermutation121⟩ (by decide +kernel) hH

def canonicalInput33511 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput33511 : ExponentCode := normalNode10869

theorem canonicalSound33511 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33511.moment H = canonicalOutput33511.moment H :=
  canonical_of_padded canonicalInput33511 canonicalOutput33511 (by decide) (by decide)
    ⟨false, true, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput33512 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput33512 : ExponentCode := normalNode8067

theorem canonicalSound33512 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33512.moment H = canonicalOutput33512.moment H :=
  canonical_of_padded canonicalInput33512 canonicalOutput33512 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation337, OAI.MUB6.Certificate.PairSemantics.permutation296⟩ (by decide +kernel) hH

def canonicalInput33513 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput33513 : ExponentCode := normalNode10453

theorem canonicalSound33513 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33513.moment H = canonicalOutput33513.moment H :=
  canonical_of_padded canonicalInput33513 canonicalOutput33513 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation290, canonicalPermutation130⟩ (by decide +kernel) hH

def canonicalInput33514 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput33514 : ExponentCode := normalNode10435

theorem canonicalSound33514 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33514.moment H = canonicalOutput33514.moment H :=
  canonical_of_padded canonicalInput33514 canonicalOutput33514 (by decide) (by decide)
    ⟨false, false, canonicalPermutation353, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput33515 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput33515 : ExponentCode := normalNode10435

theorem canonicalSound33515 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33515.moment H = canonicalOutput33515.moment H :=
  canonical_of_padded canonicalInput33515 canonicalOutput33515 (by decide) (by decide)
    ⟨false, false, canonicalPermutation393, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput33516 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33516 : ExponentCode := normalNode10453

theorem canonicalSound33516 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33516.moment H = canonicalOutput33516.moment H :=
  canonical_of_padded canonicalInput33516 canonicalOutput33516 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation379, canonicalPermutation130⟩ (by decide +kernel) hH

def canonicalInput33517 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput33517 : ExponentCode := normalNode8067

theorem canonicalSound33517 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33517.moment H = canonicalOutput33517.moment H :=
  canonical_of_padded canonicalInput33517 canonicalOutput33517 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation280, OAI.MUB6.Certificate.PairSemantics.permutation296⟩ (by decide +kernel) hH

def canonicalInput33518 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput33518 : ExponentCode := normalNode8067

theorem canonicalSound33518 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33518.moment H = canonicalOutput33518.moment H :=
  canonical_of_padded canonicalInput33518 canonicalOutput33518 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation338, OAI.MUB6.Certificate.PairSemantics.permutation296⟩ (by decide +kernel) hH

def canonicalInput33519 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput33519 : ExponentCode := normalNode10435

theorem canonicalSound33519 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33519.moment H = canonicalOutput33519.moment H :=
  canonical_of_padded canonicalInput33519 canonicalOutput33519 (by decide) (by decide)
    ⟨false, false, canonicalPermutation353, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput33520 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput33520 : ExponentCode := normalNode10453

theorem canonicalSound33520 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33520.moment H = canonicalOutput33520.moment H :=
  canonical_of_padded canonicalInput33520 canonicalOutput33520 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation290, OAI.MUB6.Certificate.PairSemantics.permutation375⟩ (by decide +kernel) hH

def canonicalInput33521 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33521 : ExponentCode := normalNode10453

theorem canonicalSound33521 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33521.moment H = canonicalOutput33521.moment H :=
  canonical_of_padded canonicalInput33521 canonicalOutput33521 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation379, OAI.MUB6.Certificate.PairSemantics.permutation375⟩ (by decide +kernel) hH

def canonicalInput33522 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput33522 : ExponentCode := normalNode10435

theorem canonicalSound33522 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33522.moment H = canonicalOutput33522.moment H :=
  canonical_of_padded canonicalInput33522 canonicalOutput33522 (by decide) (by decide)
    ⟨false, false, canonicalPermutation393, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput33523 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput33523 : ExponentCode := normalNode8067

theorem canonicalSound33523 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33523.moment H = canonicalOutput33523.moment H :=
  canonical_of_padded canonicalInput33523 canonicalOutput33523 (by decide) (by decide)
    ⟨false, false, canonicalPermutation164, OAI.MUB6.Certificate.PairSemantics.permutation296⟩ (by decide +kernel) hH

def canonicalInput33524 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput33524 : ExponentCode := normalNode10869

theorem canonicalSound33524 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33524.moment H = canonicalOutput33524.moment H :=
  canonical_of_padded canonicalInput33524 canonicalOutput33524 (by decide) (by decide)
    ⟨false, true, canonicalPermutation20, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput33525 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput33525 : ExponentCode := normalNode8067

theorem canonicalSound33525 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33525.moment H = canonicalOutput33525.moment H :=
  canonical_of_padded canonicalInput33525 canonicalOutput33525 (by decide) (by decide)
    ⟨false, false, canonicalPermutation169, canonicalPermutation120⟩ (by decide +kernel) hH

def canonicalInput33526 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput33526 : ExponentCode := normalNode8067

theorem canonicalSound33526 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33526.moment H = canonicalOutput33526.moment H :=
  canonical_of_padded canonicalInput33526 canonicalOutput33526 (by decide) (by decide)
    ⟨false, false, canonicalPermutation168, canonicalPermutation120⟩ (by decide +kernel) hH

def canonicalInput33527 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput33527 : ExponentCode := normalNode10869

theorem canonicalSound33527 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33527.moment H = canonicalOutput33527.moment H :=
  canonical_of_padded canonicalInput33527 canonicalOutput33527 (by decide) (by decide)
    ⟨false, true, canonicalPermutation23, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput33528 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput33528 : ExponentCode := normalNode10435

theorem canonicalSound33528 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33528.moment H = canonicalOutput33528.moment H :=
  canonical_of_padded canonicalInput33528 canonicalOutput33528 (by decide) (by decide)
    ⟨false, false, canonicalPermutation394, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput33529 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput33529 : ExponentCode := normalNode8067

theorem canonicalSound33529 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33529.moment H = canonicalOutput33529.moment H :=
  canonical_of_padded canonicalInput33529 canonicalOutput33529 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation280, canonicalPermutation120⟩ (by decide +kernel) hH

def canonicalInput33530 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput33530 : ExponentCode := normalNode10453

theorem canonicalSound33530 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33530.moment H = canonicalOutput33530.moment H :=
  canonical_of_padded canonicalInput33530 canonicalOutput33530 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation290, canonicalPermutation121⟩ (by decide +kernel) hH

def canonicalInput33531 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33531 : ExponentCode := normalNode10453

theorem canonicalSound33531 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33531.moment H = canonicalOutput33531.moment H :=
  canonical_of_padded canonicalInput33531 canonicalOutput33531 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation379, canonicalPermutation121⟩ (by decide +kernel) hH

def canonicalInput33532 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput33532 : ExponentCode := normalNode8067

theorem canonicalSound33532 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33532.moment H = canonicalOutput33532.moment H :=
  canonical_of_padded canonicalInput33532 canonicalOutput33532 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation337, canonicalPermutation120⟩ (by decide +kernel) hH

def canonicalInput33533 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput33533 : ExponentCode := normalNode10435

theorem canonicalSound33533 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33533.moment H = canonicalOutput33533.moment H :=
  canonical_of_padded canonicalInput33533 canonicalOutput33533 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation220, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput33534 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput33534 : ExponentCode := normalNode10453

theorem canonicalSound33534 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33534.moment H = canonicalOutput33534.moment H :=
  canonical_of_padded canonicalInput33534 canonicalOutput33534 (by decide) (by decide)
    ⟨false, false, canonicalPermutation167, canonicalPermutation130⟩ (by decide +kernel) hH

def canonicalInput33535 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput33535 : ExponentCode := normalNode10453

theorem canonicalSound33535 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33535.moment H = canonicalOutput33535.moment H :=
  canonical_of_padded canonicalInput33535 canonicalOutput33535 (by decide) (by decide)
    ⟨false, false, canonicalPermutation167, OAI.MUB6.Certificate.PairSemantics.permutation375⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

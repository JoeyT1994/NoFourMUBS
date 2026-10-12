import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations
import OAI.Analysis.MutuallyUnbiased.PairTargets.ExtraPermutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput30400 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput30400 : ExponentCode := normalNode10645

theorem canonicalSound30400 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30400.moment H = canonicalOutput30400.moment H :=
  canonical_of_padded canonicalInput30400 canonicalOutput30400 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation184, canonicalPermutation25⟩ (by decide +kernel) hH

def canonicalInput30401 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput30401 : ExponentCode := normalNode10645

theorem canonicalSound30401 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30401.moment H = canonicalOutput30401.moment H :=
  canonical_of_padded canonicalInput30401 canonicalOutput30401 (by decide) (by decide)
    ⟨false, false, canonicalPermutation14, canonicalPermutation25⟩ (by decide +kernel) hH

def canonicalInput30402 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput30402 : ExponentCode := normalNode8361

theorem canonicalSound30402 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30402.moment H = canonicalOutput30402.moment H :=
  canonical_of_padded canonicalInput30402 canonicalOutput30402 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation181⟩ (by decide +kernel) hH

def canonicalInput30403 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput30403 : ExponentCode := normalNode10453

theorem canonicalSound30403 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30403.moment H = canonicalOutput30403.moment H :=
  canonical_of_padded canonicalInput30403 canonicalOutput30403 (by decide) (by decide)
    ⟨false, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput30404 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput30404 : ExponentCode := normalNode10645

theorem canonicalSound30404 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30404.moment H = canonicalOutput30404.moment H :=
  canonical_of_padded canonicalInput30404 canonicalOutput30404 (by decide) (by decide)
    ⟨false, false, canonicalPermutation25, OAI.MUB6.Certificate.PairSemantics.permutation184⟩ (by decide +kernel) hH

def canonicalInput30405 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput30405 : ExponentCode := normalNode10645

theorem canonicalSound30405 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30405.moment H = canonicalOutput30405.moment H :=
  canonical_of_padded canonicalInput30405 canonicalOutput30405 (by decide) (by decide)
    ⟨false, false, canonicalPermutation25, canonicalPermutation14⟩ (by decide +kernel) hH

def canonicalInput30406 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput30406 : ExponentCode := normalNode10645

theorem canonicalSound30406 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30406.moment H = canonicalOutput30406.moment H :=
  canonical_of_padded canonicalInput30406 canonicalOutput30406 (by decide) (by decide)
    ⟨false, false, canonicalPermutation25, canonicalPermutation25⟩ (by decide +kernel) hH

def canonicalInput30407 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput30407 : ExponentCode := ⟨2, 2, OAI.MUB6.Certificate.PairSemantics.node5⟩

theorem canonicalSound30407 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30407.moment H = canonicalOutput30407.moment H :=
  canonical_of_padded canonicalInput30407 canonicalOutput30407 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation180, OAI.MUB6.Certificate.PairSemantics.permutation180⟩ (by decide +kernel) hH

def canonicalInput30408 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput30408 : ExponentCode := normalNode10645

theorem canonicalSound30408 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30408.moment H = canonicalOutput30408.moment H :=
  canonical_of_padded canonicalInput30408 canonicalOutput30408 (by decide) (by decide)
    ⟨false, false, canonicalPermutation55, canonicalPermutation25⟩ (by decide +kernel) hH

def canonicalInput30409 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput30409 : ExponentCode := normalNode10645

theorem canonicalSound30409 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30409.moment H = canonicalOutput30409.moment H :=
  canonical_of_padded canonicalInput30409 canonicalOutput30409 (by decide) (by decide)
    ⟨false, false, canonicalPermutation55, canonicalPermutation14⟩ (by decide +kernel) hH

def canonicalInput30410 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput30410 : ExponentCode := normalNode10645

theorem canonicalSound30410 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30410.moment H = canonicalOutput30410.moment H :=
  canonical_of_padded canonicalInput30410 canonicalOutput30410 (by decide) (by decide)
    ⟨false, false, canonicalPermutation55, OAI.MUB6.Certificate.PairSemantics.permutation184⟩ (by decide +kernel) hH

def canonicalInput30411 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput30411 : ExponentCode := normalNode8361

theorem canonicalSound30411 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30411.moment H = canonicalOutput30411.moment H :=
  canonical_of_padded canonicalInput30411 canonicalOutput30411 (by decide) (by decide)
    ⟨false, false, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation178⟩ (by decide +kernel) hH

def canonicalInput30412 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput30412 : ExponentCode := normalNode10453

theorem canonicalSound30412 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30412.moment H = canonicalOutput30412.moment H :=
  canonical_of_padded canonicalInput30412 canonicalOutput30412 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput30413 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput30413 : ExponentCode := normalNode10645

theorem canonicalSound30413 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30413.moment H = canonicalOutput30413.moment H :=
  canonical_of_padded canonicalInput30413 canonicalOutput30413 (by decide) (by decide)
    ⟨false, false, canonicalPermutation21, canonicalPermutation25⟩ (by decide +kernel) hH

def canonicalInput30414 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput30414 : ExponentCode := normalNode10645

theorem canonicalSound30414 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30414.moment H = canonicalOutput30414.moment H :=
  canonical_of_padded canonicalInput30414 canonicalOutput30414 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation186, canonicalPermutation25⟩ (by decide +kernel) hH

def canonicalInput30415 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput30415 : ExponentCode := normalNode10453

theorem canonicalSound30415 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30415.moment H = canonicalOutput30415.moment H :=
  canonical_of_padded canonicalInput30415 canonicalOutput30415 (by decide) (by decide)
    ⟨false, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput30416 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput30416 : ExponentCode := normalNode8361

theorem canonicalSound30416 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30416.moment H = canonicalOutput30416.moment H :=
  canonical_of_padded canonicalInput30416 canonicalOutput30416 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation178⟩ (by decide +kernel) hH

def canonicalInput30417 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput30417 : ExponentCode := normalNode10453

theorem canonicalSound30417 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30417.moment H = canonicalOutput30417.moment H :=
  canonical_of_padded canonicalInput30417 canonicalOutput30417 (by decide) (by decide)
    ⟨false, false, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput30418 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput30418 : ExponentCode := normalNode10645

theorem canonicalSound30418 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30418.moment H = canonicalOutput30418.moment H :=
  canonical_of_padded canonicalInput30418 canonicalOutput30418 (by decide) (by decide)
    ⟨false, false, canonicalPermutation21, canonicalPermutation14⟩ (by decide +kernel) hH

def canonicalInput30419 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput30419 : ExponentCode := normalNode8361

theorem canonicalSound30419 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30419.moment H = canonicalOutput30419.moment H :=
  canonical_of_padded canonicalInput30419 canonicalOutput30419 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation182, OAI.MUB6.Certificate.PairSemantics.permutation181⟩ (by decide +kernel) hH

def canonicalInput30420 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput30420 : ExponentCode := normalNode8361

theorem canonicalSound30420 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30420.moment H = canonicalOutput30420.moment H :=
  canonical_of_padded canonicalInput30420 canonicalOutput30420 (by decide) (by decide)
    ⟨false, false, canonicalPermutation31, OAI.MUB6.Certificate.PairSemantics.permutation181⟩ (by decide +kernel) hH

def canonicalInput30421 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput30421 : ExponentCode := normalNode10645

theorem canonicalSound30421 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30421.moment H = canonicalOutput30421.moment H :=
  canonical_of_padded canonicalInput30421 canonicalOutput30421 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation186, canonicalPermutation14⟩ (by decide +kernel) hH

def canonicalInput30422 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput30422 : ExponentCode := normalNode10453

theorem canonicalSound30422 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30422.moment H = canonicalOutput30422.moment H :=
  canonical_of_padded canonicalInput30422 canonicalOutput30422 (by decide) (by decide)
    ⟨false, false, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput30423 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput30423 : ExponentCode := normalNode8361

theorem canonicalSound30423 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30423.moment H = canonicalOutput30423.moment H :=
  canonical_of_padded canonicalInput30423 canonicalOutput30423 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation182, OAI.MUB6.Certificate.PairSemantics.permutation178⟩ (by decide +kernel) hH

def canonicalInput30424 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput30424 : ExponentCode := normalNode10645

theorem canonicalSound30424 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30424.moment H = canonicalOutput30424.moment H :=
  canonical_of_padded canonicalInput30424 canonicalOutput30424 (by decide) (by decide)
    ⟨false, false, canonicalPermutation21, OAI.MUB6.Certificate.PairSemantics.permutation184⟩ (by decide +kernel) hH

def canonicalInput30425 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput30425 : ExponentCode := normalNode10453

theorem canonicalSound30425 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30425.moment H = canonicalOutput30425.moment H :=
  canonical_of_padded canonicalInput30425 canonicalOutput30425 (by decide) (by decide)
    ⟨false, false, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput30426 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput30426 : ExponentCode := normalNode10453

theorem canonicalSound30426 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30426.moment H = canonicalOutput30426.moment H :=
  canonical_of_padded canonicalInput30426 canonicalOutput30426 (by decide) (by decide)
    ⟨false, false, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput30427 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput30427 : ExponentCode := normalNode10645

theorem canonicalSound30427 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30427.moment H = canonicalOutput30427.moment H :=
  canonical_of_padded canonicalInput30427 canonicalOutput30427 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation186, OAI.MUB6.Certificate.PairSemantics.permutation184⟩ (by decide +kernel) hH

def canonicalInput30428 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput30428 : ExponentCode := normalNode8361

theorem canonicalSound30428 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30428.moment H = canonicalOutput30428.moment H :=
  canonical_of_padded canonicalInput30428 canonicalOutput30428 (by decide) (by decide)
    ⟨false, false, canonicalPermutation31, OAI.MUB6.Certificate.PairSemantics.permutation178⟩ (by decide +kernel) hH

def canonicalInput30429 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput30429 : ExponentCode := normalNode11165

theorem canonicalSound30429 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30429.moment H = canonicalOutput30429.moment H :=
  canonical_of_padded canonicalInput30429 canonicalOutput30429 (by decide) (by decide)
    ⟨false, true, canonicalPermutation47, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput30430 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput30430 : ExponentCode := normalNode8361

theorem canonicalSound30430 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30430.moment H = canonicalOutput30430.moment H :=
  canonical_of_padded canonicalInput30430 canonicalOutput30430 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation195⟩ (by decide +kernel) hH

def canonicalInput30431 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput30431 : ExponentCode := normalNode8361

theorem canonicalSound30431 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30431.moment H = canonicalOutput30431.moment H :=
  canonical_of_padded canonicalInput30431 canonicalOutput30431 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation177, OAI.MUB6.Certificate.PairSemantics.permutation195⟩ (by decide +kernel) hH

def canonicalInput30432 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput30432 : ExponentCode := normalNode11165

theorem canonicalSound30432 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30432.moment H = canonicalOutput30432.moment H :=
  canonical_of_padded canonicalInput30432 canonicalOutput30432 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation172, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput30433 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 2, 0, -2], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -2, 1, 1]]⟩

def canonicalOutput30433 : ExponentCode := normalNode10415

theorem canonicalSound30433 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30433.moment H = canonicalOutput30433.moment H :=
  canonical_of_padded canonicalInput30433 canonicalOutput30433 (by decide) (by decide)
    ⟨false, true, canonicalPermutation81, OAI.MUB6.Certificate.PairSemantics.permutation182⟩ (by decide +kernel) hH

def canonicalInput30434 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 3, -1, -2], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -2, 0, 2]]⟩

def canonicalOutput30434 : ExponentCode := normalNode10371

theorem canonicalSound30434 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30434.moment H = canonicalOutput30434.moment H :=
  canonical_of_padded canonicalInput30434 canonicalOutput30434 (by decide) (by decide)
    ⟨false, false, canonicalPermutation18, OAI.MUB6.Certificate.PairSemantics.permutation182⟩ (by decide +kernel) hH

def canonicalInput30435 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![2, 0, 0, 0, -2, 0], ![0, 0, 0, -1, 1, 0], ![-2, 0, 0, 1, 1, 0]]⟩

def canonicalOutput30435 : ExponentCode := normalNode10415

theorem canonicalSound30435 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30435.moment H = canonicalOutput30435.moment H :=
  canonical_of_padded canonicalInput30435 canonicalOutput30435 (by decide) (by decide)
    ⟨false, true, canonicalPermutation81, OAI.MUB6.Certificate.PairSemantics.permutation380⟩ (by decide +kernel) hH

def canonicalInput30436 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 1, -1, 2], ![1, 0, 0, -2, 2, -1], ![1, 0, 0, 1, -1, -1]]⟩

def canonicalOutput30436 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node276⟩

theorem canonicalSound30436 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30436.moment H = canonicalOutput30436.moment H :=
  canonical_of_padded canonicalInput30436 canonicalOutput30436 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation209, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput30437 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 1, -1, 2], ![1, 0, 0, -1, 1, -1], ![1, 0, 0, 0, 0, -1]]⟩

def canonicalOutput30437 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node283⟩

theorem canonicalSound30437 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30437.moment H = canonicalOutput30437.moment H :=
  canonical_of_padded canonicalInput30437 canonicalOutput30437 (by decide) (by decide)
    ⟨true, false, canonicalPermutation232, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput30438 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 1, -1, 2], ![1, 0, 0, 0, 0, -1], ![1, 0, 0, -1, 1, -1]]⟩

def canonicalOutput30438 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node283⟩

theorem canonicalSound30438 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30438.moment H = canonicalOutput30438.moment H :=
  canonical_of_padded canonicalInput30438 canonicalOutput30438 (by decide) (by decide)
    ⟨true, false, canonicalPermutation232, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput30439 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 1, -1, 2], ![1, 0, 0, 1, -1, -1], ![1, 0, 0, -2, 2, -1]]⟩

def canonicalOutput30439 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node276⟩

theorem canonicalSound30439 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30439.moment H = canonicalOutput30439.moment H :=
  canonical_of_padded canonicalInput30439 canonicalOutput30439 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation209, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput30440 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 1, -1, 2], ![1, 0, 0, 2, -2, -1], ![1, 0, 0, -3, 3, -1]]⟩

def canonicalOutput30440 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node159⟩

theorem canonicalSound30440 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30440.moment H = canonicalOutput30440.moment H :=
  canonical_of_padded canonicalInput30440 canonicalOutput30440 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation209, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput30441 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 1, 0, 1], ![1, 0, 0, -2, 1, 0], ![1, 0, 0, 1, -1, -1]]⟩

def canonicalOutput30441 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node230⟩

theorem canonicalSound30441 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30441.moment H = canonicalOutput30441.moment H :=
  canonical_of_padded canonicalInput30441 canonicalOutput30441 (by decide) (by decide)
    ⟨true, false, canonicalPermutation372, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput30442 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 1, 0, 1], ![1, 0, 0, -1, 0, 0], ![1, 0, 0, 0, 0, -1]]⟩

def canonicalOutput30442 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node61⟩

theorem canonicalSound30442 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30442.moment H = canonicalOutput30442.moment H :=
  canonical_of_padded canonicalInput30442 canonicalOutput30442 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation152, canonicalPermutation221⟩ (by decide +kernel) hH

def canonicalInput30443 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 1, 0, 1], ![1, 0, 0, -1, 1, -1], ![1, 0, 0, 0, -1, 0]]⟩

def canonicalOutput30443 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node287⟩

theorem canonicalSound30443 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30443.moment H = canonicalOutput30443.moment H :=
  canonical_of_padded canonicalInput30443 canonicalOutput30443 (by decide) (by decide)
    ⟨true, true, canonicalPermutation373, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput30444 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 1, 0, 1], ![1, 0, 0, 0, -1, 0], ![1, 0, 0, -1, 1, -1]]⟩

def canonicalOutput30444 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node287⟩

theorem canonicalSound30444 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30444.moment H = canonicalOutput30444.moment H :=
  canonical_of_padded canonicalInput30444 canonicalOutput30444 (by decide) (by decide)
    ⟨true, true, canonicalPermutation373, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput30445 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 1, 0, 1], ![1, 0, 0, 0, 0, -1], ![1, 0, 0, -1, 0, 0]]⟩

def canonicalOutput30445 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node61⟩

theorem canonicalSound30445 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30445.moment H = canonicalOutput30445.moment H :=
  canonical_of_padded canonicalInput30445 canonicalOutput30445 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation151, canonicalPermutation221⟩ (by decide +kernel) hH

def canonicalInput30446 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 1, 0, 1], ![1, 0, 0, 1, -2, 0], ![1, 0, 0, -2, 2, -1]]⟩

def canonicalOutput30446 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node210⟩

theorem canonicalSound30446 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30446.moment H = canonicalOutput30446.moment H :=
  canonical_of_padded canonicalInput30446 canonicalOutput30446 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation209, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput30447 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 1, 0, 1], ![1, 0, 0, 1, -1, -1], ![1, 0, 0, -2, 1, 0]]⟩

def canonicalOutput30447 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node230⟩

theorem canonicalSound30447 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30447.moment H = canonicalOutput30447.moment H :=
  canonical_of_padded canonicalInput30447 canonicalOutput30447 (by decide) (by decide)
    ⟨true, false, canonicalPermutation372, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput30448 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 1, 0, 1], ![1, 0, 0, 2, -2, -1], ![1, 0, 0, -3, 2, 0]]⟩

def canonicalOutput30448 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node226⟩

theorem canonicalSound30448 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30448.moment H = canonicalOutput30448.moment H :=
  canonical_of_padded canonicalInput30448 canonicalOutput30448 (by decide) (by decide)
    ⟨true, false, canonicalPermutation372, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput30449 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 1, 1, 0], ![1, 0, 0, -2, 0, 1], ![1, 0, 0, 1, -1, -1]]⟩

def canonicalOutput30449 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node230⟩

theorem canonicalSound30449 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30449.moment H = canonicalOutput30449.moment H :=
  canonical_of_padded canonicalInput30449 canonicalOutput30449 (by decide) (by decide)
    ⟨true, false, canonicalPermutation374, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput30450 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 1, 1, 0], ![1, 0, 0, -1, -1, 1], ![1, 0, 0, 0, 0, -1]]⟩

def canonicalOutput30450 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node287⟩

theorem canonicalSound30450 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30450.moment H = canonicalOutput30450.moment H :=
  canonical_of_padded canonicalInput30450 canonicalOutput30450 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation60, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput30451 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 1, 1, 0], ![1, 0, 0, -1, 0, 0], ![1, 0, 0, 0, -1, 0]]⟩

def canonicalOutput30451 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node61⟩

theorem canonicalSound30451 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30451.moment H = canonicalOutput30451.moment H :=
  canonical_of_padded canonicalInput30451 canonicalOutput30451 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation152, canonicalPermutation232⟩ (by decide +kernel) hH

def canonicalInput30452 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 1, 1, 0], ![1, 0, 0, 0, -2, 1], ![1, 0, 0, -1, 1, -1]]⟩

def canonicalOutput30452 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node230⟩

theorem canonicalSound30452 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30452.moment H = canonicalOutput30452.moment H :=
  canonical_of_padded canonicalInput30452 canonicalOutput30452 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation207, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput30453 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 1, 1, 0], ![1, 0, 0, 0, -1, 0], ![1, 0, 0, -1, 0, 0]]⟩

def canonicalOutput30453 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node61⟩

theorem canonicalSound30453 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30453.moment H = canonicalOutput30453.moment H :=
  canonical_of_padded canonicalInput30453 canonicalOutput30453 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation151, canonicalPermutation232⟩ (by decide +kernel) hH

def canonicalInput30454 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 1, 1, 0], ![1, 0, 0, 0, 0, -1], ![1, 0, 0, -1, -1, 1]]⟩

def canonicalOutput30454 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node287⟩

theorem canonicalSound30454 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30454.moment H = canonicalOutput30454.moment H :=
  canonical_of_padded canonicalInput30454 canonicalOutput30454 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation60, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput30455 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 1, 1, 0], ![1, 0, 0, 1, -2, 0], ![1, 0, 0, -2, 1, 0]]⟩

def canonicalOutput30455 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node44⟩

theorem canonicalSound30455 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30455.moment H = canonicalOutput30455.moment H :=
  canonical_of_padded canonicalInput30455 canonicalOutput30455 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, canonicalPermutation355⟩ (by decide +kernel) hH

def canonicalInput30456 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 1, 1, 0], ![1, 0, 0, 1, -1, -1], ![1, 0, 0, -2, 0, 1]]⟩

def canonicalOutput30456 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node230⟩

theorem canonicalSound30456 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30456.moment H = canonicalOutput30456.moment H :=
  canonical_of_padded canonicalInput30456 canonicalOutput30456 (by decide) (by decide)
    ⟨true, false, canonicalPermutation374, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput30457 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 1, 1, 0], ![1, 0, 0, 2, -2, -1], ![1, 0, 0, -3, 1, 1]]⟩

def canonicalOutput30457 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node229⟩

theorem canonicalSound30457 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30457.moment H = canonicalOutput30457.moment H :=
  canonical_of_padded canonicalInput30457 canonicalOutput30457 (by decide) (by decide)
    ⟨true, false, canonicalPermutation374, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput30458 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 1, 2, -1], ![1, 0, 0, -2, -1, 2], ![1, 0, 0, 1, -1, -1]]⟩

def canonicalOutput30458 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node276⟩

theorem canonicalSound30458 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30458.moment H = canonicalOutput30458.moment H :=
  canonical_of_padded canonicalInput30458 canonicalOutput30458 (by decide) (by decide)
    ⟨true, false, canonicalPermutation375, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput30459 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 1, 2, -1], ![1, 0, 0, -1, -2, 2], ![1, 0, 0, 0, 0, -1]]⟩

def canonicalOutput30459 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node288⟩

theorem canonicalSound30459 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30459.moment H = canonicalOutput30459.moment H :=
  canonical_of_padded canonicalInput30459 canonicalOutput30459 (by decide) (by decide)
    ⟨true, false, canonicalPermutation232, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput30460 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 1, 2, -1], ![1, 0, 0, -1, -1, 1], ![1, 0, 0, 0, -1, 0]]⟩

def canonicalOutput30460 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node283⟩

theorem canonicalSound30460 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30460.moment H = canonicalOutput30460.moment H :=
  canonical_of_padded canonicalInput30460 canonicalOutput30460 (by decide) (by decide)
    ⟨true, false, canonicalPermutation221, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput30461 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 1, 2, -1], ![1, 0, 0, 0, -2, 1], ![1, 0, 0, -1, 0, 0]]⟩

def canonicalOutput30461 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node284⟩

theorem canonicalSound30461 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30461.moment H = canonicalOutput30461.moment H :=
  canonical_of_padded canonicalInput30461 canonicalOutput30461 (by decide) (by decide)
    ⟨true, true, canonicalPermutation374, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput30462 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 1, 2, -1], ![1, 0, 0, 0, -1, 0], ![1, 0, 0, -1, -1, 1]]⟩

def canonicalOutput30462 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node283⟩

theorem canonicalSound30462 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30462.moment H = canonicalOutput30462.moment H :=
  canonical_of_padded canonicalInput30462 canonicalOutput30462 (by decide) (by decide)
    ⟨true, false, canonicalPermutation221, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput30463 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 1, 2, -1], ![1, 0, 0, 1, -2, 0], ![1, 0, 0, -2, 0, 1]]⟩

def canonicalOutput30463 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node210⟩

theorem canonicalSound30463 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30463.moment H = canonicalOutput30463.moment H :=
  canonical_of_padded canonicalInput30463 canonicalOutput30463 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation210, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

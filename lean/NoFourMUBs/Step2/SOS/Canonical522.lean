import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes033
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes43
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations
import OAI.Analysis.MutuallyUnbiased.PairTargets.ExtraPermutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput33408 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput33408 : ExponentCode := normalNode8361

theorem canonicalSound33408 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33408.moment H = canonicalOutput33408.moment H :=
  canonical_of_padded canonicalInput33408 canonicalOutput33408 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation282, canonicalPermutation151⟩ (by decide +kernel) hH

def canonicalInput33409 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33409 : ExponentCode := normalNode8361

theorem canonicalSound33409 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33409.moment H = canonicalOutput33409.moment H :=
  canonical_of_padded canonicalInput33409 canonicalOutput33409 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation348, canonicalPermutation151⟩ (by decide +kernel) hH

def canonicalInput33410 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput33410 : ExponentCode := normalNode8066

theorem canonicalSound33410 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33410.moment H = canonicalOutput33410.moment H :=
  canonical_of_padded canonicalInput33410 canonicalOutput33410 (by decide) (by decide)
    ⟨false, false, canonicalPermutation165, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput33411 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput33411 : ExponentCode := normalNode8067

theorem canonicalSound33411 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33411.moment H = canonicalOutput33411.moment H :=
  canonical_of_padded canonicalInput33411 canonicalOutput33411 (by decide) (by decide)
    ⟨false, false, canonicalPermutation165, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput33412 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput33412 : ExponentCode := normalNode8361

theorem canonicalSound33412 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33412.moment H = canonicalOutput33412.moment H :=
  canonical_of_padded canonicalInput33412 canonicalOutput33412 (by decide) (by decide)
    ⟨false, false, canonicalPermutation276, OAI.MUB6.Certificate.PairSemantics.permutation261⟩ (by decide +kernel) hH

def canonicalInput33413 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput33413 : ExponentCode := normalNode8361

theorem canonicalSound33413 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33413.moment H = canonicalOutput33413.moment H :=
  canonical_of_padded canonicalInput33413 canonicalOutput33413 (by decide) (by decide)
    ⟨false, false, canonicalPermutation276, OAI.MUB6.Certificate.PairSemantics.permutation311⟩ (by decide +kernel) hH

def canonicalInput33414 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput33414 : ExponentCode := normalNode8361

theorem canonicalSound33414 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33414.moment H = canonicalOutput33414.moment H :=
  canonical_of_padded canonicalInput33414 canonicalOutput33414 (by decide) (by decide)
    ⟨false, false, canonicalPermutation276, canonicalPermutation151⟩ (by decide +kernel) hH

def canonicalInput33415 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33415 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node61⟩

theorem canonicalSound33415 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33415.moment H = canonicalOutput33415.moment H :=
  canonical_of_padded canonicalInput33415 canonicalOutput33415 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput33416 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput33416 : ExponentCode := normalNode8361

theorem canonicalSound33416 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33416.moment H = canonicalOutput33416.moment H :=
  canonical_of_padded canonicalInput33416 canonicalOutput33416 (by decide) (by decide)
    ⟨false, false, canonicalPermutation277, canonicalPermutation151⟩ (by decide +kernel) hH

def canonicalInput33417 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput33417 : ExponentCode := normalNode8361

theorem canonicalSound33417 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33417.moment H = canonicalOutput33417.moment H :=
  canonical_of_padded canonicalInput33417 canonicalOutput33417 (by decide) (by decide)
    ⟨false, false, canonicalPermutation277, OAI.MUB6.Certificate.PairSemantics.permutation311⟩ (by decide +kernel) hH

def canonicalInput33418 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput33418 : ExponentCode := normalNode8361

theorem canonicalSound33418 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33418.moment H = canonicalOutput33418.moment H :=
  canonical_of_padded canonicalInput33418 canonicalOutput33418 (by decide) (by decide)
    ⟨false, false, canonicalPermutation277, OAI.MUB6.Certificate.PairSemantics.permutation261⟩ (by decide +kernel) hH

def canonicalInput33419 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput33419 : ExponentCode := normalNode8066

theorem canonicalSound33419 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33419.moment H = canonicalOutput33419.moment H :=
  canonical_of_padded canonicalInput33419 canonicalOutput33419 (by decide) (by decide)
    ⟨false, false, canonicalPermutation166, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput33420 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput33420 : ExponentCode := normalNode8067

theorem canonicalSound33420 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33420.moment H = canonicalOutput33420.moment H :=
  canonical_of_padded canonicalInput33420 canonicalOutput33420 (by decide) (by decide)
    ⟨false, false, canonicalPermutation166, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput33421 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33421 : ExponentCode := normalNode8361

theorem canonicalSound33421 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33421.moment H = canonicalOutput33421.moment H :=
  canonical_of_padded canonicalInput33421 canonicalOutput33421 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation354, canonicalPermutation151⟩ (by decide +kernel) hH

def canonicalInput33422 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput33422 : ExponentCode := normalNode8361

theorem canonicalSound33422 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33422.moment H = canonicalOutput33422.moment H :=
  canonical_of_padded canonicalInput33422 canonicalOutput33422 (by decide) (by decide)
    ⟨false, false, canonicalPermutation278, canonicalPermutation151⟩ (by decide +kernel) hH

def canonicalInput33423 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput33423 : ExponentCode := normalNode8067

theorem canonicalSound33423 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33423.moment H = canonicalOutput33423.moment H :=
  canonical_of_padded canonicalInput33423 canonicalOutput33423 (by decide) (by decide)
    ⟨false, false, canonicalPermutation165, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput33424 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput33424 : ExponentCode := normalNode8066

theorem canonicalSound33424 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33424.moment H = canonicalOutput33424.moment H :=
  canonical_of_padded canonicalInput33424 canonicalOutput33424 (by decide) (by decide)
    ⟨false, false, canonicalPermutation165, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput33425 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput33425 : ExponentCode := normalNode8067

theorem canonicalSound33425 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33425.moment H = canonicalOutput33425.moment H :=
  canonical_of_padded canonicalInput33425 canonicalOutput33425 (by decide) (by decide)
    ⟨false, false, canonicalPermutation94, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput33426 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33426 : ExponentCode := normalNode8361

theorem canonicalSound33426 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33426.moment H = canonicalOutput33426.moment H :=
  canonical_of_padded canonicalInput33426 canonicalOutput33426 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation354, OAI.MUB6.Certificate.PairSemantics.permutation311⟩ (by decide +kernel) hH

def canonicalInput33427 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput33427 : ExponentCode := normalNode8066

theorem canonicalSound33427 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33427.moment H = canonicalOutput33427.moment H :=
  canonical_of_padded canonicalInput33427 canonicalOutput33427 (by decide) (by decide)
    ⟨false, false, canonicalPermutation94, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput33428 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput33428 : ExponentCode := normalNode8066

theorem canonicalSound33428 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33428.moment H = canonicalOutput33428.moment H :=
  canonical_of_padded canonicalInput33428 canonicalOutput33428 (by decide) (by decide)
    ⟨false, false, canonicalPermutation99, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput33429 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput33429 : ExponentCode := normalNode8361

theorem canonicalSound33429 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33429.moment H = canonicalOutput33429.moment H :=
  canonical_of_padded canonicalInput33429 canonicalOutput33429 (by decide) (by decide)
    ⟨false, false, canonicalPermutation278, OAI.MUB6.Certificate.PairSemantics.permutation311⟩ (by decide +kernel) hH

def canonicalInput33430 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput33430 : ExponentCode := normalNode8067

theorem canonicalSound33430 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33430.moment H = canonicalOutput33430.moment H :=
  canonical_of_padded canonicalInput33430 canonicalOutput33430 (by decide) (by decide)
    ⟨false, false, canonicalPermutation99, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput33431 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput33431 : ExponentCode := normalNode8066

theorem canonicalSound33431 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33431.moment H = canonicalOutput33431.moment H :=
  canonical_of_padded canonicalInput33431 canonicalOutput33431 (by decide) (by decide)
    ⟨false, false, canonicalPermutation94, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput33432 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33432 : ExponentCode := normalNode8361

theorem canonicalSound33432 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33432.moment H = canonicalOutput33432.moment H :=
  canonical_of_padded canonicalInput33432 canonicalOutput33432 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation354, OAI.MUB6.Certificate.PairSemantics.permutation261⟩ (by decide +kernel) hH

def canonicalInput33433 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput33433 : ExponentCode := normalNode8067

theorem canonicalSound33433 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33433.moment H = canonicalOutput33433.moment H :=
  canonical_of_padded canonicalInput33433 canonicalOutput33433 (by decide) (by decide)
    ⟨false, false, canonicalPermutation94, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput33434 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput33434 : ExponentCode := normalNode8067

theorem canonicalSound33434 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33434.moment H = canonicalOutput33434.moment H :=
  canonical_of_padded canonicalInput33434 canonicalOutput33434 (by decide) (by decide)
    ⟨false, false, canonicalPermutation99, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput33435 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput33435 : ExponentCode := normalNode8361

theorem canonicalSound33435 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33435.moment H = canonicalOutput33435.moment H :=
  canonical_of_padded canonicalInput33435 canonicalOutput33435 (by decide) (by decide)
    ⟨false, false, canonicalPermutation278, OAI.MUB6.Certificate.PairSemantics.permutation261⟩ (by decide +kernel) hH

def canonicalInput33436 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput33436 : ExponentCode := normalNode8066

theorem canonicalSound33436 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33436.moment H = canonicalOutput33436.moment H :=
  canonical_of_padded canonicalInput33436 canonicalOutput33436 (by decide) (by decide)
    ⟨false, false, canonicalPermutation99, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput33437 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput33437 : ExponentCode := normalNode8064

theorem canonicalSound33437 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33437.moment H = canonicalOutput33437.moment H :=
  canonical_of_padded canonicalInput33437 canonicalOutput33437 (by decide) (by decide)
    ⟨false, false, canonicalPermutation94, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput33438 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput33438 : ExponentCode := normalNode8066

theorem canonicalSound33438 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33438.moment H = canonicalOutput33438.moment H :=
  canonical_of_padded canonicalInput33438 canonicalOutput33438 (by decide) (by decide)
    ⟨false, false, canonicalPermutation84, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput33439 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput33439 : ExponentCode := normalNode8066

theorem canonicalSound33439 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33439.moment H = canonicalOutput33439.moment H :=
  canonical_of_padded canonicalInput33439 canonicalOutput33439 (by decide) (by decide)
    ⟨false, false, canonicalPermutation104, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput33440 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput33440 : ExponentCode := normalNode8064

theorem canonicalSound33440 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33440.moment H = canonicalOutput33440.moment H :=
  canonical_of_padded canonicalInput33440 canonicalOutput33440 (by decide) (by decide)
    ⟨false, false, canonicalPermutation99, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput33441 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 2, 0, -2], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -2, 1, 1]]⟩

def canonicalOutput33441 : ExponentCode := normalNode8068

theorem canonicalSound33441 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33441.moment H = canonicalOutput33441.moment H :=
  canonical_of_padded canonicalInput33441 canonicalOutput33441 (by decide) (by decide)
    ⟨false, false, canonicalPermutation166, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput33442 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 3, -1, -2], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -2, 0, 2]]⟩

def canonicalOutput33442 : ExponentCode := normalNode8458

theorem canonicalSound33442 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33442.moment H = canonicalOutput33442.moment H :=
  canonical_of_padded canonicalInput33442 canonicalOutput33442 (by decide) (by decide)
    ⟨false, false, canonicalPermutation104, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput33443 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![2, 0, 0, 0, -2, 0], ![0, 0, 0, -1, 1, 0], ![-2, 0, 0, 1, 1, 0]]⟩

def canonicalOutput33443 : ExponentCode := normalNode10045

theorem canonicalSound33443 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33443.moment H = canonicalOutput33443.moment H :=
  canonical_of_padded canonicalInput33443 canonicalOutput33443 (by decide) (by decide)
    ⟨false, true, canonicalPermutation105, OAI.MUB6.Certificate.PairSemantics.permutation382⟩ (by decide +kernel) hH

def canonicalInput33444 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, -1, 0, 0], ![1, 0, 0, -1, 0, 0]]⟩

def canonicalOutput33444 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node1291⟩

theorem canonicalSound33444 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33444.moment H = canonicalOutput33444.moment H :=
  canonical_of_padded canonicalInput33444 canonicalOutput33444 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation227, canonicalPermutation222⟩ (by decide +kernel) hH

def canonicalInput33445 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, 0, -1, 0], ![1, 0, 0, -2, 1, 0]]⟩

def canonicalOutput33445 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2758⟩

theorem canonicalSound33445 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33445.moment H = canonicalOutput33445.moment H :=
  canonical_of_padded canonicalInput33445 canonicalOutput33445 (by decide) (by decide)
    ⟨false, false, canonicalPermutation254, canonicalPermutation223⟩ (by decide +kernel) hH

def canonicalInput33446 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 3, -1, 0], ![0, 0, 0, -1, 1, 0], ![2, 0, 0, -2, 0, 0]]⟩

def canonicalOutput33446 : ExponentCode := normalNode9917

theorem canonicalSound33446 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33446.moment H = canonicalOutput33446.moment H :=
  canonical_of_padded canonicalInput33446 canonicalOutput33446 (by decide) (by decide)
    ⟨false, false, canonicalPermutation262, canonicalPermutation225⟩ (by decide +kernel) hH

def canonicalInput33447 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput33447 : ExponentCode := normalNode11165

theorem canonicalSound33447 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33447.moment H = canonicalOutput33447.moment H :=
  canonical_of_padded canonicalInput33447 canonicalOutput33447 (by decide) (by decide)
    ⟨false, true, canonicalPermutation259, OAI.MUB6.Certificate.PairSemantics.permutation202⟩ (by decide +kernel) hH

def canonicalInput33448 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput33448 : ExponentCode := normalNode8361

theorem canonicalSound33448 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33448.moment H = canonicalOutput33448.moment H :=
  canonical_of_padded canonicalInput33448 canonicalOutput33448 (by decide) (by decide)
    ⟨false, false, canonicalPermutation316, canonicalPermutation226⟩ (by decide +kernel) hH

def canonicalInput33449 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput33449 : ExponentCode := normalNode8361

theorem canonicalSound33449 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33449.moment H = canonicalOutput33449.moment H :=
  canonical_of_padded canonicalInput33449 canonicalOutput33449 (by decide) (by decide)
    ⟨false, false, canonicalPermutation367, canonicalPermutation226⟩ (by decide +kernel) hH

def canonicalInput33450 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput33450 : ExponentCode := normalNode11165

theorem canonicalSound33450 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33450.moment H = canonicalOutput33450.moment H :=
  canonical_of_padded canonicalInput33450 canonicalOutput33450 (by decide) (by decide)
    ⟨false, true, canonicalPermutation258, OAI.MUB6.Certificate.PairSemantics.permutation202⟩ (by decide +kernel) hH

def canonicalInput33451 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput33451 : ExponentCode := normalNode8361

theorem canonicalSound33451 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33451.moment H = canonicalOutput33451.moment H :=
  canonical_of_padded canonicalInput33451 canonicalOutput33451 (by decide) (by decide)
    ⟨false, false, canonicalPermutation358, canonicalPermutation228⟩ (by decide +kernel) hH

def canonicalInput33452 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput33452 : ExponentCode := normalNode10645

theorem canonicalSound33452 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33452.moment H = canonicalOutput33452.moment H :=
  canonical_of_padded canonicalInput33452 canonicalOutput33452 (by decide) (by decide)
    ⟨false, false, canonicalPermutation392, canonicalPermutation110⟩ (by decide +kernel) hH

def canonicalInput33453 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput33453 : ExponentCode := normalNode10453

theorem canonicalSound33453 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33453.moment H = canonicalOutput33453.moment H :=
  canonical_of_padded canonicalInput33453 canonicalOutput33453 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation227, OAI.MUB6.Certificate.PairSemantics.permutation205⟩ (by decide +kernel) hH

def canonicalInput33454 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput33454 : ExponentCode := normalNode10453

theorem canonicalSound33454 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33454.moment H = canonicalOutput33454.moment H :=
  canonical_of_padded canonicalInput33454 canonicalOutput33454 (by decide) (by decide)
    ⟨false, false, canonicalPermutation260, OAI.MUB6.Certificate.PairSemantics.permutation205⟩ (by decide +kernel) hH

def canonicalInput33455 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33455 : ExponentCode := normalNode10645

theorem canonicalSound33455 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33455.moment H = canonicalOutput33455.moment H :=
  canonical_of_padded canonicalInput33455 canonicalOutput33455 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation237, canonicalPermutation110⟩ (by decide +kernel) hH

def canonicalInput33456 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput33456 : ExponentCode := normalNode8361

theorem canonicalSound33456 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33456.moment H = canonicalOutput33456.moment H :=
  canonical_of_padded canonicalInput33456 canonicalOutput33456 (by decide) (by decide)
    ⟨false, false, canonicalPermutation362, canonicalPermutation228⟩ (by decide +kernel) hH

def canonicalInput33457 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput33457 : ExponentCode := normalNode8361

theorem canonicalSound33457 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33457.moment H = canonicalOutput33457.moment H :=
  canonical_of_padded canonicalInput33457 canonicalOutput33457 (by decide) (by decide)
    ⟨false, false, canonicalPermutation360, canonicalPermutation228⟩ (by decide +kernel) hH

def canonicalInput33458 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput33458 : ExponentCode := normalNode10453

theorem canonicalSound33458 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33458.moment H = canonicalOutput33458.moment H :=
  canonical_of_padded canonicalInput33458 canonicalOutput33458 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation227, canonicalPermutation229⟩ (by decide +kernel) hH

def canonicalInput33459 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput33459 : ExponentCode := normalNode10645

theorem canonicalSound33459 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33459.moment H = canonicalOutput33459.moment H :=
  canonical_of_padded canonicalInput33459 canonicalOutput33459 (by decide) (by decide)
    ⟨false, false, canonicalPermutation392, canonicalPermutation230⟩ (by decide +kernel) hH

def canonicalInput33460 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33460 : ExponentCode := normalNode10645

theorem canonicalSound33460 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33460.moment H = canonicalOutput33460.moment H :=
  canonical_of_padded canonicalInput33460 canonicalOutput33460 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation237, canonicalPermutation230⟩ (by decide +kernel) hH

def canonicalInput33461 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput33461 : ExponentCode := normalNode10453

theorem canonicalSound33461 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33461.moment H = canonicalOutput33461.moment H :=
  canonical_of_padded canonicalInput33461 canonicalOutput33461 (by decide) (by decide)
    ⟨false, false, canonicalPermutation260, canonicalPermutation229⟩ (by decide +kernel) hH

def canonicalInput33462 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput33462 : ExponentCode := normalNode8361

theorem canonicalSound33462 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33462.moment H = canonicalOutput33462.moment H :=
  canonical_of_padded canonicalInput33462 canonicalOutput33462 (by decide) (by decide)
    ⟨false, false, canonicalPermutation313, canonicalPermutation228⟩ (by decide +kernel) hH

def canonicalInput33463 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput33463 : ExponentCode := normalNode11165

theorem canonicalSound33463 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33463.moment H = canonicalOutput33463.moment H :=
  canonical_of_padded canonicalInput33463 canonicalOutput33463 (by decide) (by decide)
    ⟨false, true, canonicalPermutation255, OAI.MUB6.Certificate.PairSemantics.permutation202⟩ (by decide +kernel) hH

def canonicalInput33464 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput33464 : ExponentCode := normalNode8361

theorem canonicalSound33464 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33464.moment H = canonicalOutput33464.moment H :=
  canonical_of_padded canonicalInput33464 canonicalOutput33464 (by decide) (by decide)
    ⟨false, false, canonicalPermutation316, canonicalPermutation233⟩ (by decide +kernel) hH

def canonicalInput33465 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput33465 : ExponentCode := normalNode8361

theorem canonicalSound33465 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33465.moment H = canonicalOutput33465.moment H :=
  canonical_of_padded canonicalInput33465 canonicalOutput33465 (by decide) (by decide)
    ⟨false, false, canonicalPermutation367, canonicalPermutation233⟩ (by decide +kernel) hH

def canonicalInput33466 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput33466 : ExponentCode := normalNode11165

theorem canonicalSound33466 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33466.moment H = canonicalOutput33466.moment H :=
  canonical_of_padded canonicalInput33466 canonicalOutput33466 (by decide) (by decide)
    ⟨false, true, canonicalPermutation254, OAI.MUB6.Certificate.PairSemantics.permutation202⟩ (by decide +kernel) hH

def canonicalInput33467 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput33467 : ExponentCode := normalNode10453

theorem canonicalSound33467 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33467.moment H = canonicalOutput33467.moment H :=
  canonical_of_padded canonicalInput33467 canonicalOutput33467 (by decide) (by decide)
    ⟨false, false, canonicalPermutation244, canonicalPermutation229⟩ (by decide +kernel) hH

def canonicalInput33468 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput33468 : ExponentCode := normalNode8361

theorem canonicalSound33468 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33468.moment H = canonicalOutput33468.moment H :=
  canonical_of_padded canonicalInput33468 canonicalOutput33468 (by decide) (by decide)
    ⟨false, false, canonicalPermutation362, canonicalPermutation233⟩ (by decide +kernel) hH

def canonicalInput33469 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput33469 : ExponentCode := normalNode10645

theorem canonicalSound33469 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33469.moment H = canonicalOutput33469.moment H :=
  canonical_of_padded canonicalInput33469 canonicalOutput33469 (by decide) (by decide)
    ⟨false, false, canonicalPermutation392, canonicalPermutation235⟩ (by decide +kernel) hH

def canonicalInput33470 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33470 : ExponentCode := normalNode10645

theorem canonicalSound33470 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33470.moment H = canonicalOutput33470.moment H :=
  canonical_of_padded canonicalInput33470 canonicalOutput33470 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation237, canonicalPermutation235⟩ (by decide +kernel) hH

def canonicalInput33471 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput33471 : ExponentCode := normalNode8361

theorem canonicalSound33471 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33471.moment H = canonicalOutput33471.moment H :=
  canonical_of_padded canonicalInput33471 canonicalOutput33471 (by decide) (by decide)
    ⟨false, false, canonicalPermutation358, canonicalPermutation233⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

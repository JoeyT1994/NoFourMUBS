import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes033
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations
import OAI.Analysis.MutuallyUnbiased.PairTargets.ExtraPermutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput32448 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![-2, 0, 0, 3, -1, 0], ![0, 0, 0, -1, 1, 0], ![2, 0, 0, -2, 0, 0]]⟩

def canonicalOutput32448 : ExponentCode := normalNode10375

theorem canonicalSound32448 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32448.moment H = canonicalOutput32448.moment H :=
  canonical_of_padded canonicalInput32448 canonicalOutput32448 (by decide) (by decide)
    ⟨false, false, canonicalPermutation318, OAI.MUB6.Certificate.PairSemantics.permutation400⟩ (by decide +kernel) hH

def canonicalInput32449 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput32449 : ExponentCode := normalNode8064

theorem canonicalSound32449 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32449.moment H = canonicalOutput32449.moment H :=
  canonical_of_padded canonicalInput32449 canonicalOutput32449 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation231, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput32450 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput32450 : ExponentCode := normalNode8066

theorem canonicalSound32450 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32450.moment H = canonicalOutput32450.moment H :=
  canonical_of_padded canonicalInput32450 canonicalOutput32450 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation231, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput32451 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput32451 : ExponentCode := normalNode8066

theorem canonicalSound32451 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32451.moment H = canonicalOutput32451.moment H :=
  canonical_of_padded canonicalInput32451 canonicalOutput32451 (by decide) (by decide)
    ⟨false, false, canonicalPermutation101, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput32452 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput32452 : ExponentCode := normalNode8064

theorem canonicalSound32452 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32452.moment H = canonicalOutput32452.moment H :=
  canonical_of_padded canonicalInput32452 canonicalOutput32452 (by decide) (by decide)
    ⟨false, false, canonicalPermutation101, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput32453 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput32453 : ExponentCode := normalNode8066

theorem canonicalSound32453 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32453.moment H = canonicalOutput32453.moment H :=
  canonical_of_padded canonicalInput32453 canonicalOutput32453 (by decide) (by decide)
    ⟨false, false, canonicalPermutation95, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput32454 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput32454 : ExponentCode := normalNode8361

theorem canonicalSound32454 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32454.moment H = canonicalOutput32454.moment H :=
  canonical_of_padded canonicalInput32454 canonicalOutput32454 (by decide) (by decide)
    ⟨false, false, canonicalPermutation206, OAI.MUB6.Certificate.PairSemantics.permutation261⟩ (by decide +kernel) hH

def canonicalInput32455 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput32455 : ExponentCode := normalNode8067

theorem canonicalSound32455 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32455.moment H = canonicalOutput32455.moment H :=
  canonical_of_padded canonicalInput32455 canonicalOutput32455 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation231, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput32456 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput32456 : ExponentCode := normalNode8067

theorem canonicalSound32456 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32456.moment H = canonicalOutput32456.moment H :=
  canonical_of_padded canonicalInput32456 canonicalOutput32456 (by decide) (by decide)
    ⟨false, false, canonicalPermutation101, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput32457 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32457 : ExponentCode := normalNode8361

theorem canonicalSound32457 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32457.moment H = canonicalOutput32457.moment H :=
  canonical_of_padded canonicalInput32457 canonicalOutput32457 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation366, OAI.MUB6.Certificate.PairSemantics.permutation261⟩ (by decide +kernel) hH

def canonicalInput32458 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput32458 : ExponentCode := normalNode8066

theorem canonicalSound32458 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32458.moment H = canonicalOutput32458.moment H :=
  canonical_of_padded canonicalInput32458 canonicalOutput32458 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation234, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput32459 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput32459 : ExponentCode := normalNode8066

theorem canonicalSound32459 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32459.moment H = canonicalOutput32459.moment H :=
  canonical_of_padded canonicalInput32459 canonicalOutput32459 (by decide) (by decide)
    ⟨false, false, canonicalPermutation96, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput32460 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput32460 : ExponentCode := normalNode8067

theorem canonicalSound32460 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32460.moment H = canonicalOutput32460.moment H :=
  canonical_of_padded canonicalInput32460 canonicalOutput32460 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation231, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput32461 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput32461 : ExponentCode := normalNode8361

theorem canonicalSound32461 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32461.moment H = canonicalOutput32461.moment H :=
  canonical_of_padded canonicalInput32461 canonicalOutput32461 (by decide) (by decide)
    ⟨false, false, canonicalPermutation206, OAI.MUB6.Certificate.PairSemantics.permutation311⟩ (by decide +kernel) hH

def canonicalInput32462 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32462 : ExponentCode := normalNode8361

theorem canonicalSound32462 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32462.moment H = canonicalOutput32462.moment H :=
  canonical_of_padded canonicalInput32462 canonicalOutput32462 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation366, OAI.MUB6.Certificate.PairSemantics.permutation311⟩ (by decide +kernel) hH

def canonicalInput32463 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput32463 : ExponentCode := normalNode8067

theorem canonicalSound32463 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32463.moment H = canonicalOutput32463.moment H :=
  canonical_of_padded canonicalInput32463 canonicalOutput32463 (by decide) (by decide)
    ⟨false, false, canonicalPermutation101, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput32464 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput32464 : ExponentCode := normalNode8066

theorem canonicalSound32464 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32464.moment H = canonicalOutput32464.moment H :=
  canonical_of_padded canonicalInput32464 canonicalOutput32464 (by decide) (by decide)
    ⟨false, false, canonicalPermutation62, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput32465 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput32465 : ExponentCode := normalNode8064

theorem canonicalSound32465 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32465.moment H = canonicalOutput32465.moment H :=
  canonical_of_padded canonicalInput32465 canonicalOutput32465 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation234, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput32466 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput32466 : ExponentCode := normalNode8066

theorem canonicalSound32466 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32466.moment H = canonicalOutput32466.moment H :=
  canonical_of_padded canonicalInput32466 canonicalOutput32466 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation231, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput32467 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput32467 : ExponentCode := normalNode8066

theorem canonicalSound32467 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32467.moment H = canonicalOutput32467.moment H :=
  canonical_of_padded canonicalInput32467 canonicalOutput32467 (by decide) (by decide)
    ⟨false, false, canonicalPermutation101, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput32468 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput32468 : ExponentCode := normalNode8064

theorem canonicalSound32468 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32468.moment H = canonicalOutput32468.moment H :=
  canonical_of_padded canonicalInput32468 canonicalOutput32468 (by decide) (by decide)
    ⟨false, false, canonicalPermutation95, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput32469 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput32469 : ExponentCode := normalNode8067

theorem canonicalSound32469 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32469.moment H = canonicalOutput32469.moment H :=
  canonical_of_padded canonicalInput32469 canonicalOutput32469 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation234, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput32470 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput32470 : ExponentCode := normalNode8066

theorem canonicalSound32470 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32470.moment H = canonicalOutput32470.moment H :=
  canonical_of_padded canonicalInput32470 canonicalOutput32470 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation234, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput32471 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput32471 : ExponentCode := normalNode8361

theorem canonicalSound32471 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32471.moment H = canonicalOutput32471.moment H :=
  canonical_of_padded canonicalInput32471 canonicalOutput32471 (by decide) (by decide)
    ⟨false, false, canonicalPermutation206, canonicalPermutation151⟩ (by decide +kernel) hH

def canonicalInput32472 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32472 : ExponentCode := normalNode8361

theorem canonicalSound32472 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32472.moment H = canonicalOutput32472.moment H :=
  canonical_of_padded canonicalInput32472 canonicalOutput32472 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation366, canonicalPermutation151⟩ (by decide +kernel) hH

def canonicalInput32473 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput32473 : ExponentCode := normalNode8066

theorem canonicalSound32473 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32473.moment H = canonicalOutput32473.moment H :=
  canonical_of_padded canonicalInput32473 canonicalOutput32473 (by decide) (by decide)
    ⟨false, false, canonicalPermutation95, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput32474 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput32474 : ExponentCode := normalNode8067

theorem canonicalSound32474 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32474.moment H = canonicalOutput32474.moment H :=
  canonical_of_padded canonicalInput32474 canonicalOutput32474 (by decide) (by decide)
    ⟨false, false, canonicalPermutation95, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput32475 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput32475 : ExponentCode := normalNode8361

theorem canonicalSound32475 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32475.moment H = canonicalOutput32475.moment H :=
  canonical_of_padded canonicalInput32475 canonicalOutput32475 (by decide) (by decide)
    ⟨false, false, canonicalPermutation218, OAI.MUB6.Certificate.PairSemantics.permutation261⟩ (by decide +kernel) hH

def canonicalInput32476 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput32476 : ExponentCode := normalNode8361

theorem canonicalSound32476 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32476.moment H = canonicalOutput32476.moment H :=
  canonical_of_padded canonicalInput32476 canonicalOutput32476 (by decide) (by decide)
    ⟨false, false, canonicalPermutation218, OAI.MUB6.Certificate.PairSemantics.permutation311⟩ (by decide +kernel) hH

def canonicalInput32477 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput32477 : ExponentCode := normalNode8361

theorem canonicalSound32477 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32477.moment H = canonicalOutput32477.moment H :=
  canonical_of_padded canonicalInput32477 canonicalOutput32477 (by decide) (by decide)
    ⟨false, false, canonicalPermutation218, canonicalPermutation151⟩ (by decide +kernel) hH

def canonicalInput32478 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32478 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node61⟩

theorem canonicalSound32478 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32478.moment H = canonicalOutput32478.moment H :=
  canonical_of_padded canonicalInput32478 canonicalOutput32478 (by decide) (by decide)
    ⟨false, false, canonicalPermutation60, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput32479 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput32479 : ExponentCode := normalNode8361

theorem canonicalSound32479 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32479.moment H = canonicalOutput32479.moment H :=
  canonical_of_padded canonicalInput32479 canonicalOutput32479 (by decide) (by decide)
    ⟨false, false, canonicalPermutation219, canonicalPermutation151⟩ (by decide +kernel) hH

def canonicalInput32480 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput32480 : ExponentCode := normalNode8361

theorem canonicalSound32480 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32480.moment H = canonicalOutput32480.moment H :=
  canonical_of_padded canonicalInput32480 canonicalOutput32480 (by decide) (by decide)
    ⟨false, false, canonicalPermutation219, OAI.MUB6.Certificate.PairSemantics.permutation311⟩ (by decide +kernel) hH

def canonicalInput32481 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput32481 : ExponentCode := normalNode8361

theorem canonicalSound32481 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32481.moment H = canonicalOutput32481.moment H :=
  canonical_of_padded canonicalInput32481 canonicalOutput32481 (by decide) (by decide)
    ⟨false, false, canonicalPermutation219, OAI.MUB6.Certificate.PairSemantics.permutation261⟩ (by decide +kernel) hH

def canonicalInput32482 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput32482 : ExponentCode := normalNode8066

theorem canonicalSound32482 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32482.moment H = canonicalOutput32482.moment H :=
  canonical_of_padded canonicalInput32482 canonicalOutput32482 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation234, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput32483 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput32483 : ExponentCode := normalNode8067

theorem canonicalSound32483 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32483.moment H = canonicalOutput32483.moment H :=
  canonical_of_padded canonicalInput32483 canonicalOutput32483 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation234, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput32484 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32484 : ExponentCode := normalNode8361

theorem canonicalSound32484 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32484.moment H = canonicalOutput32484.moment H :=
  canonical_of_padded canonicalInput32484 canonicalOutput32484 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation371, canonicalPermutation151⟩ (by decide +kernel) hH

def canonicalInput32485 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput32485 : ExponentCode := normalNode8361

theorem canonicalSound32485 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32485.moment H = canonicalOutput32485.moment H :=
  canonical_of_padded canonicalInput32485 canonicalOutput32485 (by decide) (by decide)
    ⟨false, false, canonicalPermutation220, canonicalPermutation151⟩ (by decide +kernel) hH

def canonicalInput32486 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput32486 : ExponentCode := normalNode8067

theorem canonicalSound32486 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32486.moment H = canonicalOutput32486.moment H :=
  canonical_of_padded canonicalInput32486 canonicalOutput32486 (by decide) (by decide)
    ⟨false, false, canonicalPermutation95, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput32487 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput32487 : ExponentCode := normalNode8066

theorem canonicalSound32487 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32487.moment H = canonicalOutput32487.moment H :=
  canonical_of_padded canonicalInput32487 canonicalOutput32487 (by decide) (by decide)
    ⟨false, false, canonicalPermutation95, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput32488 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput32488 : ExponentCode := normalNode8067

theorem canonicalSound32488 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32488.moment H = canonicalOutput32488.moment H :=
  canonical_of_padded canonicalInput32488 canonicalOutput32488 (by decide) (by decide)
    ⟨false, false, canonicalPermutation62, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput32489 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32489 : ExponentCode := normalNode8361

theorem canonicalSound32489 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32489.moment H = canonicalOutput32489.moment H :=
  canonical_of_padded canonicalInput32489 canonicalOutput32489 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation371, OAI.MUB6.Certificate.PairSemantics.permutation311⟩ (by decide +kernel) hH

def canonicalInput32490 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput32490 : ExponentCode := normalNode8066

theorem canonicalSound32490 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32490.moment H = canonicalOutput32490.moment H :=
  canonical_of_padded canonicalInput32490 canonicalOutput32490 (by decide) (by decide)
    ⟨false, false, canonicalPermutation62, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput32491 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput32491 : ExponentCode := normalNode8066

theorem canonicalSound32491 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32491.moment H = canonicalOutput32491.moment H :=
  canonical_of_padded canonicalInput32491 canonicalOutput32491 (by decide) (by decide)
    ⟨false, false, canonicalPermutation96, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput32492 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput32492 : ExponentCode := normalNode8361

theorem canonicalSound32492 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32492.moment H = canonicalOutput32492.moment H :=
  canonical_of_padded canonicalInput32492 canonicalOutput32492 (by decide) (by decide)
    ⟨false, false, canonicalPermutation220, OAI.MUB6.Certificate.PairSemantics.permutation311⟩ (by decide +kernel) hH

def canonicalInput32493 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput32493 : ExponentCode := normalNode8067

theorem canonicalSound32493 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32493.moment H = canonicalOutput32493.moment H :=
  canonical_of_padded canonicalInput32493 canonicalOutput32493 (by decide) (by decide)
    ⟨false, false, canonicalPermutation96, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput32494 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput32494 : ExponentCode := normalNode8066

theorem canonicalSound32494 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32494.moment H = canonicalOutput32494.moment H :=
  canonical_of_padded canonicalInput32494 canonicalOutput32494 (by decide) (by decide)
    ⟨false, false, canonicalPermutation62, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput32495 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32495 : ExponentCode := normalNode8361

theorem canonicalSound32495 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32495.moment H = canonicalOutput32495.moment H :=
  canonical_of_padded canonicalInput32495 canonicalOutput32495 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation371, OAI.MUB6.Certificate.PairSemantics.permutation261⟩ (by decide +kernel) hH

def canonicalInput32496 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput32496 : ExponentCode := normalNode8067

theorem canonicalSound32496 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32496.moment H = canonicalOutput32496.moment H :=
  canonical_of_padded canonicalInput32496 canonicalOutput32496 (by decide) (by decide)
    ⟨false, false, canonicalPermutation62, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput32497 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput32497 : ExponentCode := normalNode8067

theorem canonicalSound32497 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32497.moment H = canonicalOutput32497.moment H :=
  canonical_of_padded canonicalInput32497 canonicalOutput32497 (by decide) (by decide)
    ⟨false, false, canonicalPermutation96, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput32498 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput32498 : ExponentCode := normalNode8361

theorem canonicalSound32498 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32498.moment H = canonicalOutput32498.moment H :=
  canonical_of_padded canonicalInput32498 canonicalOutput32498 (by decide) (by decide)
    ⟨false, false, canonicalPermutation220, OAI.MUB6.Certificate.PairSemantics.permutation261⟩ (by decide +kernel) hH

def canonicalInput32499 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput32499 : ExponentCode := normalNode8066

theorem canonicalSound32499 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32499.moment H = canonicalOutput32499.moment H :=
  canonical_of_padded canonicalInput32499 canonicalOutput32499 (by decide) (by decide)
    ⟨false, false, canonicalPermutation96, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput32500 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput32500 : ExponentCode := normalNode8064

theorem canonicalSound32500 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32500.moment H = canonicalOutput32500.moment H :=
  canonical_of_padded canonicalInput32500 canonicalOutput32500 (by decide) (by decide)
    ⟨false, false, canonicalPermutation62, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput32501 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput32501 : ExponentCode := normalNode8066

theorem canonicalSound32501 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32501.moment H = canonicalOutput32501.moment H :=
  canonical_of_padded canonicalInput32501 canonicalOutput32501 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation231, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput32502 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput32502 : ExponentCode := normalNode8066

theorem canonicalSound32502 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32502.moment H = canonicalOutput32502.moment H :=
  canonical_of_padded canonicalInput32502 canonicalOutput32502 (by decide) (by decide)
    ⟨false, false, canonicalPermutation101, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput32503 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput32503 : ExponentCode := normalNode8064

theorem canonicalSound32503 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32503.moment H = canonicalOutput32503.moment H :=
  canonical_of_padded canonicalInput32503 canonicalOutput32503 (by decide) (by decide)
    ⟨false, false, canonicalPermutation96, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput32504 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 2, 0, -2], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -2, 1, 1]]⟩

def canonicalOutput32504 : ExponentCode := normalNode8068

theorem canonicalSound32504 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32504.moment H = canonicalOutput32504.moment H :=
  canonical_of_padded canonicalInput32504 canonicalOutput32504 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation234, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput32505 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 3, -1, -2], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -2, 0, 2]]⟩

def canonicalOutput32505 : ExponentCode := normalNode8458

theorem canonicalSound32505 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32505.moment H = canonicalOutput32505.moment H :=
  canonical_of_padded canonicalInput32505 canonicalOutput32505 (by decide) (by decide)
    ⟨false, false, canonicalPermutation101, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput32506 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![2, 0, 0, 0, -2, 0], ![0, 0, 0, -1, 1, 0], ![-2, 0, 0, 1, 1, 0]]⟩

def canonicalOutput32506 : ExponentCode := normalNode10045

theorem canonicalSound32506 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32506.moment H = canonicalOutput32506.moment H :=
  canonical_of_padded canonicalInput32506 canonicalOutput32506 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation310, OAI.MUB6.Certificate.PairSemantics.permutation382⟩ (by decide +kernel) hH

def canonicalInput32507 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![-1, -2, 3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32507 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node56⟩

theorem canonicalSound32507 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32507.moment H = canonicalOutput32507.moment H :=
  canonical_of_padded canonicalInput32507 canonicalOutput32507 (by decide) (by decide)
    ⟨false, false, canonicalPermutation60, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput32508 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![2, -3, 1, 0, 0, 0], ![-2, 2, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32508 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node57⟩

theorem canonicalSound32508 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32508.moment H = canonicalOutput32508.moment H :=
  canonical_of_padded canonicalInput32508 canonicalOutput32508 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65, canonicalPermutation60⟩ (by decide +kernel) hH

def canonicalInput32509 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![2, -2, 0, 0, 0, 0], ![-2, 1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32509 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node62⟩

theorem canonicalSound32509 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32509.moment H = canonicalOutput32509.moment H :=
  canonical_of_padded canonicalInput32509 canonicalOutput32509 (by decide) (by decide)
    ⟨false, true, canonicalPermutation63, canonicalPermutation63⟩ (by decide +kernel) hH

def canonicalInput32510 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-2, 0, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32510 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node62⟩

theorem canonicalSound32510 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32510.moment H = canonicalOutput32510.moment H :=
  canonical_of_padded canonicalInput32510 canonicalOutput32510 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65⟩ (by decide +kernel) hH

def canonicalInput32511 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![2, 0, -2, 0, 0, 0], ![-2, -1, 3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32511 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node57⟩

theorem canonicalSound32511 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32511.moment H = canonicalOutput32511.moment H :=
  canonical_of_padded canonicalInput32511 canonicalOutput32511 (by decide) (by decide)
    ⟨false, false, canonicalPermutation63, OAI.MUB6.Certificate.PairSemantics.permutation254⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

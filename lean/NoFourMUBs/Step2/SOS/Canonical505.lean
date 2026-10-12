import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes44
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations
import OAI.Analysis.MutuallyUnbiased.PairTargets.ExtraPermutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput32320 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, -1, 0, 0], ![1, 0, 0, -1, 0, 0]]⟩

def canonicalOutput32320 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2851⟩

theorem canonicalSound32320 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32320.moment H = canonicalOutput32320.moment H :=
  canonical_of_padded canonicalInput32320 canonicalOutput32320 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61, canonicalPermutation70⟩ (by decide +kernel) hH

def canonicalInput32321 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, 0, -1, 0], ![1, 0, 0, -2, 1, 0]]⟩

def canonicalOutput32321 : ExponentCode := normalNode10415

theorem canonicalSound32321 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32321.moment H = canonicalOutput32321.moment H :=
  canonical_of_padded canonicalInput32321 canonicalOutput32321 (by decide) (by decide)
    ⟨false, true, canonicalPermutation239, OAI.MUB6.Certificate.PairSemantics.permutation400⟩ (by decide +kernel) hH

def canonicalInput32322 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![-2, 0, 0, 3, -1, 0], ![0, 0, 0, -1, 1, 0], ![2, 0, 0, -2, 0, 0]]⟩

def canonicalOutput32322 : ExponentCode := normalNode10371

theorem canonicalSound32322 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32322.moment H = canonicalOutput32322.moment H :=
  canonical_of_padded canonicalInput32322 canonicalOutput32322 (by decide) (by decide)
    ⟨false, false, canonicalPermutation224, OAI.MUB6.Certificate.PairSemantics.permutation400⟩ (by decide +kernel) hH

def canonicalInput32323 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput32323 : ExponentCode := normalNode11165

theorem canonicalSound32323 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32323.moment H = canonicalOutput32323.moment H :=
  canonical_of_padded canonicalInput32323 canonicalOutput32323 (by decide) (by decide)
    ⟨false, true, canonicalPermutation185, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32324 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput32324 : ExponentCode := normalNode8361

theorem canonicalSound32324 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32324.moment H = canonicalOutput32324.moment H :=
  canonical_of_padded canonicalInput32324 canonicalOutput32324 (by decide) (by decide)
    ⟨false, false, canonicalPermutation286, OAI.MUB6.Certificate.PairSemantics.permutation178⟩ (by decide +kernel) hH

def canonicalInput32325 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput32325 : ExponentCode := normalNode8361

theorem canonicalSound32325 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32325.moment H = canonicalOutput32325.moment H :=
  canonical_of_padded canonicalInput32325 canonicalOutput32325 (by decide) (by decide)
    ⟨false, false, canonicalPermutation351, OAI.MUB6.Certificate.PairSemantics.permutation178⟩ (by decide +kernel) hH

def canonicalInput32326 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput32326 : ExponentCode := normalNode11165

theorem canonicalSound32326 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32326.moment H = canonicalOutput32326.moment H :=
  canonical_of_padded canonicalInput32326 canonicalOutput32326 (by decide) (by decide)
    ⟨false, true, canonicalPermutation188, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32327 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput32327 : ExponentCode := normalNode8361

theorem canonicalSound32327 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32327.moment H = canonicalOutput32327.moment H :=
  canonical_of_padded canonicalInput32327 canonicalOutput32327 (by decide) (by decide)
    ⟨false, false, canonicalPermutation325, OAI.MUB6.Certificate.PairSemantics.permutation195⟩ (by decide +kernel) hH

def canonicalInput32328 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput32328 : ExponentCode := normalNode10645

theorem canonicalSound32328 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32328.moment H = canonicalOutput32328.moment H :=
  canonical_of_padded canonicalInput32328 canonicalOutput32328 (by decide) (by decide)
    ⟨false, false, canonicalPermutation349, OAI.MUB6.Certificate.PairSemantics.permutation184⟩ (by decide +kernel) hH

def canonicalInput32329 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput32329 : ExponentCode := normalNode10453

theorem canonicalSound32329 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32329.moment H = canonicalOutput32329.moment H :=
  canonical_of_padded canonicalInput32329 canonicalOutput32329 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput32330 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput32330 : ExponentCode := normalNode10453

theorem canonicalSound32330 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32330.moment H = canonicalOutput32330.moment H :=
  canonical_of_padded canonicalInput32330 canonicalOutput32330 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation208, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput32331 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32331 : ExponentCode := normalNode10645

theorem canonicalSound32331 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32331.moment H = canonicalOutput32331.moment H :=
  canonical_of_padded canonicalInput32331 canonicalOutput32331 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation219, OAI.MUB6.Certificate.PairSemantics.permutation184⟩ (by decide +kernel) hH

def canonicalInput32332 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput32332 : ExponentCode := normalNode8361

theorem canonicalSound32332 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32332.moment H = canonicalOutput32332.moment H :=
  canonical_of_padded canonicalInput32332 canonicalOutput32332 (by decide) (by decide)
    ⟨false, false, canonicalPermutation348, OAI.MUB6.Certificate.PairSemantics.permutation195⟩ (by decide +kernel) hH

def canonicalInput32333 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput32333 : ExponentCode := normalNode8361

theorem canonicalSound32333 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32333.moment H = canonicalOutput32333.moment H :=
  canonical_of_padded canonicalInput32333 canonicalOutput32333 (by decide) (by decide)
    ⟨false, false, canonicalPermutation347, OAI.MUB6.Certificate.PairSemantics.permutation195⟩ (by decide +kernel) hH

def canonicalInput32334 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput32334 : ExponentCode := normalNode10453

theorem canonicalSound32334 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32334.moment H = canonicalOutput32334.moment H :=
  canonical_of_padded canonicalInput32334 canonicalOutput32334 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput32335 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput32335 : ExponentCode := normalNode10645

theorem canonicalSound32335 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32335.moment H = canonicalOutput32335.moment H :=
  canonical_of_padded canonicalInput32335 canonicalOutput32335 (by decide) (by decide)
    ⟨false, false, canonicalPermutation349, canonicalPermutation14⟩ (by decide +kernel) hH

def canonicalInput32336 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32336 : ExponentCode := normalNode10645

theorem canonicalSound32336 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32336.moment H = canonicalOutput32336.moment H :=
  canonical_of_padded canonicalInput32336 canonicalOutput32336 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation219, canonicalPermutation14⟩ (by decide +kernel) hH

def canonicalInput32337 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput32337 : ExponentCode := normalNode10453

theorem canonicalSound32337 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32337.moment H = canonicalOutput32337.moment H :=
  canonical_of_padded canonicalInput32337 canonicalOutput32337 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation208, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput32338 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput32338 : ExponentCode := normalNode8361

theorem canonicalSound32338 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32338.moment H = canonicalOutput32338.moment H :=
  canonical_of_padded canonicalInput32338 canonicalOutput32338 (by decide) (by decide)
    ⟨false, false, canonicalPermutation357, OAI.MUB6.Certificate.PairSemantics.permutation195⟩ (by decide +kernel) hH

def canonicalInput32339 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput32339 : ExponentCode := normalNode11165

theorem canonicalSound32339 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32339.moment H = canonicalOutput32339.moment H :=
  canonical_of_padded canonicalInput32339 canonicalOutput32339 (by decide) (by decide)
    ⟨false, true, canonicalPermutation236, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32340 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput32340 : ExponentCode := normalNode8361

theorem canonicalSound32340 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32340.moment H = canonicalOutput32340.moment H :=
  canonical_of_padded canonicalInput32340 canonicalOutput32340 (by decide) (by decide)
    ⟨false, false, canonicalPermutation286, OAI.MUB6.Certificate.PairSemantics.permutation181⟩ (by decide +kernel) hH

def canonicalInput32341 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput32341 : ExponentCode := normalNode8361

theorem canonicalSound32341 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32341.moment H = canonicalOutput32341.moment H :=
  canonical_of_padded canonicalInput32341 canonicalOutput32341 (by decide) (by decide)
    ⟨false, false, canonicalPermutation351, OAI.MUB6.Certificate.PairSemantics.permutation181⟩ (by decide +kernel) hH

def canonicalInput32342 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput32342 : ExponentCode := normalNode11165

theorem canonicalSound32342 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32342.moment H = canonicalOutput32342.moment H :=
  canonical_of_padded canonicalInput32342 canonicalOutput32342 (by decide) (by decide)
    ⟨false, true, canonicalPermutation234, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32343 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput32343 : ExponentCode := normalNode10453

theorem canonicalSound32343 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32343.moment H = canonicalOutput32343.moment H :=
  canonical_of_padded canonicalInput32343 canonicalOutput32343 (by decide) (by decide)
    ⟨false, false, canonicalPermutation221, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput32344 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput32344 : ExponentCode := normalNode8361

theorem canonicalSound32344 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32344.moment H = canonicalOutput32344.moment H :=
  canonical_of_padded canonicalInput32344 canonicalOutput32344 (by decide) (by decide)
    ⟨false, false, canonicalPermutation348, OAI.MUB6.Certificate.PairSemantics.permutation181⟩ (by decide +kernel) hH

def canonicalInput32345 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput32345 : ExponentCode := normalNode10645

theorem canonicalSound32345 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32345.moment H = canonicalOutput32345.moment H :=
  canonical_of_padded canonicalInput32345 canonicalOutput32345 (by decide) (by decide)
    ⟨false, false, canonicalPermutation349, canonicalPermutation25⟩ (by decide +kernel) hH

def canonicalInput32346 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32346 : ExponentCode := normalNode10645

theorem canonicalSound32346 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32346.moment H = canonicalOutput32346.moment H :=
  canonical_of_padded canonicalInput32346 canonicalOutput32346 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation219, canonicalPermutation25⟩ (by decide +kernel) hH

def canonicalInput32347 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput32347 : ExponentCode := normalNode8361

theorem canonicalSound32347 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32347.moment H = canonicalOutput32347.moment H :=
  canonical_of_padded canonicalInput32347 canonicalOutput32347 (by decide) (by decide)
    ⟨false, false, canonicalPermutation325, OAI.MUB6.Certificate.PairSemantics.permutation181⟩ (by decide +kernel) hH

def canonicalInput32348 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput32348 : ExponentCode := normalNode10453

theorem canonicalSound32348 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32348.moment H = canonicalOutput32348.moment H :=
  canonical_of_padded canonicalInput32348 canonicalOutput32348 (by decide) (by decide)
    ⟨false, false, canonicalPermutation232, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput32349 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput32349 : ExponentCode := normalNode10645

theorem canonicalSound32349 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32349.moment H = canonicalOutput32349.moment H :=
  canonical_of_padded canonicalInput32349 canonicalOutput32349 (by decide) (by decide)
    ⟨false, false, canonicalPermutation148, OAI.MUB6.Certificate.PairSemantics.permutation184⟩ (by decide +kernel) hH

def canonicalInput32350 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput32350 : ExponentCode := normalNode10645

theorem canonicalSound32350 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32350.moment H = canonicalOutput32350.moment H :=
  canonical_of_padded canonicalInput32350 canonicalOutput32350 (by decide) (by decide)
    ⟨false, false, canonicalPermutation148, canonicalPermutation14⟩ (by decide +kernel) hH

def canonicalInput32351 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput32351 : ExponentCode := normalNode10645

theorem canonicalSound32351 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32351.moment H = canonicalOutput32351.moment H :=
  canonical_of_padded canonicalInput32351 canonicalOutput32351 (by decide) (by decide)
    ⟨false, false, canonicalPermutation148, canonicalPermutation25⟩ (by decide +kernel) hH

def canonicalInput32352 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32352 : ExponentCode := ⟨2, 2, OAI.MUB6.Certificate.PairSemantics.node5⟩

theorem canonicalSound32352 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32352.moment H = canonicalOutput32352.moment H :=
  canonical_of_padded canonicalInput32352 canonicalOutput32352 (by decide) (by decide)
    ⟨false, false, canonicalPermutation84, OAI.MUB6.Certificate.PairSemantics.permutation180⟩ (by decide +kernel) hH

def canonicalInput32353 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput32353 : ExponentCode := normalNode10645

theorem canonicalSound32353 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32353.moment H = canonicalOutput32353.moment H :=
  canonical_of_padded canonicalInput32353 canonicalOutput32353 (by decide) (by decide)
    ⟨false, false, canonicalPermutation307, canonicalPermutation25⟩ (by decide +kernel) hH

def canonicalInput32354 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput32354 : ExponentCode := normalNode10645

theorem canonicalSound32354 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32354.moment H = canonicalOutput32354.moment H :=
  canonical_of_padded canonicalInput32354 canonicalOutput32354 (by decide) (by decide)
    ⟨false, false, canonicalPermutation307, canonicalPermutation14⟩ (by decide +kernel) hH

def canonicalInput32355 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput32355 : ExponentCode := normalNode10645

theorem canonicalSound32355 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32355.moment H = canonicalOutput32355.moment H :=
  canonical_of_padded canonicalInput32355 canonicalOutput32355 (by decide) (by decide)
    ⟨false, false, canonicalPermutation307, OAI.MUB6.Certificate.PairSemantics.permutation184⟩ (by decide +kernel) hH

def canonicalInput32356 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput32356 : ExponentCode := normalNode8361

theorem canonicalSound32356 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32356.moment H = canonicalOutput32356.moment H :=
  canonical_of_padded canonicalInput32356 canonicalOutput32356 (by decide) (by decide)
    ⟨false, false, canonicalPermutation348, OAI.MUB6.Certificate.PairSemantics.permutation178⟩ (by decide +kernel) hH

def canonicalInput32357 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput32357 : ExponentCode := normalNode10453

theorem canonicalSound32357 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32357.moment H = canonicalOutput32357.moment H :=
  canonical_of_padded canonicalInput32357 canonicalOutput32357 (by decide) (by decide)
    ⟨false, false, canonicalPermutation221, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput32358 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32358 : ExponentCode := normalNode10645

theorem canonicalSound32358 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32358.moment H = canonicalOutput32358.moment H :=
  canonical_of_padded canonicalInput32358 canonicalOutput32358 (by decide) (by decide)
    ⟨false, false, canonicalPermutation223, canonicalPermutation25⟩ (by decide +kernel) hH

def canonicalInput32359 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput32359 : ExponentCode := normalNode10645

theorem canonicalSound32359 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32359.moment H = canonicalOutput32359.moment H :=
  canonical_of_padded canonicalInput32359 canonicalOutput32359 (by decide) (by decide)
    ⟨false, false, canonicalPermutation308, canonicalPermutation25⟩ (by decide +kernel) hH

def canonicalInput32360 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput32360 : ExponentCode := normalNode10453

theorem canonicalSound32360 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32360.moment H = canonicalOutput32360.moment H :=
  canonical_of_padded canonicalInput32360 canonicalOutput32360 (by decide) (by decide)
    ⟨false, false, canonicalPermutation232, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput32361 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput32361 : ExponentCode := normalNode8361

theorem canonicalSound32361 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32361.moment H = canonicalOutput32361.moment H :=
  canonical_of_padded canonicalInput32361 canonicalOutput32361 (by decide) (by decide)
    ⟨false, false, canonicalPermutation325, OAI.MUB6.Certificate.PairSemantics.permutation178⟩ (by decide +kernel) hH

def canonicalInput32362 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput32362 : ExponentCode := normalNode10453

theorem canonicalSound32362 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32362.moment H = canonicalOutput32362.moment H :=
  canonical_of_padded canonicalInput32362 canonicalOutput32362 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation210, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput32363 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32363 : ExponentCode := normalNode10645

theorem canonicalSound32363 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32363.moment H = canonicalOutput32363.moment H :=
  canonical_of_padded canonicalInput32363 canonicalOutput32363 (by decide) (by decide)
    ⟨false, false, canonicalPermutation223, canonicalPermutation14⟩ (by decide +kernel) hH

def canonicalInput32364 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput32364 : ExponentCode := normalNode8361

theorem canonicalSound32364 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32364.moment H = canonicalOutput32364.moment H :=
  canonical_of_padded canonicalInput32364 canonicalOutput32364 (by decide) (by decide)
    ⟨false, false, canonicalPermutation357, OAI.MUB6.Certificate.PairSemantics.permutation181⟩ (by decide +kernel) hH

def canonicalInput32365 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput32365 : ExponentCode := normalNode8361

theorem canonicalSound32365 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32365.moment H = canonicalOutput32365.moment H :=
  canonical_of_padded canonicalInput32365 canonicalOutput32365 (by decide) (by decide)
    ⟨false, false, canonicalPermutation347, OAI.MUB6.Certificate.PairSemantics.permutation181⟩ (by decide +kernel) hH

def canonicalInput32366 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput32366 : ExponentCode := normalNode10645

theorem canonicalSound32366 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32366.moment H = canonicalOutput32366.moment H :=
  canonical_of_padded canonicalInput32366 canonicalOutput32366 (by decide) (by decide)
    ⟨false, false, canonicalPermutation308, canonicalPermutation14⟩ (by decide +kernel) hH

def canonicalInput32367 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput32367 : ExponentCode := normalNode10453

theorem canonicalSound32367 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32367.moment H = canonicalOutput32367.moment H :=
  canonical_of_padded canonicalInput32367 canonicalOutput32367 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation211, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput32368 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput32368 : ExponentCode := normalNode8361

theorem canonicalSound32368 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32368.moment H = canonicalOutput32368.moment H :=
  canonical_of_padded canonicalInput32368 canonicalOutput32368 (by decide) (by decide)
    ⟨false, false, canonicalPermutation357, OAI.MUB6.Certificate.PairSemantics.permutation178⟩ (by decide +kernel) hH

def canonicalInput32369 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32369 : ExponentCode := normalNode10645

theorem canonicalSound32369 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32369.moment H = canonicalOutput32369.moment H :=
  canonical_of_padded canonicalInput32369 canonicalOutput32369 (by decide) (by decide)
    ⟨false, false, canonicalPermutation223, OAI.MUB6.Certificate.PairSemantics.permutation184⟩ (by decide +kernel) hH

def canonicalInput32370 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput32370 : ExponentCode := normalNode10453

theorem canonicalSound32370 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32370.moment H = canonicalOutput32370.moment H :=
  canonical_of_padded canonicalInput32370 canonicalOutput32370 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation210, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput32371 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput32371 : ExponentCode := normalNode10453

theorem canonicalSound32371 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32371.moment H = canonicalOutput32371.moment H :=
  canonical_of_padded canonicalInput32371 canonicalOutput32371 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation211, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput32372 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput32372 : ExponentCode := normalNode10645

theorem canonicalSound32372 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32372.moment H = canonicalOutput32372.moment H :=
  canonical_of_padded canonicalInput32372 canonicalOutput32372 (by decide) (by decide)
    ⟨false, false, canonicalPermutation308, OAI.MUB6.Certificate.PairSemantics.permutation184⟩ (by decide +kernel) hH

def canonicalInput32373 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput32373 : ExponentCode := normalNode8361

theorem canonicalSound32373 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32373.moment H = canonicalOutput32373.moment H :=
  canonical_of_padded canonicalInput32373 canonicalOutput32373 (by decide) (by decide)
    ⟨false, false, canonicalPermutation347, OAI.MUB6.Certificate.PairSemantics.permutation178⟩ (by decide +kernel) hH

def canonicalInput32374 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput32374 : ExponentCode := normalNode11165

theorem canonicalSound32374 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32374.moment H = canonicalOutput32374.moment H :=
  canonical_of_padded canonicalInput32374 canonicalOutput32374 (by decide) (by decide)
    ⟨false, true, canonicalPermutation229, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32375 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput32375 : ExponentCode := normalNode8361

theorem canonicalSound32375 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32375.moment H = canonicalOutput32375.moment H :=
  canonical_of_padded canonicalInput32375 canonicalOutput32375 (by decide) (by decide)
    ⟨false, false, canonicalPermutation286, OAI.MUB6.Certificate.PairSemantics.permutation195⟩ (by decide +kernel) hH

def canonicalInput32376 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput32376 : ExponentCode := normalNode8361

theorem canonicalSound32376 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32376.moment H = canonicalOutput32376.moment H :=
  canonical_of_padded canonicalInput32376 canonicalOutput32376 (by decide) (by decide)
    ⟨false, false, canonicalPermutation351, OAI.MUB6.Certificate.PairSemantics.permutation195⟩ (by decide +kernel) hH

def canonicalInput32377 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput32377 : ExponentCode := normalNode11165

theorem canonicalSound32377 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32377.moment H = canonicalOutput32377.moment H :=
  canonical_of_padded canonicalInput32377 canonicalOutput32377 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation205, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32378 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 2, 0, -2], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -2, 1, 1]]⟩

def canonicalOutput32378 : ExponentCode := normalNode10415

theorem canonicalSound32378 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32378.moment H = canonicalOutput32378.moment H :=
  canonical_of_padded canonicalInput32378 canonicalOutput32378 (by decide) (by decide)
    ⟨false, true, canonicalPermutation239, OAI.MUB6.Certificate.PairSemantics.permutation182⟩ (by decide +kernel) hH

def canonicalInput32379 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 3, -1, -2], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -2, 0, 2]]⟩

def canonicalOutput32379 : ExponentCode := normalNode10371

theorem canonicalSound32379 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32379.moment H = canonicalOutput32379.moment H :=
  canonical_of_padded canonicalInput32379 canonicalOutput32379 (by decide) (by decide)
    ⟨false, false, canonicalPermutation224, OAI.MUB6.Certificate.PairSemantics.permutation182⟩ (by decide +kernel) hH

def canonicalInput32380 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![2, 0, 0, 0, -2, 0], ![0, 0, 0, -1, 1, 0], ![-2, 0, 0, 1, 1, 0]]⟩

def canonicalOutput32380 : ExponentCode := normalNode10415

theorem canonicalSound32380 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32380.moment H = canonicalOutput32380.moment H :=
  canonical_of_padded canonicalInput32380 canonicalOutput32380 (by decide) (by decide)
    ⟨false, true, canonicalPermutation239, OAI.MUB6.Certificate.PairSemantics.permutation380⟩ (by decide +kernel) hH

def canonicalInput32381 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, -2, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32381 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node11⟩

theorem canonicalSound32381 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32381.moment H = canonicalOutput32381.moment H :=
  canonical_of_padded canonicalInput32381 canonicalOutput32381 (by decide) (by decide)
    ⟨false, false, canonicalPermutation60, OAI.MUB6.Certificate.PairSemantics.permutation180⟩ (by decide +kernel) hH

def canonicalInput32382 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![0, 2, -2, 0, 0, 0], ![0, -3, 3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32382 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node10⟩

theorem canonicalSound32382 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32382.moment H = canonicalOutput32382.moment H :=
  canonical_of_padded canonicalInput32382 canonicalOutput32382 (by decide) (by decide)
    ⟨false, false, canonicalPermutation60, OAI.MUB6.Certificate.PairSemantics.permutation180⟩ (by decide +kernel) hH

def canonicalInput32383 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![1, -3, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32383 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node56⟩

theorem canonicalSound32383 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32383.moment H = canonicalOutput32383.moment H :=
  canonical_of_padded canonicalInput32383 canonicalOutput32383 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation254, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

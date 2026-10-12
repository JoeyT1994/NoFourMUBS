import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput32384 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32384 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node61⟩

theorem canonicalSound32384 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32384.moment H = canonicalOutput32384.moment H :=
  canonical_of_padded canonicalInput32384 canonicalOutput32384 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation254, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput32385 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, -1, 0, 0], ![1, 0, 0, -1, 0, 0]]⟩

def canonicalOutput32385 : ExponentCode := normalNode10685

theorem canonicalSound32385 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32385.moment H = canonicalOutput32385.moment H :=
  canonical_of_padded canonicalInput32385 canonicalOutput32385 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation232, OAI.MUB6.Certificate.PairSemantics.permutation301⟩ (by decide +kernel) hH

def canonicalInput32386 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, 0, -1, 0], ![1, 0, 0, -2, 1, 0]]⟩

def canonicalOutput32386 : ExponentCode := normalNode10452

theorem canonicalSound32386 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32386.moment H = canonicalOutput32386.moment H :=
  canonical_of_padded canonicalInput32386 canonicalOutput32386 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation281, OAI.MUB6.Certificate.PairSemantics.permutation401⟩ (by decide +kernel) hH

def canonicalInput32387 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![-2, 0, 0, 3, -1, 0], ![0, 0, 0, -1, 1, 0], ![2, 0, 0, -2, 0, 0]]⟩

def canonicalOutput32387 : ExponentCode := normalNode10367

theorem canonicalSound32387 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32387.moment H = canonicalOutput32387.moment H :=
  canonical_of_padded canonicalInput32387 canonicalOutput32387 (by decide) (by decide)
    ⟨false, false, canonicalPermutation339, OAI.MUB6.Certificate.PairSemantics.permutation400⟩ (by decide +kernel) hH

def canonicalInput32388 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput32388 : ExponentCode := normalNode10869

theorem canonicalSound32388 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32388.moment H = canonicalOutput32388.moment H :=
  canonical_of_padded canonicalInput32388 canonicalOutput32388 (by decide) (by decide)
    ⟨false, true, canonicalPermutation92, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput32389 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput32389 : ExponentCode := normalNode8067

theorem canonicalSound32389 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32389.moment H = canonicalOutput32389.moment H :=
  canonical_of_padded canonicalInput32389 canonicalOutput32389 (by decide) (by decide)
    ⟨false, false, canonicalPermutation160, OAI.MUB6.Certificate.PairSemantics.permutation248⟩ (by decide +kernel) hH

def canonicalInput32390 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput32390 : ExponentCode := normalNode8067

theorem canonicalSound32390 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32390.moment H = canonicalOutput32390.moment H :=
  canonical_of_padded canonicalInput32390 canonicalOutput32390 (by decide) (by decide)
    ⟨false, false, canonicalPermutation281, OAI.MUB6.Certificate.PairSemantics.permutation248⟩ (by decide +kernel) hH

def canonicalInput32391 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput32391 : ExponentCode := normalNode10869

theorem canonicalSound32391 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32391.moment H = canonicalOutput32391.moment H :=
  canonical_of_padded canonicalInput32391 canonicalOutput32391 (by decide) (by decide)
    ⟨false, true, canonicalPermutation57, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput32392 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput32392 : ExponentCode := normalNode8067

theorem canonicalSound32392 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32392.moment H = canonicalOutput32392.moment H :=
  canonical_of_padded canonicalInput32392 canonicalOutput32392 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation355, OAI.MUB6.Certificate.PairSemantics.permutation294⟩ (by decide +kernel) hH

def canonicalInput32393 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput32393 : ExponentCode := normalNode10453

theorem canonicalSound32393 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32393.moment H = canonicalOutput32393.moment H :=
  canonical_of_padded canonicalInput32393 canonicalOutput32393 (by decide) (by decide)
    ⟨false, false, canonicalPermutation123, OAI.MUB6.Certificate.PairSemantics.permutation288⟩ (by decide +kernel) hH

def canonicalInput32394 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput32394 : ExponentCode := normalNode10435

theorem canonicalSound32394 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32394.moment H = canonicalOutput32394.moment H :=
  canonical_of_padded canonicalInput32394 canonicalOutput32394 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation230, canonicalPermutation25⟩ (by decide +kernel) hH

def canonicalInput32395 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput32395 : ExponentCode := normalNode10435

theorem canonicalSound32395 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32395.moment H = canonicalOutput32395.moment H :=
  canonical_of_padded canonicalInput32395 canonicalOutput32395 (by decide) (by decide)
    ⟨false, false, canonicalPermutation340, canonicalPermutation25⟩ (by decide +kernel) hH

def canonicalInput32396 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32396 : ExponentCode := normalNode10453

theorem canonicalSound32396 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32396.moment H = canonicalOutput32396.moment H :=
  canonical_of_padded canonicalInput32396 canonicalOutput32396 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation383, OAI.MUB6.Certificate.PairSemantics.permutation288⟩ (by decide +kernel) hH

def canonicalInput32397 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput32397 : ExponentCode := normalNode8067

theorem canonicalSound32397 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32397.moment H = canonicalOutput32397.moment H :=
  canonical_of_padded canonicalInput32397 canonicalOutput32397 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation283, OAI.MUB6.Certificate.PairSemantics.permutation294⟩ (by decide +kernel) hH

def canonicalInput32398 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput32398 : ExponentCode := normalNode8067

theorem canonicalSound32398 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32398.moment H = canonicalOutput32398.moment H :=
  canonical_of_padded canonicalInput32398 canonicalOutput32398 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation356, OAI.MUB6.Certificate.PairSemantics.permutation294⟩ (by decide +kernel) hH

def canonicalInput32399 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput32399 : ExponentCode := normalNode10435

theorem canonicalSound32399 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32399.moment H = canonicalOutput32399.moment H :=
  canonical_of_padded canonicalInput32399 canonicalOutput32399 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation230, canonicalPermutation55⟩ (by decide +kernel) hH

def canonicalInput32400 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput32400 : ExponentCode := normalNode10453

theorem canonicalSound32400 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32400.moment H = canonicalOutput32400.moment H :=
  canonical_of_padded canonicalInput32400 canonicalOutput32400 (by decide) (by decide)
    ⟨false, false, canonicalPermutation123, OAI.MUB6.Certificate.PairSemantics.permutation373⟩ (by decide +kernel) hH

def canonicalInput32401 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32401 : ExponentCode := normalNode10453

theorem canonicalSound32401 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32401.moment H = canonicalOutput32401.moment H :=
  canonical_of_padded canonicalInput32401 canonicalOutput32401 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation383, OAI.MUB6.Certificate.PairSemantics.permutation373⟩ (by decide +kernel) hH

def canonicalInput32402 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput32402 : ExponentCode := normalNode10435

theorem canonicalSound32402 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32402.moment H = canonicalOutput32402.moment H :=
  canonical_of_padded canonicalInput32402 canonicalOutput32402 (by decide) (by decide)
    ⟨false, false, canonicalPermutation340, canonicalPermutation55⟩ (by decide +kernel) hH

def canonicalInput32403 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput32403 : ExponentCode := normalNode8067

theorem canonicalSound32403 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32403.moment H = canonicalOutput32403.moment H :=
  canonical_of_padded canonicalInput32403 canonicalOutput32403 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation284, OAI.MUB6.Certificate.PairSemantics.permutation294⟩ (by decide +kernel) hH

def canonicalInput32404 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput32404 : ExponentCode := normalNode10869

theorem canonicalSound32404 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32404.moment H = canonicalOutput32404.moment H :=
  canonical_of_padded canonicalInput32404 canonicalOutput32404 (by decide) (by decide)
    ⟨false, true, canonicalPermutation90, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput32405 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput32405 : ExponentCode := normalNode8067

theorem canonicalSound32405 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32405.moment H = canonicalOutput32405.moment H :=
  canonical_of_padded canonicalInput32405 canonicalOutput32405 (by decide) (by decide)
    ⟨false, false, canonicalPermutation160, canonicalPermutation142⟩ (by decide +kernel) hH

def canonicalInput32406 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput32406 : ExponentCode := normalNode8067

theorem canonicalSound32406 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32406.moment H = canonicalOutput32406.moment H :=
  canonical_of_padded canonicalInput32406 canonicalOutput32406 (by decide) (by decide)
    ⟨false, false, canonicalPermutation281, canonicalPermutation142⟩ (by decide +kernel) hH

def canonicalInput32407 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput32407 : ExponentCode := normalNode10869

theorem canonicalSound32407 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32407.moment H = canonicalOutput32407.moment H :=
  canonical_of_padded canonicalInput32407 canonicalOutput32407 (by decide) (by decide)
    ⟨false, true, canonicalPermutation98, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput32408 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput32408 : ExponentCode := normalNode10435

theorem canonicalSound32408 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32408.moment H = canonicalOutput32408.moment H :=
  canonical_of_padded canonicalInput32408 canonicalOutput32408 (by decide) (by decide)
    ⟨false, false, canonicalPermutation341, canonicalPermutation55⟩ (by decide +kernel) hH

def canonicalInput32409 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput32409 : ExponentCode := normalNode8067

theorem canonicalSound32409 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32409.moment H = canonicalOutput32409.moment H :=
  canonical_of_padded canonicalInput32409 canonicalOutput32409 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation283, canonicalPermutation142⟩ (by decide +kernel) hH

def canonicalInput32410 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput32410 : ExponentCode := normalNode10453

theorem canonicalSound32410 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32410.moment H = canonicalOutput32410.moment H :=
  canonical_of_padded canonicalInput32410 canonicalOutput32410 (by decide) (by decide)
    ⟨false, false, canonicalPermutation123, OAI.MUB6.Certificate.PairSemantics.permutation248⟩ (by decide +kernel) hH

def canonicalInput32411 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32411 : ExponentCode := normalNode10453

theorem canonicalSound32411 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32411.moment H = canonicalOutput32411.moment H :=
  canonical_of_padded canonicalInput32411 canonicalOutput32411 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation383, OAI.MUB6.Certificate.PairSemantics.permutation248⟩ (by decide +kernel) hH

def canonicalInput32412 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput32412 : ExponentCode := normalNode8067

theorem canonicalSound32412 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32412.moment H = canonicalOutput32412.moment H :=
  canonical_of_padded canonicalInput32412 canonicalOutput32412 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation355, canonicalPermutation142⟩ (by decide +kernel) hH

def canonicalInput32413 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput32413 : ExponentCode := normalNode10435

theorem canonicalSound32413 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32413.moment H = canonicalOutput32413.moment H :=
  canonical_of_padded canonicalInput32413 canonicalOutput32413 (by decide) (by decide)
    ⟨false, false, canonicalPermutation342, canonicalPermutation55⟩ (by decide +kernel) hH

def canonicalInput32414 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput32414 : ExponentCode := normalNode10453

theorem canonicalSound32414 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32414.moment H = canonicalOutput32414.moment H :=
  canonical_of_padded canonicalInput32414 canonicalOutput32414 (by decide) (by decide)
    ⟨false, false, canonicalPermutation280, OAI.MUB6.Certificate.PairSemantics.permutation288⟩ (by decide +kernel) hH

def canonicalInput32415 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput32415 : ExponentCode := normalNode10453

theorem canonicalSound32415 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32415.moment H = canonicalOutput32415.moment H :=
  canonical_of_padded canonicalInput32415 canonicalOutput32415 (by decide) (by decide)
    ⟨false, false, canonicalPermutation280, OAI.MUB6.Certificate.PairSemantics.permutation373⟩ (by decide +kernel) hH

def canonicalInput32416 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput32416 : ExponentCode := normalNode10453

theorem canonicalSound32416 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32416.moment H = canonicalOutput32416.moment H :=
  canonical_of_padded canonicalInput32416 canonicalOutput32416 (by decide) (by decide)
    ⟨false, false, canonicalPermutation280, OAI.MUB6.Certificate.PairSemantics.permutation248⟩ (by decide +kernel) hH

def canonicalInput32417 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32417 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node64⟩

theorem canonicalSound32417 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32417.moment H = canonicalOutput32417.moment H :=
  canonical_of_padded canonicalInput32417 canonicalOutput32417 (by decide) (by decide)
    ⟨false, false, canonicalPermutation60, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput32418 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput32418 : ExponentCode := normalNode10453

theorem canonicalSound32418 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32418.moment H = canonicalOutput32418.moment H :=
  canonical_of_padded canonicalInput32418 canonicalOutput32418 (by decide) (by decide)
    ⟨false, false, canonicalPermutation279, OAI.MUB6.Certificate.PairSemantics.permutation248⟩ (by decide +kernel) hH

def canonicalInput32419 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput32419 : ExponentCode := normalNode10453

theorem canonicalSound32419 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32419.moment H = canonicalOutput32419.moment H :=
  canonical_of_padded canonicalInput32419 canonicalOutput32419 (by decide) (by decide)
    ⟨false, false, canonicalPermutation279, OAI.MUB6.Certificate.PairSemantics.permutation373⟩ (by decide +kernel) hH

def canonicalInput32420 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput32420 : ExponentCode := normalNode10453

theorem canonicalSound32420 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32420.moment H = canonicalOutput32420.moment H :=
  canonical_of_padded canonicalInput32420 canonicalOutput32420 (by decide) (by decide)
    ⟨false, false, canonicalPermutation279, OAI.MUB6.Certificate.PairSemantics.permutation288⟩ (by decide +kernel) hH

def canonicalInput32421 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput32421 : ExponentCode := normalNode8067

theorem canonicalSound32421 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32421.moment H = canonicalOutput32421.moment H :=
  canonical_of_padded canonicalInput32421 canonicalOutput32421 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation283, OAI.MUB6.Certificate.PairSemantics.permutation248⟩ (by decide +kernel) hH

def canonicalInput32422 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput32422 : ExponentCode := normalNode10435

theorem canonicalSound32422 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32422.moment H = canonicalOutput32422.moment H :=
  canonical_of_padded canonicalInput32422 canonicalOutput32422 (by decide) (by decide)
    ⟨false, false, canonicalPermutation341, canonicalPermutation25⟩ (by decide +kernel) hH

def canonicalInput32423 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32423 : ExponentCode := normalNode10453

theorem canonicalSound32423 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32423.moment H = canonicalOutput32423.moment H :=
  canonical_of_padded canonicalInput32423 canonicalOutput32423 (by decide) (by decide)
    ⟨false, false, canonicalPermutation107, OAI.MUB6.Certificate.PairSemantics.permutation248⟩ (by decide +kernel) hH

def canonicalInput32424 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput32424 : ExponentCode := normalNode10453

theorem canonicalSound32424 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32424.moment H = canonicalOutput32424.moment H :=
  canonical_of_padded canonicalInput32424 canonicalOutput32424 (by decide) (by decide)
    ⟨false, false, canonicalPermutation67, OAI.MUB6.Certificate.PairSemantics.permutation248⟩ (by decide +kernel) hH

def canonicalInput32425 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput32425 : ExponentCode := normalNode10435

theorem canonicalSound32425 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32425.moment H = canonicalOutput32425.moment H :=
  canonical_of_padded canonicalInput32425 canonicalOutput32425 (by decide) (by decide)
    ⟨false, false, canonicalPermutation342, canonicalPermutation25⟩ (by decide +kernel) hH

def canonicalInput32426 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput32426 : ExponentCode := normalNode8067

theorem canonicalSound32426 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32426.moment H = canonicalOutput32426.moment H :=
  canonical_of_padded canonicalInput32426 canonicalOutput32426 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation355, OAI.MUB6.Certificate.PairSemantics.permutation248⟩ (by decide +kernel) hH

def canonicalInput32427 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput32427 : ExponentCode := normalNode10435

theorem canonicalSound32427 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32427.moment H = canonicalOutput32427.moment H :=
  canonical_of_padded canonicalInput32427 canonicalOutput32427 (by decide) (by decide)
    ⟨false, false, canonicalPermutation175, canonicalPermutation25⟩ (by decide +kernel) hH

def canonicalInput32428 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32428 : ExponentCode := normalNode10453

theorem canonicalSound32428 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32428.moment H = canonicalOutput32428.moment H :=
  canonical_of_padded canonicalInput32428 canonicalOutput32428 (by decide) (by decide)
    ⟨false, false, canonicalPermutation107, OAI.MUB6.Certificate.PairSemantics.permutation373⟩ (by decide +kernel) hH

def canonicalInput32429 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput32429 : ExponentCode := normalNode8067

theorem canonicalSound32429 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32429.moment H = canonicalOutput32429.moment H :=
  canonical_of_padded canonicalInput32429 canonicalOutput32429 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation284, canonicalPermutation142⟩ (by decide +kernel) hH

def canonicalInput32430 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput32430 : ExponentCode := normalNode8067

theorem canonicalSound32430 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32430.moment H = canonicalOutput32430.moment H :=
  canonical_of_padded canonicalInput32430 canonicalOutput32430 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation356, canonicalPermutation142⟩ (by decide +kernel) hH

def canonicalInput32431 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput32431 : ExponentCode := normalNode10453

theorem canonicalSound32431 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32431.moment H = canonicalOutput32431.moment H :=
  canonical_of_padded canonicalInput32431 canonicalOutput32431 (by decide) (by decide)
    ⟨false, false, canonicalPermutation67, OAI.MUB6.Certificate.PairSemantics.permutation373⟩ (by decide +kernel) hH

def canonicalInput32432 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput32432 : ExponentCode := normalNode10435

theorem canonicalSound32432 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32432.moment H = canonicalOutput32432.moment H :=
  canonical_of_padded canonicalInput32432 canonicalOutput32432 (by decide) (by decide)
    ⟨false, false, canonicalPermutation214, canonicalPermutation25⟩ (by decide +kernel) hH

def canonicalInput32433 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput32433 : ExponentCode := normalNode8067

theorem canonicalSound32433 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32433.moment H = canonicalOutput32433.moment H :=
  canonical_of_padded canonicalInput32433 canonicalOutput32433 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation284, OAI.MUB6.Certificate.PairSemantics.permutation248⟩ (by decide +kernel) hH

def canonicalInput32434 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32434 : ExponentCode := normalNode10453

theorem canonicalSound32434 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32434.moment H = canonicalOutput32434.moment H :=
  canonical_of_padded canonicalInput32434 canonicalOutput32434 (by decide) (by decide)
    ⟨false, false, canonicalPermutation107, OAI.MUB6.Certificate.PairSemantics.permutation288⟩ (by decide +kernel) hH

def canonicalInput32435 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput32435 : ExponentCode := normalNode10435

theorem canonicalSound32435 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32435.moment H = canonicalOutput32435.moment H :=
  canonical_of_padded canonicalInput32435 canonicalOutput32435 (by decide) (by decide)
    ⟨false, false, canonicalPermutation175, canonicalPermutation55⟩ (by decide +kernel) hH

def canonicalInput32436 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput32436 : ExponentCode := normalNode10435

theorem canonicalSound32436 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32436.moment H = canonicalOutput32436.moment H :=
  canonical_of_padded canonicalInput32436 canonicalOutput32436 (by decide) (by decide)
    ⟨false, false, canonicalPermutation214, canonicalPermutation55⟩ (by decide +kernel) hH

def canonicalInput32437 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput32437 : ExponentCode := normalNode10453

theorem canonicalSound32437 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32437.moment H = canonicalOutput32437.moment H :=
  canonical_of_padded canonicalInput32437 canonicalOutput32437 (by decide) (by decide)
    ⟨false, false, canonicalPermutation67, OAI.MUB6.Certificate.PairSemantics.permutation288⟩ (by decide +kernel) hH

def canonicalInput32438 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput32438 : ExponentCode := normalNode8067

theorem canonicalSound32438 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32438.moment H = canonicalOutput32438.moment H :=
  canonical_of_padded canonicalInput32438 canonicalOutput32438 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation356, OAI.MUB6.Certificate.PairSemantics.permutation248⟩ (by decide +kernel) hH

def canonicalInput32439 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput32439 : ExponentCode := normalNode10869

theorem canonicalSound32439 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32439.moment H = canonicalOutput32439.moment H :=
  canonical_of_padded canonicalInput32439 canonicalOutput32439 (by decide) (by decide)
    ⟨false, true, canonicalPermutation100, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput32440 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput32440 : ExponentCode := normalNode8067

theorem canonicalSound32440 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32440.moment H = canonicalOutput32440.moment H :=
  canonical_of_padded canonicalInput32440 canonicalOutput32440 (by decide) (by decide)
    ⟨false, false, canonicalPermutation160, OAI.MUB6.Certificate.PairSemantics.permutation294⟩ (by decide +kernel) hH

def canonicalInput32441 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput32441 : ExponentCode := normalNode8067

theorem canonicalSound32441 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32441.moment H = canonicalOutput32441.moment H :=
  canonical_of_padded canonicalInput32441 canonicalOutput32441 (by decide) (by decide)
    ⟨false, false, canonicalPermutation281, OAI.MUB6.Certificate.PairSemantics.permutation294⟩ (by decide +kernel) hH

def canonicalInput32442 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput32442 : ExponentCode := normalNode10869

theorem canonicalSound32442 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32442.moment H = canonicalOutput32442.moment H :=
  canonical_of_padded canonicalInput32442 canonicalOutput32442 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation213, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput32443 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 2, 0, -2], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -2, 1, 1]]⟩

def canonicalOutput32443 : ExponentCode := normalNode10434

theorem canonicalSound32443 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32443.moment H = canonicalOutput32443.moment H :=
  canonical_of_padded canonicalInput32443 canonicalOutput32443 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation343, OAI.MUB6.Certificate.PairSemantics.permutation265⟩ (by decide +kernel) hH

def canonicalInput32444 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 3, -1, -2], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -2, 0, 2]]⟩

def canonicalOutput32444 : ExponentCode := normalNode10433

theorem canonicalSound32444 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32444.moment H = canonicalOutput32444.moment H :=
  canonical_of_padded canonicalInput32444 canonicalOutput32444 (by decide) (by decide)
    ⟨false, false, canonicalPermutation240, OAI.MUB6.Certificate.PairSemantics.permutation259⟩ (by decide +kernel) hH

def canonicalInput32445 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![2, 0, 0, 0, -2, 0], ![0, 0, 0, -1, 1, 0], ![-2, 0, 0, 1, 1, 0]]⟩

def canonicalOutput32445 : ExponentCode := normalNode10396

theorem canonicalSound32445 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32445.moment H = canonicalOutput32445.moment H :=
  canonical_of_padded canonicalInput32445 canonicalOutput32445 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation364, OAI.MUB6.Certificate.PairSemantics.permutation386⟩ (by decide +kernel) hH

def canonicalInput32446 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, -1, 0, 0], ![1, 0, 0, -1, 0, 0]]⟩

def canonicalOutput32446 : ExponentCode := normalNode10818

theorem canonicalSound32446 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32446.moment H = canonicalOutput32446.moment H :=
  canonical_of_padded canonicalInput32446 canonicalOutput32446 (by decide) (by decide)
    ⟨false, true, canonicalPermutation25, canonicalPermutation4⟩ (by decide +kernel) hH

def canonicalInput32447 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, 0, -1, 0], ![1, 0, 0, -2, 1, 0]]⟩

def canonicalOutput32447 : ExponentCode := normalNode10455

theorem canonicalSound32447 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32447.moment H = canonicalOutput32447.moment H :=
  canonical_of_padded canonicalInput32447 canonicalOutput32447 (by decide) (by decide)
    ⟨false, false, canonicalPermutation269, canonicalPermutation149⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

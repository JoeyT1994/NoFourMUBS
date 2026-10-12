import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes09
import NoFourMUBs.Step2.SOS.MomentCodes13
import NoFourMUBs.Step2.SOS.MomentCodes14
import NoFourMUBs.Step2.SOS.MomentCodes17
import NoFourMUBs.Step2.SOS.MomentCodes18
import NoFourMUBs.Step2.SOS.MomentCodes21
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes033
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes10
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes31
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes32
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes39
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes5
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes8
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput18496 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![0, 1, 0, 1, -2], ![1, -1, 1, -1, 0], ![0, 1, -2, -1, 2]]⟩

def canonicalOutput18496 : ExponentCode := normalNode3956

theorem canonicalSound18496 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18496.moment H = canonicalOutput18496.moment H :=
  canonical_of_padded canonicalInput18496 canonicalOutput18496 (by decide) (by decide)
    ⟨true, false, canonicalPermutation65, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput18497 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![0, 1, 0, 1, -2], ![1, 1, -2, 0, 0], ![0, -1, 1, -2, 2]]⟩

def canonicalOutput18497 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1994⟩

theorem canonicalSound18497 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18497.moment H = canonicalOutput18497.moment H :=
  canonical_of_padded canonicalInput18497 canonicalOutput18497 (by decide) (by decide)
    ⟨true, false, canonicalPermutation43, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput18498 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![0, 2, -3, 0, 1], ![0, -1, 1, -2, 2], ![1, 0, 1, 1, -3]]⟩

def canonicalOutput18498 : ExponentCode := normalNode7668

theorem canonicalSound18498 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18498.moment H = canonicalOutput18498.moment H :=
  canonical_of_padded canonicalInput18498 canonicalOutput18498 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation180, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput18499 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![0, 2, -3, 0, 1], ![1, -1, 1, -2, 1], ![0, 0, 1, 1, -2]]⟩

def canonicalOutput18499 : ExponentCode := normalNode4253

theorem canonicalSound18499 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18499.moment H = canonicalOutput18499.moment H :=
  canonical_of_padded canonicalInput18499 canonicalOutput18499 (by decide) (by decide)
    ⟨true, false, canonicalPermutation68, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput18500 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![0, 2, -3, 1, 0], ![0, -1, 1, 1, -1], ![1, 0, 1, -3, 1]]⟩

def canonicalOutput18500 : ExponentCode := normalNode7684

theorem canonicalSound18500 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18500.moment H = canonicalOutput18500.moment H :=
  canonical_of_padded canonicalInput18500 canonicalOutput18500 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation180, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput18501 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![0, 2, -3, 1, 0], ![1, -1, 1, 1, -2], ![0, 0, 1, -3, 2]]⟩

def canonicalOutput18501 : ExponentCode := normalNode7688

theorem canonicalSound18501 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18501.moment H = canonicalOutput18501.moment H :=
  canonical_of_padded canonicalInput18501 canonicalOutput18501 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation180, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput18502 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![0, 2, -2, 0, 0], ![0, 0, 0, 1, -1], ![1, -1, 1, -2, 1]]⟩

def canonicalOutput18502 : ExponentCode := normalNode9000

theorem canonicalSound18502 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18502.moment H = canonicalOutput18502.moment H :=
  canonical_of_padded canonicalInput18502 canonicalOutput18502 (by decide) (by decide)
    ⟨true, true, canonicalPermutation53, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput18503 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![0, 2, -2, 0, 0], ![1, 0, 0, 1, -2], ![0, -1, 1, -2, 2]]⟩

def canonicalOutput18503 : ExponentCode := normalNode3790

theorem canonicalSound18503 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18503.moment H = canonicalOutput18503.moment H :=
  canonical_of_padded canonicalInput18503 canonicalOutput18503 (by decide) (by decide)
    ⟨true, false, canonicalPermutation80, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput18504 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![0, 2, 0, 0, -2], ![0, 0, -2, 1, 1], ![1, -1, 1, -2, 1]]⟩

def canonicalOutput18504 : ExponentCode := normalNode4269

theorem canonicalSound18504 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18504.moment H = canonicalOutput18504.moment H :=
  canonical_of_padded canonicalInput18504 canonicalOutput18504 (by decide) (by decide)
    ⟨true, true, canonicalPermutation45, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput18505 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![0, 2, 0, 0, -2], ![1, 0, -2, 1, 0], ![0, -1, 1, -2, 2]]⟩

def canonicalOutput18505 : ExponentCode := normalNode3773

theorem canonicalSound18505 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18505.moment H = canonicalOutput18505.moment H :=
  canonical_of_padded canonicalInput18505 canonicalOutput18505 (by decide) (by decide)
    ⟨true, false, canonicalPermutation43, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput18506 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![0, 2, 0, 1, -3], ![0, -1, -2, 1, 2], ![1, 0, 1, -3, 1]]⟩

def canonicalOutput18506 : ExponentCode := normalNode7746

theorem canonicalSound18506 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18506.moment H = canonicalOutput18506.moment H :=
  canonical_of_padded canonicalInput18506 canonicalOutput18506 (by decide) (by decide)
    ⟨true, true, canonicalPermutation23, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18507 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![0, 2, 0, 1, -3], ![1, -1, -2, 1, 1], ![0, 0, 1, -3, 2]]⟩

def canonicalOutput18507 : ExponentCode := normalNode7748

theorem canonicalSound18507 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18507.moment H = canonicalOutput18507.moment H :=
  canonical_of_padded canonicalInput18507 canonicalOutput18507 (by decide) (by decide)
    ⟨true, true, canonicalPermutation23, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18508 : ExponentCode := ⟨3, 5, ![![-1, -1, 1, 1, 0], ![0, 3, -2, -2, 1], ![1, -2, 1, 1, -1]]⟩

def canonicalOutput18508 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node866⟩

theorem canonicalSound18508 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18508.moment H = canonicalOutput18508.moment H :=
  canonical_of_padded canonicalInput18508 canonicalOutput18508 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation168, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput18509 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![1, -2, 0, 1, 0], ![-1, 2, 1, -1, -1], ![1, 1, -2, -1, 1]]⟩

def canonicalOutput18509 : ExponentCode := normalNode2747

theorem canonicalSound18509 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18509.moment H = canonicalOutput18509.moment H :=
  canonical_of_padded canonicalInput18509 canonicalOutput18509 (by decide) (by decide)
    ⟨true, false, canonicalPermutation38, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput18510 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![1, -2, 0, 1, 0], ![0, 2, 1, -1, -2], ![0, 1, -2, -1, 2]]⟩

def canonicalOutput18510 : ExponentCode := normalNode2768

theorem canonicalSound18510 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18510.moment H = canonicalOutput18510.moment H :=
  canonical_of_padded canonicalInput18510 canonicalOutput18510 (by decide) (by decide)
    ⟨true, false, canonicalPermutation38, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput18511 : ExponentCode := ⟨3, 5, ![![-1, -1, 1, 1, 0], ![1, -1, -2, 1, 1], ![0, 2, 1, -2, -1]]⟩

def canonicalOutput18511 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node1141⟩

theorem canonicalSound18511 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18511.moment H = canonicalOutput18511.moment H :=
  canonical_of_padded canonicalInput18511 canonicalOutput18511 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation168, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18512 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![1, -1, -1, 0, 1], ![-1, 1, 1, -2, 1], ![1, 1, -1, 1, -2]]⟩

def canonicalOutput18512 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1384

theorem canonicalSound18512 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18512.moment H = canonicalOutput18512.moment H :=
  canonical_of_padded canonicalInput18512 canonicalOutput18512 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation168, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18513 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![1, -1, -1, 1, 0], ![-1, 2, -1, 1, -1], ![1, 0, 1, -3, 1]]⟩

def canonicalOutput18513 : ExponentCode := normalNode7812

theorem canonicalSound18513 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18513.moment H = canonicalOutput18513.moment H :=
  canonical_of_padded canonicalInput18513 canonicalOutput18513 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18514 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![1, -1, -1, 1, 0], ![0, 0, 1, 1, -2], ![0, 2, -1, -3, 2]]⟩

def canonicalOutput18514 : ExponentCode := normalNode3828

theorem canonicalSound18514 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18514.moment H = canonicalOutput18514.moment H :=
  canonical_of_padded canonicalInput18514 canonicalOutput18514 (by decide) (by decide)
    ⟨true, false, canonicalPermutation54, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput18515 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![1, -1, -1, 1, 0], ![0, 2, -1, 1, -2], ![0, 0, 1, -3, 2]]⟩

def canonicalOutput18515 : ExponentCode := normalNode7800

theorem canonicalSound18515 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18515.moment H = canonicalOutput18515.moment H :=
  canonical_of_padded canonicalInput18515 canonicalOutput18515 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation186, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput18516 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![1, -1, -1, 1, 0], ![1, 0, 1, -1, -1], ![-1, 2, -1, -1, 1]]⟩

def canonicalOutput18516 : ExponentCode := normalNode8883

theorem canonicalSound18516 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18516.moment H = canonicalOutput18516.moment H :=
  canonical_of_padded canonicalInput18516 canonicalOutput18516 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation168, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18517 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![1, -1, -1, 1, 0], ![1, 0, 1, 1, -3], ![-1, 2, -1, -3, 3]]⟩

def canonicalOutput18517 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1351

theorem canonicalSound18517 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18517.moment H = canonicalOutput18517.moment H :=
  canonical_of_padded canonicalInput18517 canonicalOutput18517 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18518 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![1, -1, 0, 0, 0], ![-1, 1, -2, 1, 1], ![1, 1, 1, -2, -1]]⟩

def canonicalOutput18518 : ExponentCode := normalNode9464

theorem canonicalSound18518 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18518.moment H = canonicalOutput18518.moment H :=
  canonical_of_padded canonicalInput18518 canonicalOutput18518 (by decide) (by decide)
    ⟨true, false, canonicalPermutation24, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput18519 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![1, -1, 0, 1, -1], ![-1, 2, -2, 1, 0], ![1, 0, 1, -3, 1]]⟩

def canonicalOutput18519 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2514⟩

theorem canonicalSound18519 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18519.moment H = canonicalOutput18519.moment H :=
  canonical_of_padded canonicalInput18519 canonicalOutput18519 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18520 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![1, -1, 0, 1, -1], ![0, 2, -2, 1, -1], ![0, 0, 1, -3, 2]]⟩

def canonicalOutput18520 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2515⟩

theorem canonicalSound18520 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18520.moment H = canonicalOutput18520.moment H :=
  canonical_of_padded canonicalInput18520 canonicalOutput18520 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18521 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![1, -1, 0, 1, -1], ![1, 1, -2, 0, 0], ![-1, 1, 1, -2, 1]]⟩

def canonicalOutput18521 : ExponentCode := normalNode4396

theorem canonicalSound18521 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18521.moment H = canonicalOutput18521.moment H :=
  canonical_of_padded canonicalInput18521 canonicalOutput18521 (by decide) (by decide)
    ⟨true, false, canonicalPermutation22, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput18522 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![1, 0, -2, 0, 1], ![0, 0, 1, 1, -2], ![0, 1, 0, -2, 1]]⟩

def canonicalOutput18522 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2056⟩

theorem canonicalSound18522 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18522.moment H = canonicalOutput18522.moment H :=
  canonical_of_padded canonicalInput18522 canonicalOutput18522 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation179, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput18523 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![1, 0, -2, 1, 0], ![-3, 2, 0, -1, 2], ![3, -1, 1, -1, -2]]⟩

def canonicalOutput18523 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1169

theorem canonicalSound18523 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18523.moment H = canonicalOutput18523.moment H :=
  canonical_of_padded canonicalInput18523 canonicalOutput18523 (by decide) (by decide)
    ⟨true, false, canonicalPermutation79, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput18524 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![1, 0, -2, 1, 0], ![-2, 2, 0, -1, 1], ![2, -1, 1, -1, -1]]⟩

def canonicalOutput18524 : ExponentCode := normalNode5428

theorem canonicalSound18524 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18524.moment H = canonicalOutput18524.moment H :=
  canonical_of_padded canonicalInput18524 canonicalOutput18524 (by decide) (by decide)
    ⟨true, false, canonicalPermutation79, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput18525 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![1, 0, 0, 1, -2], ![-1, -1, 1, -1, 2], ![1, 2, -2, -1, 0]]⟩

def canonicalOutput18525 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code884

theorem canonicalSound18525 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18525.moment H = canonicalOutput18525.moment H :=
  canonical_of_padded canonicalInput18525 canonicalOutput18525 (by decide) (by decide)
    ⟨true, false, canonicalPermutation81, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput18526 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![1, 0, 0, 1, -2], ![-1, -1, 2, -2, 2], ![1, 2, -3, 0, 0]]⟩

def canonicalOutput18526 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code882

theorem canonicalSound18526 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18526.moment H = canonicalOutput18526.moment H :=
  canonical_of_padded canonicalInput18526 canonicalOutput18526 (by decide) (by decide)
    ⟨true, false, canonicalPermutation81, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput18527 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![1, 0, 0, 1, -2], ![0, -1, 2, -2, 1], ![0, 2, -3, 0, 1]]⟩

def canonicalOutput18527 : ExponentCode := normalNode4308

theorem canonicalSound18527 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18527.moment H = canonicalOutput18527.moment H :=
  canonical_of_padded canonicalInput18527 canonicalOutput18527 (by decide) (by decide)
    ⟨true, false, canonicalPermutation81, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput18528 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![1, 1, -2, 0, 0], ![-2, 1, 1, -2, 2], ![2, -1, 0, 1, -2]]⟩

def canonicalOutput18528 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1192

theorem canonicalSound18528 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18528.moment H = canonicalOutput18528.moment H :=
  canonical_of_padded canonicalInput18528 canonicalOutput18528 (by decide) (by decide)
    ⟨true, false, canonicalPermutation22, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput18529 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![1, 1, -2, 0, 0], ![-2, 1, 1, 1, -1], ![2, -1, 0, -2, 1]]⟩

def canonicalOutput18529 : ExponentCode := normalNode5531

theorem canonicalSound18529 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18529.moment H = canonicalOutput18529.moment H :=
  canonical_of_padded canonicalInput18529 canonicalOutput18529 (by decide) (by decide)
    ⟨true, false, canonicalPermutation22, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput18530 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![1, 1, -2, 0, 0], ![-1, 1, 1, -2, 1], ![1, -1, 0, 1, -1]]⟩

def canonicalOutput18530 : ExponentCode := normalNode4396

theorem canonicalSound18530 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18530.moment H = canonicalOutput18530.moment H :=
  canonical_of_padded canonicalInput18530 canonicalOutput18530 (by decide) (by decide)
    ⟨true, false, canonicalPermutation22, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput18531 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![1, 1, -2, 0, 0], ![-1, 1, 1, 1, -2], ![1, -1, 0, -2, 2]]⟩

def canonicalOutput18531 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1195

theorem canonicalSound18531 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18531.moment H = canonicalOutput18531.moment H :=
  canonical_of_padded canonicalInput18531 canonicalOutput18531 (by decide) (by decide)
    ⟨true, false, canonicalPermutation22, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput18532 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![1, 1, -1, -1, 0], ![-2, 1, -1, 1, 1], ![2, -1, 1, -1, -1]]⟩

def canonicalOutput18532 : ExponentCode := normalNode11016

theorem canonicalSound18532 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18532.moment H = canonicalOutput18532.moment H :=
  canonical_of_padded canonicalInput18532 canonicalOutput18532 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18533 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![1, 1, -1, -1, 0], ![-1, -1, -1, 2, 1], ![1, 1, 1, -2, -1]]⟩

def canonicalOutput18533 : ExponentCode := normalNode11014

theorem canonicalSound18533 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18533.moment H = canonicalOutput18533.moment H :=
  canonical_of_padded canonicalInput18533 canonicalOutput18533 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput18534 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![1, 1, -1, -1, 0], ![-1, 1, -1, 2, -1], ![1, -1, 1, -2, 1]]⟩

def canonicalOutput18534 : ExponentCode := normalNode11016

theorem canonicalSound18534 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18534.moment H = canonicalOutput18534.moment H :=
  canonical_of_padded canonicalInput18534 canonicalOutput18534 (by decide) (by decide)
    ⟨true, false, canonicalPermutation23, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput18535 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![1, 1, -1, -1, 0], ![-1, 2, -1, 1, -1], ![1, -2, 1, -1, 1]]⟩

def canonicalOutput18535 : ExponentCode := normalNode11016

theorem canonicalSound18535 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18535.moment H = canonicalOutput18535.moment H :=
  canonical_of_padded canonicalInput18535 canonicalOutput18535 (by decide) (by decide)
    ⟨true, false, canonicalPermutation39, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput18536 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![2, -1, -1, 0, 0], ![-2, 1, 1, -2, 2], ![1, 1, -1, 1, -2]]⟩

def canonicalOutput18536 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1112

theorem canonicalSound18536 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18536.moment H = canonicalOutput18536.moment H :=
  canonical_of_padded canonicalInput18536 canonicalOutput18536 (by decide) (by decide)
    ⟨true, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput18537 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![2, -1, -1, 0, 0], ![-1, 1, 1, -2, 1], ![0, 1, -1, 1, -1]]⟩

def canonicalOutput18537 : ExponentCode := normalNode4304

theorem canonicalSound18537 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18537.moment H = canonicalOutput18537.moment H :=
  canonical_of_padded canonicalInput18537 canonicalOutput18537 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput18538 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![2, -1, 0, 0, -1], ![-2, 1, -2, 1, 2], ![1, 1, 1, -2, -1]]⟩

def canonicalOutput18538 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1111

theorem canonicalSound18538 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18538.moment H = canonicalOutput18538.moment H :=
  canonical_of_padded canonicalInput18538 canonicalOutput18538 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput18539 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![2, -1, 0, 0, -1], ![-1, 1, -2, 1, 1], ![0, 1, 1, -2, 0]]⟩

def canonicalOutput18539 : ExponentCode := normalNode4311

theorem canonicalSound18539 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18539.moment H = canonicalOutput18539.moment H :=
  canonical_of_padded canonicalInput18539 canonicalOutput18539 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput18540 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![2, 0, -1, 0, -1], ![-1, -2, 1, 1, 1], ![0, 3, -1, -2, 0]]⟩

def canonicalOutput18540 : ExponentCode := normalNode5431

theorem canonicalSound18540 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18540.moment H = canonicalOutput18540.moment H :=
  canonical_of_padded canonicalInput18540 canonicalOutput18540 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput18541 : ExponentCode := ⟨6, 6, ![![-1, -1, 1, 1, 0, 0], ![-1, -1, 1, 1, 0, 0], ![1, 1, -2, 0, 0, 0], ![1, 1, 0, -2, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput18541 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node614⟩

theorem canonicalSound18541 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18541.moment H = canonicalOutput18541.moment H :=
  canonical_of_padded canonicalInput18541 canonicalOutput18541 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation302, OAI.MUB6.Certificate.PairSemantics.permutation302⟩ (by decide +kernel) hH

def canonicalInput18542 : ExponentCode := ⟨6, 6, ![![-1, -1, 1, 1, 0, 0], ![-1, -1, 1, 1, 0, 0], ![2, 2, -2, -2, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput18542 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node275⟩

theorem canonicalSound18542 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18542.moment H = canonicalOutput18542.moment H :=
  canonical_of_padded canonicalInput18542 canonicalOutput18542 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput18543 : ExponentCode := ⟨6, 6, ![![-1, -1, 1, 1, 0, 0], ![1, -2, 1, 0, 0, 0], ![-1, 2, -2, 1, 0, 0], ![1, 1, 0, -2, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput18543 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node513⟩

theorem canonicalSound18543 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18543.moment H = canonicalOutput18543.moment H :=
  canonical_of_padded canonicalInput18543 canonicalOutput18543 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation302, canonicalPermutation111⟩ (by decide +kernel) hH

def canonicalInput18544 : ExponentCode := ⟨6, 6, ![![-1, -1, 1, 1, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![-2, 1, 0, 1, 0, 0], ![1, 1, 0, -2, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput18544 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code948

theorem canonicalSound18544 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18544.moment H = canonicalOutput18544.moment H :=
  canonical_of_padded canonicalInput18544 canonicalOutput18544 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation372, OAI.MUB6.Certificate.PairSemantics.permutation302⟩ (by decide +kernel) hH

def canonicalInput18545 : ExponentCode := ⟨6, 6, ![![-1, -1, 1, 1, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![1, 1, 0, -2, 0, 0], ![-2, 1, 0, 1, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput18545 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code948

theorem canonicalSound18545 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18545.moment H = canonicalOutput18545.moment H :=
  canonical_of_padded canonicalInput18545 canonicalOutput18545 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation367, OAI.MUB6.Certificate.PairSemantics.permutation302⟩ (by decide +kernel) hH

def canonicalInput18546 : ExponentCode := ⟨6, 6, ![![-1, -1, 1, 1, 0, 0], ![1, -2, 1, 0, 0, 0], ![2, 2, -2, -2, 0, 0], ![-2, 1, 0, 1, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput18546 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code616

theorem canonicalSound18546 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18546.moment H = canonicalOutput18546.moment H :=
  canonical_of_padded canonicalInput18546 canonicalOutput18546 (by decide) (by decide)
    ⟨true, false, canonicalPermutation10, OAI.MUB6.Certificate.PairSemantics.permutation299⟩ (by decide +kernel) hH

def canonicalInput18547 : ExponentCode := ⟨6, 6, ![![-1, -1, 1, 1, 0, 0], ![2, -1, 1, -2, 0, 0], ![-1, 2, -2, 1, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput18547 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node276⟩

theorem canonicalSound18547 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18547.moment H = canonicalOutput18547.moment H :=
  canonical_of_padded canonicalInput18547 canonicalOutput18547 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation299, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput18548 : ExponentCode := ⟨6, 6, ![![-1, -1, 1, 1, 0, 0], ![2, -1, 1, -2, 0, 0], ![1, 1, -2, 0, 0, 0], ![-2, 1, 0, 1, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput18548 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node513⟩

theorem canonicalSound18548 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18548.moment H = canonicalOutput18548.moment H :=
  canonical_of_padded canonicalInput18548 canonicalOutput18548 (by decide) (by decide)
    ⟨false, false, canonicalPermutation70, OAI.MUB6.Certificate.PairSemantics.permutation306⟩ (by decide +kernel) hH

def canonicalInput18549 : ExponentCode := ⟨3, 5, ![![-1, -1, 1, 2, -1], ![-2, 2, 1, -1, 0], ![3, -1, -2, -1, 1]]⟩

def canonicalOutput18549 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node535⟩

theorem canonicalSound18549 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18549.moment H = canonicalOutput18549.moment H :=
  canonical_of_padded canonicalInput18549 canonicalOutput18549 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput18550 : ExponentCode := ⟨3, 5, ![![-1, -1, 1, 2, -1], ![-1, 2, -2, -1, 2], ![2, -1, 1, -1, -1]]⟩

def canonicalOutput18550 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1212

theorem canonicalSound18550 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18550.moment H = canonicalOutput18550.moment H :=
  canonical_of_padded canonicalInput18550 canonicalOutput18550 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation192, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput18551 : ExponentCode := ⟨3, 5, ![![-1, -1, 1, 2, -1], ![-1, 2, -2, 1, 0], ![2, -1, 1, -3, 1]]⟩

def canonicalOutput18551 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node539⟩

theorem canonicalSound18551 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18551.moment H = canonicalOutput18551.moment H :=
  canonical_of_padded canonicalInput18551 canonicalOutput18551 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18552 : ExponentCode := ⟨3, 5, ![![-1, -1, 1, 2, -1], ![-1, 2, 1, -2, 0], ![2, -1, -2, 0, 1]]⟩

def canonicalOutput18552 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node626⟩

theorem canonicalSound18552 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18552.moment H = canonicalOutput18552.moment H :=
  canonical_of_padded canonicalInput18552 canonicalOutput18552 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation186, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput18553 : ExponentCode := ⟨3, 5, ![![-1, -1, 1, 2, -1], ![-1, 2, 1, -1, -1], ![2, -1, -2, -1, 2]]⟩

def canonicalOutput18553 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1212

theorem canonicalSound18553 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18553.moment H = canonicalOutput18553.moment H :=
  canonical_of_padded canonicalInput18553 canonicalOutput18553 (by decide) (by decide)
    ⟨true, true, canonicalPermutation53, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18554 : ExponentCode := ⟨3, 5, ![![-1, -1, 1, 2, -1], ![-1, 3, -2, 0, 0], ![2, -2, 1, -2, 1]]⟩

def canonicalOutput18554 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node356⟩

theorem canonicalSound18554 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18554.moment H = canonicalOutput18554.moment H :=
  canonical_of_padded canonicalInput18554 canonicalOutput18554 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation174, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput18555 : ExponentCode := ⟨3, 5, ![![-1, -1, 1, 2, -1], ![0, -2, 1, -1, 2], ![1, 3, -2, -1, -1]]⟩

def canonicalOutput18555 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node535⟩

theorem canonicalSound18555 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18555.moment H = canonicalOutput18555.moment H :=
  canonical_of_padded canonicalInput18555 canonicalOutput18555 (by decide) (by decide)
    ⟨true, false, canonicalPermutation45, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput18556 : ExponentCode := ⟨3, 5, ![![-1, -1, 1, 2, -1], ![0, -1, -2, -1, 4], ![1, 2, 1, -1, -3]]⟩

def canonicalOutput18556 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node695⟩

theorem canonicalSound18556 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18556.moment H = canonicalOutput18556.moment H :=
  canonical_of_padded canonicalInput18556 canonicalOutput18556 (by decide) (by decide)
    ⟨true, true, canonicalPermutation53, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput18557 : ExponentCode := ⟨5, 5, ![![-1, -1, 1, 2, -1], ![0, -1, -1, 0, 2], ![0, 1, -1, 0, 0], ![0, 1, 0, 0, -1], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput18557 : ExponentCode := normalNode8712

theorem canonicalSound18557 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18557.moment H = canonicalOutput18557.moment H :=
  canonical_of_padded canonicalInput18557 canonicalOutput18557 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation167, canonicalPermutation23⟩ (by decide +kernel) hH

def canonicalInput18558 : ExponentCode := ⟨5, 5, ![![-1, -1, 1, 2, -1], ![0, -1, -1, 0, 2], ![0, 1, -1, 0, 0], ![0, 1, 1, 0, -2], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput18558 : ExponentCode := normalNode8591

theorem canonicalSound18558 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18558.moment H = canonicalOutput18558.moment H :=
  canonical_of_padded canonicalInput18558 canonicalOutput18558 (by decide) (by decide)
    ⟨true, false, canonicalPermutation36, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput18559 : ExponentCode := ⟨5, 5, ![![-1, -1, 1, 2, -1], ![0, -1, -1, 0, 2], ![0, 1, 0, 0, -1], ![0, 1, 0, 0, -1], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput18559 : ExponentCode := normalNode8689

theorem canonicalSound18559 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18559.moment H = canonicalOutput18559.moment H :=
  canonical_of_padded canonicalInput18559 canonicalOutput18559 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation166, canonicalPermutation19⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

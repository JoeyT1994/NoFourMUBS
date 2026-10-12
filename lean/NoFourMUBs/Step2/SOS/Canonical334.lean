import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes06
import NoFourMUBs.Step2.SOS.MomentCodes08
import NoFourMUBs.Step2.SOS.MomentCodes10
import NoFourMUBs.Step2.SOS.MomentCodes12
import NoFourMUBs.Step2.SOS.MomentCodes13
import NoFourMUBs.Step2.SOS.MomentCodes14
import NoFourMUBs.Step2.SOS.MomentCodes15
import NoFourMUBs.Step2.SOS.MomentCodes18
import NoFourMUBs.Step2.SOS.NormalizationNodes007
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes11
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes24
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes25
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes27
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes28
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes30
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes31
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes32
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes44
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput21376 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![-1, -1, 2, -1, 1], ![0, 2, 0, -1, -1], ![2, -1, -2, 0, 1]]⟩

def canonicalOutput21376 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code986

theorem canonicalSound21376 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21376.moment H = canonicalOutput21376.moment H :=
  canonical_of_padded canonicalInput21376 canonicalOutput21376 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation169, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput21377 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![-1, -1, 2, -1, 1], ![1, -1, -1, -1, 2], ![1, 2, -1, 0, -2]]⟩

def canonicalOutput21377 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code946

theorem canonicalSound21377 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21377.moment H = canonicalOutput21377.moment H :=
  canonical_of_padded canonicalInput21377 canonicalOutput21377 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation188, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput21378 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![-1, -1, 2, -1, 1], ![1, -1, -1, 0, 1], ![1, 2, -1, -1, -1]]⟩

def canonicalOutput21378 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1009

theorem canonicalSound21378 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21378.moment H = canonicalOutput21378.moment H :=
  canonical_of_padded canonicalInput21378 canonicalOutput21378 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput21379 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![-1, -1, 2, 0, 0], ![0, -1, -1, -1, 3], ![2, 2, -1, -1, -2]]⟩

def canonicalOutput21379 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code942

theorem canonicalSound21379 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21379.moment H = canonicalOutput21379.moment H :=
  canonical_of_padded canonicalInput21379 canonicalOutput21379 (by decide) (by decide)
    ⟨true, true, canonicalPermutation19, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput21380 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![-1, -1, 2, 0, 0], ![0, 2, -1, 0, -1], ![2, -1, -1, -2, 2]]⟩

def canonicalOutput21380 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code850

theorem canonicalSound21380 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21380.moment H = canonicalOutput21380.moment H :=
  canonical_of_padded canonicalInput21380 canonicalOutput21380 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21381 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![-1, -1, 2, 0, 0], ![1, -1, -2, 1, 1], ![1, 2, 0, -3, 0]]⟩

def canonicalOutput21381 : ExponentCode := normalNode3373

theorem canonicalSound21381 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21381.moment H = canonicalOutput21381.moment H :=
  canonical_of_padded canonicalInput21381 canonicalOutput21381 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21382 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![-1, -1, 2, 0, 0], ![1, -1, -1, -1, 2], ![1, 2, -1, -1, -1]]⟩

def canonicalOutput21382 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code948

theorem canonicalSound21382 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21382.moment H = canonicalOutput21382.moment H :=
  canonical_of_padded canonicalInput21382 canonicalOutput21382 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21383 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![-1, -1, 2, 0, 0], ![1, -1, -1, 0, 1], ![1, 2, -1, -2, 0]]⟩

def canonicalOutput21383 : ExponentCode := normalNode3784

theorem canonicalSound21383 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21383.moment H = canonicalOutput21383.moment H :=
  canonical_of_padded canonicalInput21383 canonicalOutput21383 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21384 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![-1, -1, 2, 0, 0], ![1, -1, 0, -1, 1], ![1, 2, -2, -1, 0]]⟩

def canonicalOutput21384 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1994⟩

theorem canonicalSound21384 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21384.moment H = canonicalOutput21384.moment H :=
  canonical_of_padded canonicalInput21384 canonicalOutput21384 (by decide) (by decide)
    ⟨true, true, canonicalPermutation19, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput21385 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![-1, 0, 1, -2, 2], ![0, 2, -2, 1, -1], ![2, -2, 1, -1, 0]]⟩

def canonicalOutput21385 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code534

theorem canonicalSound21385 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21385.moment H = canonicalOutput21385.moment H :=
  canonical_of_padded canonicalInput21385 canonicalOutput21385 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation188, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput21386 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![-1, 1, 1, -2, 1], ![1, -2, 1, -1, 1], ![1, 1, -2, 1, -1]]⟩

def canonicalOutput21386 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code557

theorem canonicalSound21386 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21386.moment H = canonicalOutput21386.moment H :=
  canonical_of_padded canonicalInput21386 canonicalOutput21386 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation188, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput21387 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![-1, 1, 1, -1, 0], ![0, -2, 1, -1, 2], ![2, 1, -2, 0, -1]]⟩

def canonicalOutput21387 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1158

theorem canonicalSound21387 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21387.moment H = canonicalOutput21387.moment H :=
  canonical_of_padded canonicalInput21387 canonicalOutput21387 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation189, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21388 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![-1, 1, 1, -1, 0], ![1, -2, 1, 0, 0], ![1, 1, -2, -1, 1]]⟩

def canonicalOutput21388 : ExponentCode := normalNode4311

theorem canonicalSound21388 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21388.moment H = canonicalOutput21388.moment H :=
  canonical_of_padded canonicalInput21388 canonicalOutput21388 (by decide) (by decide)
    ⟨true, true, canonicalPermutation53, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput21389 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![-1, 1, 1, 0, -1], ![0, -2, 1, -1, 2], ![2, 1, -2, -1, 0]]⟩

def canonicalOutput21389 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code964

theorem canonicalSound21389 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21389.moment H = canonicalOutput21389.moment H :=
  canonical_of_padded canonicalInput21389 canonicalOutput21389 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21390 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![0, -2, 0, 0, 2], ![-1, 1, 2, -2, 0], ![2, 1, -2, 0, -1]]⟩

def canonicalOutput21390 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code907

theorem canonicalSound21390 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21390.moment H = canonicalOutput21390.moment H :=
  canonical_of_padded canonicalInput21390 canonicalOutput21390 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21391 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![0, -2, 0, 0, 2], ![0, 2, -2, 1, -1], ![1, 0, 2, -3, 0]]⟩

def canonicalOutput21391 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1963⟩

theorem canonicalSound21391 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21391.moment H = canonicalOutput21391.moment H :=
  canonical_of_padded canonicalInput21391 canonicalOutput21391 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21392 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![0, -2, 1, 0, 1], ![-2, 1, 1, -1, 1], ![3, 1, -2, -1, -1]]⟩

def canonicalOutput21392 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code961

theorem canonicalSound21392 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21392.moment H = canonicalOutput21392.moment H :=
  canonical_of_padded canonicalInput21392 canonicalOutput21392 (by decide) (by decide)
    ⟨true, false, canonicalPermutation78, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput21393 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![0, -2, 1, 0, 1], ![-1, 1, -2, -1, 3], ![2, 1, 1, -1, -3]]⟩

def canonicalOutput21393 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code978

theorem canonicalSound21393 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21393.moment H = canonicalOutput21393.moment H :=
  canonical_of_padded canonicalInput21393 canonicalOutput21393 (by decide) (by decide)
    ⟨true, false, canonicalPermutation78, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput21394 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![0, -2, 1, 0, 1], ![-1, 1, 1, -2, 1], ![2, 1, -2, 0, -1]]⟩

def canonicalOutput21394 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code889

theorem canonicalSound21394 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21394.moment H = canonicalOutput21394.moment H :=
  canonical_of_padded canonicalInput21394 canonicalOutput21394 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21395 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![0, -2, 1, 0, 1], ![-1, 1, 1, -1, 0], ![2, 1, -2, -1, 0]]⟩

def canonicalOutput21395 : ExponentCode := normalNode4310

theorem canonicalSound21395 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21395.moment H = canonicalOutput21395.moment H :=
  canonical_of_padded canonicalInput21395 canonicalOutput21395 (by decide) (by decide)
    ⟨true, false, canonicalPermutation78, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput21396 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![0, -2, 1, 0, 1], ![-1, 1, 1, 0, -1], ![2, 1, -2, -2, 1]]⟩

def canonicalOutput21396 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code874

theorem canonicalSound21396 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21396.moment H = canonicalOutput21396.moment H :=
  canonical_of_padded canonicalInput21396 canonicalOutput21396 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput21397 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![0, -2, 1, 0, 1], ![-1, 2, -2, -1, 2], ![2, 0, 1, -1, -2]]⟩

def canonicalOutput21397 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code888

theorem canonicalSound21397 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21397.moment H = canonicalOutput21397.moment H :=
  canonical_of_padded canonicalInput21397 canonicalOutput21397 (by decide) (by decide)
    ⟨true, false, canonicalPermutation78, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput21398 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![0, -2, 1, 0, 1], ![-1, 2, -2, 1, 0], ![2, 0, 1, -3, 0]]⟩

def canonicalOutput21398 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1943⟩

theorem canonicalSound21398 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21398.moment H = canonicalOutput21398.moment H :=
  canonical_of_padded canonicalInput21398 canonicalOutput21398 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21399 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![0, -2, 1, 0, 1], ![-1, 3, -2, -1, 1], ![2, -1, 1, -1, -1]]⟩

def canonicalOutput21399 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code776

theorem canonicalSound21399 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21399.moment H = canonicalOutput21399.moment H :=
  canonical_of_padded canonicalInput21399 canonicalOutput21399 (by decide) (by decide)
    ⟨true, false, canonicalPermutation78, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput21400 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![0, -2, 1, 0, 1], ![-1, 3, -2, 0, 0], ![2, -1, 1, -2, 0]]⟩

def canonicalOutput21400 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1943⟩

theorem canonicalSound21400 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21400.moment H = canonicalOutput21400.moment H :=
  canonical_of_padded canonicalInput21400 canonicalOutput21400 (by decide) (by decide)
    ⟨true, false, canonicalPermutation78, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput21401 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![0, -2, 1, 0, 1], ![0, 0, 1, -1, 0], ![1, 2, -2, -1, 0]]⟩

def canonicalOutput21401 : ExponentCode := normalNode8970

theorem canonicalSound21401 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21401.moment H = canonicalOutput21401.moment H :=
  canonical_of_padded canonicalInput21401 canonicalOutput21401 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation181, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput21402 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![0, -2, 1, 0, 1], ![0, 1, -2, -1, 2], ![1, 1, 1, -1, -2]]⟩

def canonicalOutput21402 : ExponentCode := normalNode4312

theorem canonicalSound21402 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21402.moment H = canonicalOutput21402.moment H :=
  canonical_of_padded canonicalInput21402 canonicalOutput21402 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21403 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![0, -2, 1, 0, 1], ![0, 1, 1, -2, 0], ![1, 1, -2, 0, 0]]⟩

def canonicalOutput21403 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2023⟩

theorem canonicalSound21403 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21403.moment H = canonicalOutput21403.moment H :=
  canonical_of_padded canonicalInput21403 canonicalOutput21403 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21404 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![0, -2, 1, 0, 1], ![0, 1, 1, -1, -1], ![1, 1, -2, -1, 1]]⟩

def canonicalOutput21404 : ExponentCode := normalNode4311

theorem canonicalSound21404 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21404.moment H = canonicalOutput21404.moment H :=
  canonical_of_padded canonicalInput21404 canonicalOutput21404 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21405 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![0, -2, 1, 0, 1], ![0, 1, 1, 0, -2], ![1, 1, -2, -2, 2]]⟩

def canonicalOutput21405 : ExponentCode := normalNode2414

theorem canonicalSound21405 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21405.moment H = canonicalOutput21405.moment H :=
  canonical_of_padded canonicalInput21405 canonicalOutput21405 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation198, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput21406 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![0, -2, 1, 0, 1], ![0, 2, -2, -1, 1], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput21406 : ExponentCode := normalNode3965

theorem canonicalSound21406 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21406.moment H = canonicalOutput21406.moment H :=
  canonical_of_padded canonicalInput21406 canonicalOutput21406 (by decide) (by decide)
    ⟨true, false, canonicalPermutation78, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput21407 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![0, -2, 1, 0, 1], ![0, 2, -2, 1, -1], ![1, 0, 1, -3, 1]]⟩

def canonicalOutput21407 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1944⟩

theorem canonicalSound21407 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21407.moment H = canonicalOutput21407.moment H :=
  canonical_of_padded canonicalInput21407 canonicalOutput21407 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21408 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![0, -2, 1, 0, 1], ![0, 3, -2, -1, 0], ![1, -1, 1, -1, 0]]⟩

def canonicalOutput21408 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1648⟩

theorem canonicalSound21408 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21408.moment H = canonicalOutput21408.moment H :=
  canonical_of_padded canonicalInput21408 canonicalOutput21408 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation173, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput21409 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![0, -2, 1, 0, 1], ![0, 3, -2, 0, -1], ![1, -1, 1, -2, 1]]⟩

def canonicalOutput21409 : ExponentCode := normalNode3491

theorem canonicalSound21409 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21409.moment H = canonicalOutput21409.moment H :=
  canonical_of_padded canonicalInput21409 canonicalOutput21409 (by decide) (by decide)
    ⟨true, false, canonicalPermutation78, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput21410 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![0, -2, 1, 0, 1], ![1, 0, 1, -1, -1], ![0, 2, -2, -1, 1]]⟩

def canonicalOutput21410 : ExponentCode := normalNode3965

theorem canonicalSound21410 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21410.moment H = canonicalOutput21410.moment H :=
  canonical_of_padded canonicalInput21410 canonicalOutput21410 (by decide) (by decide)
    ⟨true, false, canonicalPermutation78, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput21411 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![0, -2, 1, 1, 0], ![-1, 0, 1, -2, 2], ![2, 2, -2, -1, -1]]⟩

def canonicalOutput21411 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code667

theorem canonicalSound21411 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21411.moment H = canonicalOutput21411.moment H :=
  canonical_of_padded canonicalInput21411 canonicalOutput21411 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21412 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![0, -2, 1, 1, 0], ![-1, 1, 1, -3, 2], ![2, 1, -2, 0, -1]]⟩

def canonicalOutput21412 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code425

theorem canonicalSound21412 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21412.moment H = canonicalOutput21412.moment H :=
  canonical_of_padded canonicalInput21412 canonicalOutput21412 (by decide) (by decide)
    ⟨true, true, canonicalPermutation53, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21413 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![0, -2, 1, 1, 0], ![0, 0, 1, -3, 2], ![1, 2, -2, 0, -1]]⟩

def canonicalOutput21413 : ExponentCode := normalNode1867

theorem canonicalSound21413 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21413.moment H = canonicalOutput21413.moment H :=
  canonical_of_padded canonicalInput21413 canonicalOutput21413 (by decide) (by decide)
    ⟨true, true, canonicalPermutation53, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21414 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![0, -2, 1, 1, 0], ![0, 0, 1, -2, 1], ![1, 2, -2, -1, 0]]⟩

def canonicalOutput21414 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1838⟩

theorem canonicalSound21414 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21414.moment H = canonicalOutput21414.moment H :=
  canonical_of_padded canonicalInput21414 canonicalOutput21414 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21415 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![0, -2, 1, 1, 0], ![0, 1, -2, -1, 2], ![1, 1, 1, -2, -1]]⟩

def canonicalOutput21415 : ExponentCode := normalNode2575

theorem canonicalSound21415 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21415.moment H = canonicalOutput21415.moment H :=
  canonical_of_padded canonicalInput21415 canonicalOutput21415 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21416 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![0, -2, 1, 1, 0], ![0, 1, -2, 1, 0], ![1, 1, 1, -4, 1]]⟩

def canonicalOutput21416 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1580⟩

theorem canonicalSound21416 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21416.moment H = canonicalOutput21416.moment H :=
  canonical_of_padded canonicalInput21416 canonicalOutput21416 (by decide) (by decide)
    ⟨true, true, canonicalPermutation53, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21417 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![0, -2, 1, 1, 0], ![0, 1, 1, -3, 1], ![1, 1, -2, 0, 0]]⟩

def canonicalOutput21417 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1655⟩

theorem canonicalSound21417 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21417.moment H = canonicalOutput21417.moment H :=
  canonical_of_padded canonicalInput21417 canonicalOutput21417 (by decide) (by decide)
    ⟨true, true, canonicalPermutation53, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21418 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![0, -2, 1, 1, 0], ![0, 1, 1, -1, -1], ![1, 1, -2, -2, 2]]⟩

def canonicalOutput21418 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1733⟩

theorem canonicalSound21418 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21418.moment H = canonicalOutput21418.moment H :=
  canonical_of_padded canonicalInput21418 canonicalOutput21418 (by decide) (by decide)
    ⟨true, true, canonicalPermutation53, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21419 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![0, -2, 1, 1, 0], ![1, 0, 1, -3, 1], ![0, 2, -2, 0, 0]]⟩

def canonicalOutput21419 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1654⟩

theorem canonicalSound21419 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21419.moment H = canonicalOutput21419.moment H :=
  canonical_of_padded canonicalInput21419 canonicalOutput21419 (by decide) (by decide)
    ⟨true, true, canonicalPermutation53, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21420 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![0, -2, 1, 1, 0], ![1, 1, -2, -1, 1], ![0, 1, 1, -2, 0]]⟩

def canonicalOutput21420 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1837⟩

theorem canonicalSound21420 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21420.moment H = canonicalOutput21420.moment H :=
  canonical_of_padded canonicalInput21420 canonicalOutput21420 (by decide) (by decide)
    ⟨true, true, canonicalPermutation53, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21421 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![0, -2, 1, 1, 0], ![1, 1, -2, 1, -1], ![0, 1, 1, -4, 2]]⟩

def canonicalOutput21421 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1579⟩

theorem canonicalSound21421 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21421.moment H = canonicalOutput21421.moment H :=
  canonical_of_padded canonicalInput21421 canonicalOutput21421 (by decide) (by decide)
    ⟨true, true, canonicalPermutation53, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21422 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![0, -2, 1, 1, 0], ![1, 1, 1, -1, -2], ![0, 1, -2, -2, 3]]⟩

def canonicalOutput21422 : ExponentCode := normalNode2324

theorem canonicalSound21422 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21422.moment H = canonicalOutput21422.moment H :=
  canonical_of_padded canonicalInput21422 canonicalOutput21422 (by decide) (by decide)
    ⟨true, true, canonicalPermutation53, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21423 : ExponentCode := ⟨3, 5, ![![-1, 0, 0, 2, -1], ![0, -2, 2, -1, 1], ![1, 2, -2, -1, 0]]⟩

def canonicalOutput21423 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node706⟩

theorem canonicalSound21423 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21423.moment H = canonicalOutput21423.moment H :=
  canonical_of_padded canonicalInput21423 canonicalOutput21423 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21424 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![0, -2, 2, 0, 0], ![-1, 1, -2, -1, 3], ![2, 1, 0, -1, -2]]⟩

def canonicalOutput21424 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code849

theorem canonicalSound21424 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21424.moment H = canonicalOutput21424.moment H :=
  canonical_of_padded canonicalInput21424 canonicalOutput21424 (by decide) (by decide)
    ⟨true, true, canonicalPermutation36, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput21425 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![0, -2, 2, 0, 0], ![-1, 1, -2, 0, 2], ![2, 1, 0, -2, -1]]⟩

def canonicalOutput21425 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code859

theorem canonicalSound21425 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21425.moment H = canonicalOutput21425.moment H :=
  canonical_of_padded canonicalInput21425 canonicalOutput21425 (by decide) (by decide)
    ⟨true, true, canonicalPermutation36, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput21426 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![0, -2, 2, 0, 0], ![-1, 1, -1, -1, 2], ![2, 1, -1, -1, -1]]⟩

def canonicalOutput21426 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code943

theorem canonicalSound21426 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21426.moment H = canonicalOutput21426.moment H :=
  canonical_of_padded canonicalInput21426 canonicalOutput21426 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation180, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput21427 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![0, -2, 2, 0, 0], ![-1, 1, 0, -2, 2], ![2, 1, -2, 0, -1]]⟩

def canonicalOutput21427 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code859

theorem canonicalSound21427 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21427.moment H = canonicalOutput21427.moment H :=
  canonical_of_padded canonicalInput21427 canonicalOutput21427 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation180, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput21428 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![0, -2, 2, 0, 0], ![0, 0, -2, -1, 3], ![1, 2, 0, -1, -2]]⟩

def canonicalOutput21428 : ExponentCode := normalNode3776

theorem canonicalSound21428 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21428.moment H = canonicalOutput21428.moment H :=
  canonical_of_padded canonicalInput21428 canonicalOutput21428 (by decide) (by decide)
    ⟨true, true, canonicalPermutation36, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput21429 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![0, -2, 2, 0, 0], ![0, 0, -2, 0, 2], ![1, 2, 0, -2, -1]]⟩

def canonicalOutput21429 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2004⟩

theorem canonicalSound21429 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21429.moment H = canonicalOutput21429.moment H :=
  canonical_of_padded canonicalInput21429 canonicalOutput21429 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21430 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![0, -2, 2, 0, 0], ![0, 0, -1, -1, 2], ![1, 2, -1, -1, -1]]⟩

def canonicalOutput21430 : ExponentCode := normalNode3873

theorem canonicalSound21430 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21430.moment H = canonicalOutput21430.moment H :=
  canonical_of_padded canonicalInput21430 canonicalOutput21430 (by decide) (by decide)
    ⟨true, false, canonicalPermutation39, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput21431 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![0, -2, 2, 0, 0], ![0, 0, 0, -2, 2], ![1, 2, -2, 0, -1]]⟩

def canonicalOutput21431 : ExponentCode := normalNode3751

theorem canonicalSound21431 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21431.moment H = canonicalOutput21431.moment H :=
  canonical_of_padded canonicalInput21431 canonicalOutput21431 (by decide) (by decide)
    ⟨true, true, canonicalPermutation27, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput21432 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![0, -2, 2, 0, 0], ![0, 1, -2, -1, 2], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput21432 : ExponentCode := normalNode3773

theorem canonicalSound21432 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21432.moment H = canonicalOutput21432.moment H :=
  canonical_of_padded canonicalInput21432 canonicalOutput21432 (by decide) (by decide)
    ⟨true, true, canonicalPermutation36, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput21433 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![0, -2, 2, 0, 0], ![0, 1, -2, 0, 1], ![1, 1, 0, -2, 0]]⟩

def canonicalOutput21433 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1999⟩

theorem canonicalSound21433 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21433.moment H = canonicalOutput21433.moment H :=
  canonical_of_padded canonicalInput21433 canonicalOutput21433 (by decide) (by decide)
    ⟨true, true, canonicalPermutation36, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput21434 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![0, -2, 2, 0, 0], ![0, 1, -2, 1, 0], ![1, 1, 0, -3, 1]]⟩

def canonicalOutput21434 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1654⟩

theorem canonicalSound21434 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21434.moment H = canonicalOutput21434.moment H :=
  canonical_of_padded canonicalInput21434 canonicalOutput21434 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation188, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput21435 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![0, -2, 2, 0, 0], ![0, 1, -1, -1, 1], ![1, 1, -1, -1, 0]]⟩

def canonicalOutput21435 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2055⟩

theorem canonicalSound21435 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21435.moment H = canonicalOutput21435.moment H :=
  canonical_of_padded canonicalInput21435 canonicalOutput21435 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation180, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput21436 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![0, -2, 2, 0, 0], ![0, 1, -1, 0, 0], ![1, 1, -1, -2, 1]]⟩

def canonicalOutput21436 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2824⟩

theorem canonicalSound21436 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21436.moment H = canonicalOutput21436.moment H :=
  canonical_of_padded canonicalInput21436 canonicalOutput21436 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation173, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput21437 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![0, -2, 2, 0, 0], ![0, 1, 0, -2, 1], ![1, 1, -2, 0, 0]]⟩

def canonicalOutput21437 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1999⟩

theorem canonicalSound21437 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21437.moment H = canonicalOutput21437.moment H :=
  canonical_of_padded canonicalInput21437 canonicalOutput21437 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation180, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput21438 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![0, -2, 2, 0, 0], ![1, 0, -2, -1, 2], ![0, 2, 0, -1, -1]]⟩

def canonicalOutput21438 : ExponentCode := normalNode3780

theorem canonicalSound21438 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21438.moment H = canonicalOutput21438.moment H :=
  canonical_of_padded canonicalInput21438 canonicalOutput21438 (by decide) (by decide)
    ⟨true, true, canonicalPermutation36, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput21439 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![0, -2, 2, 0, 0], ![1, 0, -2, 0, 1], ![0, 2, 0, -2, 0]]⟩

def canonicalOutput21439 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2001⟩

theorem canonicalSound21439 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21439.moment H = canonicalOutput21439.moment H :=
  canonical_of_padded canonicalInput21439 canonicalOutput21439 (by decide) (by decide)
    ⟨true, false, canonicalPermutation61, canonicalPermutation9⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

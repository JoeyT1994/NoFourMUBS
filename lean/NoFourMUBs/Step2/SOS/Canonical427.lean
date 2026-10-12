import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes06
import NoFourMUBs.Step2.SOS.MomentCodes07
import NoFourMUBs.Step2.SOS.MomentCodes13
import NoFourMUBs.Step2.SOS.MomentCodes15
import NoFourMUBs.Step2.SOS.MomentCodes16
import NoFourMUBs.Step2.SOS.MomentCodes19
import NoFourMUBs.Step2.SOS.MomentCodes21
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes21
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes27
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes8
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations
import OAI.Analysis.MutuallyUnbiased.PairTargets.ExtraPermutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput27328 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![2, 0, -2, 0, 0, 0], ![-2, 1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput27328 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node62⟩

theorem canonicalSound27328 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27328.moment H = canonicalOutput27328.moment H :=
  canonical_of_padded canonicalInput27328 canonicalOutput27328 (by decide) (by decide)
    ⟨false, true, canonicalPermutation63, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65⟩ (by decide +kernel) hH

def canonicalInput27329 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![2, 1, -3, 0, 0, 0], ![-2, 0, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput27329 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node57⟩

theorem canonicalSound27329 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27329.moment H = canonicalOutput27329.moment H :=
  canonical_of_padded canonicalInput27329 canonicalOutput27329 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65, OAI.MUB6.Certificate.PairSemantics.permutation254⟩ (by decide +kernel) hH

def canonicalInput27330 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![3, -2, -1, 0, 0, 0], ![-3, 3, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput27330 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node58⟩

theorem canonicalSound27330 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27330.moment H = canonicalOutput27330.moment H :=
  canonical_of_padded canonicalInput27330 canonicalOutput27330 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65, canonicalPermutation63⟩ (by decide +kernel) hH

def canonicalInput27331 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![3, -1, -2, 0, 0, 0], ![-3, 2, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput27331 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node63⟩

theorem canonicalSound27331 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27331.moment H = canonicalOutput27331.moment H :=
  canonical_of_padded canonicalInput27331 canonicalOutput27331 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation254, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput27332 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![3, 0, -3, 0, 0, 0], ![-3, 1, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput27332 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node58⟩

theorem canonicalSound27332 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27332.moment H = canonicalOutput27332.moment H :=
  canonical_of_padded canonicalInput27332 canonicalOutput27332 (by decide) (by decide)
    ⟨false, true, canonicalPermutation63, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65⟩ (by decide +kernel) hH

def canonicalInput27333 : ExponentCode := ⟨3, 5, ![![0, -1, 1, 1, -1], ![-2, 3, -2, 1, 0], ![2, -2, 1, -2, 1]]⟩

def canonicalOutput27333 : ExponentCode := normalNode7135

theorem canonicalSound27333 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27333.moment H = canonicalOutput27333.moment H :=
  canonical_of_padded canonicalInput27333 canonicalOutput27333 (by decide) (by decide)
    ⟨true, false, canonicalPermutation44, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27334 : ExponentCode := ⟨4, 5, ![![0, -1, 1, 1, -1], ![-1, 1, 0, 1, -1], ![-1, -1, 1, -1, 2], ![2, 1, -2, -1, 0]]⟩

def canonicalOutput27334 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1367

theorem canonicalSound27334 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27334.moment H = canonicalOutput27334.moment H :=
  canonical_of_padded canonicalInput27334 canonicalOutput27334 (by decide) (by decide)
    ⟨true, false, canonicalPermutation65, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput27335 : ExponentCode := ⟨3, 5, ![![0, -1, 1, 1, -1], ![-1, 2, -3, 2, 0], ![1, -1, 2, -3, 1]]⟩

def canonicalOutput27335 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node875⟩

theorem canonicalSound27335 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27335.moment H = canonicalOutput27335.moment H :=
  canonical_of_padded canonicalInput27335 canonicalOutput27335 (by decide) (by decide)
    ⟨true, true, canonicalPermutation36, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27336 : ExponentCode := ⟨3, 5, ![![0, -1, 1, 1, -1], ![-1, 3, -2, 1, -1], ![1, -2, 1, -2, 2]]⟩

def canonicalOutput27336 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node871⟩

theorem canonicalSound27336 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27336.moment H = canonicalOutput27336.moment H :=
  canonical_of_padded canonicalInput27336 canonicalOutput27336 (by decide) (by decide)
    ⟨true, false, canonicalPermutation44, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27337 : ExponentCode := ⟨4, 5, ![![0, -1, 1, 1, -1], ![0, -1, -1, 1, 1], ![1, 0, 1, -1, -1], ![-1, 2, -1, -1, 1]]⟩

def canonicalOutput27337 : ExponentCode := normalNode8863

theorem canonicalSound27337 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27337.moment H = canonicalOutput27337.moment H :=
  canonical_of_padded canonicalInput27337 canonicalOutput27337 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation175, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27338 : ExponentCode := ⟨4, 5, ![![0, -1, 1, 1, -1], ![0, -1, 0, 1, 0], ![1, 1, -2, 0, 0], ![-1, 1, 1, -2, 1]]⟩

def canonicalOutput27338 : ExponentCode := normalNode8989

theorem canonicalSound27338 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27338.moment H = canonicalOutput27338.moment H :=
  canonical_of_padded canonicalInput27338 canonicalOutput27338 (by decide) (by decide)
    ⟨true, true, canonicalPermutation61, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput27339 : ExponentCode := ⟨4, 5, ![![0, -1, 1, 1, -1], ![0, 0, -2, 0, 2], ![0, 0, 1, 1, -2], ![0, 1, 0, -2, 1]]⟩

def canonicalOutput27339 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1309⟩

theorem canonicalSound27339 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27339.moment H = canonicalOutput27339.moment H :=
  canonical_of_padded canonicalInput27339 canonicalOutput27339 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27340 : ExponentCode := ⟨4, 5, ![![0, -1, 1, 1, -1], ![0, 0, 0, 1, -1], ![-1, -1, 1, -1, 2], ![1, 2, -2, -1, 0]]⟩

def canonicalOutput27340 : ExponentCode := normalNode8996

theorem canonicalSound27340 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27340.moment H = canonicalOutput27340.moment H :=
  canonical_of_padded canonicalInput27340 canonicalOutput27340 (by decide) (by decide)
    ⟨true, false, canonicalPermutation54, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput27341 : ExponentCode := ⟨4, 5, ![![0, -1, 1, 1, -1], ![0, 1, -1, -1, 1], ![-2, 1, -1, 1, 1], ![2, -1, 1, -1, -1]]⟩

def canonicalOutput27341 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1399

theorem canonicalSound27341 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27341.moment H = canonicalOutput27341.moment H :=
  canonical_of_padded canonicalInput27341 canonicalOutput27341 (by decide) (by decide)
    ⟨true, false, canonicalPermutation44, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27342 : ExponentCode := ⟨4, 5, ![![0, -1, 1, 1, -1], ![0, 1, -1, -1, 1], ![-1, -1, -1, 2, 1], ![1, 1, 1, -2, -1]]⟩

def canonicalOutput27342 : ExponentCode := normalNode11016

theorem canonicalSound27342 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27342.moment H = canonicalOutput27342.moment H :=
  canonical_of_padded canonicalInput27342 canonicalOutput27342 (by decide) (by decide)
    ⟨true, false, canonicalPermutation61, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput27343 : ExponentCode := ⟨4, 5, ![![0, -1, 1, 1, -1], ![0, 1, -1, -1, 1], ![-1, 1, -1, 2, -1], ![1, -1, 1, -2, 1]]⟩

def canonicalOutput27343 : ExponentCode := normalNode11016

theorem canonicalSound27343 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27343.moment H = canonicalOutput27343.moment H :=
  canonical_of_padded canonicalInput27343 canonicalOutput27343 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation192, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput27344 : ExponentCode := ⟨4, 5, ![![0, -1, 1, 1, -1], ![0, 1, -1, -1, 1], ![-1, 2, -1, 1, -1], ![1, -2, 1, -1, 1]]⟩

def canonicalOutput27344 : ExponentCode := normalNode11016

theorem canonicalSound27344 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27344.moment H = canonicalOutput27344.moment H :=
  canonical_of_padded canonicalInput27344 canonicalOutput27344 (by decide) (by decide)
    ⟨true, false, canonicalPermutation44, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27345 : ExponentCode := ⟨4, 5, ![![0, -1, 1, 1, -1], ![0, 1, 0, 1, -2], ![-2, -1, 1, -1, 3], ![2, 1, -2, -1, 0]]⟩

def canonicalOutput27345 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code457

theorem canonicalSound27345 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27345.moment H = canonicalOutput27345.moment H :=
  canonical_of_padded canonicalInput27345 canonicalOutput27345 (by decide) (by decide)
    ⟨true, false, canonicalPermutation65, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput27346 : ExponentCode := ⟨4, 5, ![![0, -1, 1, 1, -1], ![0, 1, 0, 1, -2], ![-1, -1, 1, -1, 2], ![1, 1, -2, -1, 1]]⟩

def canonicalOutput27346 : ExponentCode := normalNode2747

theorem canonicalSound27346 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27346.moment H = canonicalOutput27346.moment H :=
  canonical_of_padded canonicalInput27346 canonicalOutput27346 (by decide) (by decide)
    ⟨true, false, canonicalPermutation65, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput27347 : ExponentCode := ⟨4, 5, ![![0, -1, 1, 1, -1], ![1, -1, -1, 1, 0], ![0, 0, 1, -1, 0], ![-1, 2, -1, -1, 1]]⟩

def canonicalOutput27347 : ExponentCode := normalNode9467

theorem canonicalSound27347 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27347.moment H = canonicalOutput27347.moment H :=
  canonical_of_padded canonicalInput27347 canonicalOutput27347 (by decide) (by decide)
    ⟨true, true, canonicalPermutation18, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput27348 : ExponentCode := ⟨4, 5, ![![0, -1, 1, 1, -1], ![1, -1, -1, 1, 0], ![1, 0, 1, -1, -1], ![-2, 2, -1, -1, 2]]⟩

def canonicalOutput27348 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1365

theorem canonicalSound27348 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27348.moment H = canonicalOutput27348.moment H :=
  canonical_of_padded canonicalInput27348 canonicalOutput27348 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation175, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27349 : ExponentCode := ⟨4, 5, ![![0, -1, 1, 1, -1], ![1, -1, 0, 1, -1], ![0, 1, -2, 0, 1], ![-1, 1, 1, -2, 1]]⟩

def canonicalOutput27349 : ExponentCode := normalNode4560

theorem canonicalSound27349 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27349.moment H = canonicalOutput27349.moment H :=
  canonical_of_padded canonicalInput27349 canonicalOutput27349 (by decide) (by decide)
    ⟨true, false, canonicalPermutation42, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput27350 : ExponentCode := ⟨4, 5, ![![0, -1, 1, 1, -1], ![1, -1, 0, 1, -1], ![1, 1, -2, 0, 0], ![-2, 1, 1, -2, 2]]⟩

def canonicalOutput27350 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code972

theorem canonicalSound27350 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27350.moment H = canonicalOutput27350.moment H :=
  canonical_of_padded canonicalInput27350 canonicalOutput27350 (by decide) (by decide)
    ⟨true, false, canonicalPermutation22, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput27351 : ExponentCode := ⟨4, 5, ![![0, -1, 1, 1, -1], ![1, 0, -1, 0, 0], ![-1, -2, 1, 1, 1], ![0, 3, -1, -2, 0]]⟩

def canonicalOutput27351 : ExponentCode := normalNode10655

theorem canonicalSound27351 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27351.moment H = canonicalOutput27351.moment H :=
  canonical_of_padded canonicalInput27351 canonicalOutput27351 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput27352 : ExponentCode := ⟨4, 5, ![![0, -1, 1, 1, -1], ![1, 0, 0, 1, -2], ![-2, -1, 1, -1, 3], ![1, 2, -2, -1, 0]]⟩

def canonicalOutput27352 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code417

theorem canonicalSound27352 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27352.moment H = canonicalOutput27352.moment H :=
  canonical_of_padded canonicalInput27352 canonicalOutput27352 (by decide) (by decide)
    ⟨true, false, canonicalPermutation81, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput27353 : ExponentCode := ⟨4, 5, ![![0, -1, 1, 1, -1], ![1, 0, 0, 1, -2], ![-1, -1, 1, -1, 2], ![0, 2, -2, -1, 1]]⟩

def canonicalOutput27353 : ExponentCode := normalNode2557

theorem canonicalSound27353 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27353.moment H = canonicalOutput27353.moment H :=
  canonical_of_padded canonicalInput27353 canonicalOutput27353 (by decide) (by decide)
    ⟨true, false, canonicalPermutation81, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput27354 : ExponentCode := ⟨4, 5, ![![0, -1, 1, 1, -1], ![1, 1, -1, -1, 0], ![-3, 1, -1, 1, 2], ![2, -1, 1, -1, -1]]⟩

def canonicalOutput27354 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1390

theorem canonicalSound27354 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27354.moment H = canonicalOutput27354.moment H :=
  canonical_of_padded canonicalInput27354 canonicalOutput27354 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput27355 : ExponentCode := ⟨4, 5, ![![0, -1, 1, 1, -1], ![1, 1, -1, -1, 0], ![-2, -1, -1, 2, 2], ![1, 1, 1, -2, -1]]⟩

def canonicalOutput27355 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1391

theorem canonicalSound27355 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27355.moment H = canonicalOutput27355.moment H :=
  canonical_of_padded canonicalInput27355 canonicalOutput27355 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput27356 : ExponentCode := ⟨4, 5, ![![0, -1, 1, 1, -1], ![1, 1, -1, -1, 0], ![-2, 1, -1, 1, 1], ![1, -1, 1, -1, 0]]⟩

def canonicalOutput27356 : ExponentCode := normalNode8863

theorem canonicalSound27356 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27356.moment H = canonicalOutput27356.moment H :=
  canonical_of_padded canonicalInput27356 canonicalOutput27356 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation160, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput27357 : ExponentCode := ⟨4, 5, ![![0, -1, 1, 1, -1], ![1, 1, -1, -1, 0], ![-2, 1, -1, 2, 0], ![1, -1, 1, -2, 1]]⟩

def canonicalOutput27357 : ExponentCode := normalNode10196

theorem canonicalSound27357 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27357.moment H = canonicalOutput27357.moment H :=
  canonical_of_padded canonicalInput27357 canonicalOutput27357 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput27358 : ExponentCode := ⟨4, 5, ![![0, -1, 1, 1, -1], ![1, 1, -1, -1, 0], ![-2, 2, -1, 1, 0], ![1, -2, 1, -1, 1]]⟩

def canonicalOutput27358 : ExponentCode := normalNode10205

theorem canonicalSound27358 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27358.moment H = canonicalOutput27358.moment H :=
  canonical_of_padded canonicalInput27358 canonicalOutput27358 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput27359 : ExponentCode := ⟨4, 5, ![![0, -1, 1, 1, -1], ![1, 1, -1, -1, 0], ![-1, -1, -1, 2, 1], ![0, 1, 1, -2, 0]]⟩

def canonicalOutput27359 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1771⟩

theorem canonicalSound27359 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27359.moment H = canonicalOutput27359.moment H :=
  canonical_of_padded canonicalInput27359 canonicalOutput27359 (by decide) (by decide)
    ⟨true, false, canonicalPermutation58, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput27360 : ExponentCode := ⟨4, 5, ![![0, -1, 1, 1, -1], ![1, 1, -1, -1, 0], ![-1, 1, -1, 2, -1], ![0, -1, 1, -2, 2]]⟩

def canonicalOutput27360 : ExponentCode := normalNode10196

theorem canonicalSound27360 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27360.moment H = canonicalOutput27360.moment H :=
  canonical_of_padded canonicalInput27360 canonicalOutput27360 (by decide) (by decide)
    ⟨true, false, canonicalPermutation54, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27361 : ExponentCode := ⟨4, 5, ![![0, -1, 1, 1, -1], ![1, 1, -1, -1, 0], ![-1, 2, -1, 1, -1], ![0, -2, 1, -1, 2]]⟩

def canonicalOutput27361 : ExponentCode := normalNode10205

theorem canonicalSound27361 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27361.moment H = canonicalOutput27361.moment H :=
  canonical_of_padded canonicalInput27361 canonicalOutput27361 (by decide) (by decide)
    ⟨true, false, canonicalPermutation54, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27362 : ExponentCode := ⟨4, 5, ![![0, -1, 1, 1, -1], ![2, 0, -1, 0, -1], ![-2, -2, 1, 1, 2], ![0, 3, -1, -2, 0]]⟩

def canonicalOutput27362 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code882

theorem canonicalSound27362 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27362.moment H = canonicalOutput27362.moment H :=
  canonical_of_padded canonicalInput27362 canonicalOutput27362 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput27363 : ExponentCode := ⟨4, 5, ![![0, -1, 1, 1, -1], ![2, 0, -1, 0, -1], ![-1, -2, 1, 1, 1], ![-1, 3, -1, -2, 1]]⟩

def canonicalOutput27363 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code974

theorem canonicalSound27363 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27363.moment H = canonicalOutput27363.moment H :=
  canonical_of_padded canonicalInput27363 canonicalOutput27363 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput27364 : ExponentCode := ⟨4, 5, ![![0, -1, 1, 2, -2], ![-1, 0, 1, 0, 0], ![0, 1, -2, 0, 1], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput27364 : ExponentCode := normalNode10855

theorem canonicalSound27364 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27364.moment H = canonicalOutput27364.moment H :=
  canonical_of_padded canonicalInput27364 canonicalOutput27364 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput27365 : ExponentCode := ⟨4, 5, ![![0, -1, 1, 2, -2], ![0, -1, 0, -1, 2], ![0, 1, -2, 0, 1], ![0, 1, 1, -1, -1]]⟩

def canonicalOutput27365 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node517⟩

theorem canonicalSound27365 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27365.moment H = canonicalOutput27365.moment H :=
  canonical_of_padded canonicalInput27365 canonicalOutput27365 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation154, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput27366 : ExponentCode := ⟨4, 5, ![![0, -1, 1, 2, -2], ![0, 0, 1, 0, -1], ![-1, 1, -2, 0, 2], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput27366 : ExponentCode := normalNode10271

theorem canonicalSound27366 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27366.moment H = canonicalOutput27366.moment H :=
  canonical_of_padded canonicalInput27366 canonicalOutput27366 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput27367 : ExponentCode := ⟨4, 5, ![![0, -1, 1, 2, -2], ![0, 0, 1, 0, -1], ![0, 1, -2, 0, 1], ![0, 0, 0, -2, 2]]⟩

def canonicalOutput27367 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1316⟩

theorem canonicalSound27367 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27367.moment H = canonicalOutput27367.moment H :=
  canonical_of_padded canonicalInput27367 canonicalOutput27367 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput27368 : ExponentCode := ⟨4, 5, ![![0, -1, 2, -2, 1], ![-1, 0, 0, 2, -1], ![0, 1, -1, -1, 1], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput27368 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1772⟩

theorem canonicalSound27368 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27368.moment H = canonicalOutput27368.moment H :=
  canonical_of_padded canonicalInput27368 canonicalOutput27368 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation188, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput27369 : ExponentCode := ⟨4, 5, ![![0, -1, 2, -2, 1], ![-1, 0, 0, 2, -1], ![0, 1, -1, 1, -1], ![1, 0, -1, -1, 1]]⟩

def canonicalOutput27369 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1740⟩

theorem canonicalSound27369 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27369.moment H = canonicalOutput27369.moment H :=
  canonical_of_padded canonicalInput27369 canonicalOutput27369 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation188, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput27370 : ExponentCode := ⟨4, 5, ![![0, -1, 2, -2, 1], ![0, 0, 0, 2, -2], ![-1, 1, -1, -1, 2], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput27370 : ExponentCode := normalNode2450

theorem canonicalSound27370 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27370.moment H = canonicalOutput27370.moment H :=
  canonical_of_padded canonicalInput27370 canonicalOutput27370 (by decide) (by decide)
    ⟨true, true, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput27371 : ExponentCode := ⟨4, 5, ![![0, -1, 2, -2, 1], ![0, 0, 0, 2, -2], ![-1, 1, -1, 1, 0], ![1, 0, -1, -1, 1]]⟩

def canonicalOutput27371 : ExponentCode := normalNode2397

theorem canonicalSound27371 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27371.moment H = canonicalOutput27371.moment H :=
  canonical_of_padded canonicalInput27371 canonicalOutput27371 (by decide) (by decide)
    ⟨true, true, canonicalPermutation72, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput27372 : ExponentCode := ⟨4, 5, ![![0, -1, 2, -2, 1], ![0, 0, 0, 2, -2], ![0, 1, -1, -1, 1], ![0, 0, -1, 1, 0]]⟩

def canonicalOutput27372 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node837⟩

theorem canonicalSound27372 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27372.moment H = canonicalOutput27372.moment H :=
  canonical_of_padded canonicalInput27372 canonicalOutput27372 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput27373 : ExponentCode := ⟨4, 5, ![![0, -1, 2, -2, 1], ![0, 0, 0, 2, -2], ![0, 1, -1, 1, -1], ![0, 0, -1, -1, 2]]⟩

def canonicalOutput27373 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1346⟩

theorem canonicalSound27373 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27373.moment H = canonicalOutput27373.moment H :=
  canonical_of_padded canonicalInput27373 canonicalOutput27373 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27374 : ExponentCode := ⟨6, 6, ![![0, -1, 2, -2, 1, 0], ![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, 0, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput27374 : ExponentCode := normalNode7087

theorem canonicalSound27374 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27374.moment H = canonicalOutput27374.moment H :=
  canonical_of_padded canonicalInput27374 canonicalOutput27374 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation320, canonicalPermutation85⟩ (by decide +kernel) hH

def canonicalInput27375 : ExponentCode := ⟨6, 6, ![![0, -1, 2, -2, 1, 0], ![0, 1, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, 0, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput27375 : ExponentCode := normalNode8336

theorem canonicalSound27375 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27375.moment H = canonicalOutput27375.moment H :=
  canonical_of_padded canonicalInput27375 canonicalOutput27375 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation372, OAI.MUB6.Certificate.PairSemantics.permutation362⟩ (by decide +kernel) hH

def canonicalInput27376 : ExponentCode := ⟨6, 6, ![![0, -1, 2, -2, 1, 0], ![1, 0, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, 0, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput27376 : ExponentCode := normalNode8336

theorem canonicalSound27376 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27376.moment H = canonicalOutput27376.moment H :=
  canonical_of_padded canonicalInput27376 canonicalOutput27376 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation372, OAI.MUB6.Certificate.PairSemantics.permutation342⟩ (by decide +kernel) hH

def canonicalInput27377 : ExponentCode := ⟨6, 6, ![![0, -1, 2, -2, 1, 0], ![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, 0, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput27377 : ExponentCode := normalNode7087

theorem canonicalSound27377 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27377.moment H = canonicalOutput27377.moment H :=
  canonical_of_padded canonicalInput27377 canonicalOutput27377 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation322, canonicalPermutation85⟩ (by decide +kernel) hH

def canonicalInput27378 : ExponentCode := ⟨3, 4, ![![0, -1, 2, -1], ![-5, 2, 0, 3], ![5, -1, -2, -2]]⟩

def canonicalOutput27378 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1062

theorem canonicalSound27378 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27378.moment H = canonicalOutput27378.moment H :=
  canonical_of_padded canonicalInput27378 canonicalOutput27378 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27379 : ExponentCode := ⟨3, 4, ![![0, -1, 2, -1], ![-5, 3, 0, 2], ![5, -2, -2, -1]]⟩

def canonicalOutput27379 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1062

theorem canonicalSound27379 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27379.moment H = canonicalOutput27379.moment H :=
  canonical_of_padded canonicalInput27379 canonicalOutput27379 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27380 : ExponentCode := ⟨3, 4, ![![0, -1, 2, -1], ![-4, 2, 2, 0], ![4, -1, -4, 1]]⟩

def canonicalOutput27380 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node156⟩

theorem canonicalSound27380 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27380.moment H = canonicalOutput27380.moment H :=
  canonical_of_padded canonicalInput27380 canonicalOutput27380 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27381 : ExponentCode := ⟨3, 4, ![![0, -1, 2, -1], ![-4, 3, -1, 2], ![4, -2, -1, -1]]⟩

def canonicalOutput27381 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node219⟩

theorem canonicalSound27381 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27381.moment H = canonicalOutput27381.moment H :=
  canonical_of_padded canonicalInput27381 canonicalOutput27381 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27382 : ExponentCode := ⟨3, 4, ![![0, -1, 2, -1], ![-4, 3, 0, 1], ![4, -2, -2, 0]]⟩

def canonicalOutput27382 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node217⟩

theorem canonicalSound27382 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27382.moment H = canonicalOutput27382.moment H :=
  canonical_of_padded canonicalInput27382 canonicalOutput27382 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27383 : ExponentCode := ⟨3, 4, ![![0, -1, 2, -1], ![-4, 3, 1, 0], ![4, -2, -3, 1]]⟩

def canonicalOutput27383 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node189⟩

theorem canonicalSound27383 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27383.moment H = canonicalOutput27383.moment H :=
  canonical_of_padded canonicalInput27383 canonicalOutput27383 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27384 : ExponentCode := ⟨3, 4, ![![0, -1, 2, -1], ![-3, -1, -1, 5], ![3, 2, -1, -4]]⟩

def canonicalOutput27384 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1218

theorem canonicalSound27384 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27384.moment H = canonicalOutput27384.moment H :=
  canonical_of_padded canonicalInput27384 canonicalOutput27384 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27385 : ExponentCode := ⟨3, 4, ![![0, -1, 2, -1], ![-3, -1, 1, 3], ![3, 2, -3, -2]]⟩

def canonicalOutput27385 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node186⟩

theorem canonicalSound27385 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27385.moment H = canonicalOutput27385.moment H :=
  canonical_of_padded canonicalInput27385 canonicalOutput27385 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27386 : ExponentCode := ⟨3, 4, ![![0, -1, 2, -1], ![-3, -1, 2, 2], ![3, 2, -4, -1]]⟩

def canonicalOutput27386 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node154⟩

theorem canonicalSound27386 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27386.moment H = canonicalOutput27386.moment H :=
  canonical_of_padded canonicalInput27386 canonicalOutput27386 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27387 : ExponentCode := ⟨3, 4, ![![0, -1, 2, -1], ![-3, 2, 2, -1], ![3, -1, -4, 2]]⟩

def canonicalOutput27387 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node154⟩

theorem canonicalSound27387 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27387.moment H = canonicalOutput27387.moment H :=
  canonical_of_padded canonicalInput27387 canonicalOutput27387 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27388 : ExponentCode := ⟨3, 4, ![![0, -1, 2, -1], ![-3, 3, -1, 1], ![3, -2, -1, 0]]⟩

def canonicalOutput27388 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node222⟩

theorem canonicalSound27388 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27388.moment H = canonicalOutput27388.moment H :=
  canonical_of_padded canonicalInput27388 canonicalOutput27388 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27389 : ExponentCode := ⟨3, 4, ![![0, -1, 2, -1], ![-3, 3, 1, -1], ![3, -2, -3, 2]]⟩

def canonicalOutput27389 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node186⟩

theorem canonicalSound27389 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27389.moment H = canonicalOutput27389.moment H :=
  canonical_of_padded canonicalInput27389 canonicalOutput27389 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27390 : ExponentCode := ⟨3, 4, ![![0, -1, 2, -1], ![-3, 4, -1, 0], ![3, -3, -1, 1]]⟩

def canonicalOutput27390 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node221⟩

theorem canonicalSound27390 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27390.moment H = canonicalOutput27390.moment H :=
  canonical_of_padded canonicalInput27390 canonicalOutput27390 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27391 : ExponentCode := ⟨3, 4, ![![0, -1, 2, -1], ![-2, -2, -1, 5], ![2, 3, -1, -4]]⟩

def canonicalOutput27391 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1222

theorem canonicalSound27391 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27391.moment H = canonicalOutput27391.moment H :=
  canonical_of_padded canonicalInput27391 canonicalOutput27391 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

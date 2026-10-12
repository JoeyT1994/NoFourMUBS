import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes19
import NoFourMUBs.Step2.SOS.NormalizationNodes000
import NoFourMUBs.Step2.SOS.NormalizationNodes001
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes018
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes10
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes21
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes28
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput26368 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 2, -1], ![1, 1, -2, 0, 0], ![-2, 1, 1, -1, 1], ![1, -1, 1, -1, 0]]⟩

def canonicalOutput26368 : ExponentCode := normalNode4311

theorem canonicalSound26368 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26368.moment H = canonicalOutput26368.moment H :=
  canonical_of_padded canonicalInput26368 canonicalOutput26368 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation183, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26369 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 2, -1], ![1, 1, -2, 0, 0], ![-1, -1, 2, 1, -1], ![0, 1, 0, -3, 2]]⟩

def canonicalOutput26369 : ExponentCode := normalNode3491

theorem canonicalSound26369 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26369.moment H = canonicalOutput26369.moment H :=
  canonical_of_padded canonicalInput26369 canonicalOutput26369 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation183, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26370 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 2, -1], ![1, 1, 0, -2, 0], ![-2, -1, 2, -1, 2], ![1, 1, -2, 1, -1]]⟩

def canonicalOutput26370 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1262

theorem canonicalSound26370 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26370.moment H = canonicalOutput26370.moment H :=
  canonical_of_padded canonicalInput26370 canonicalOutput26370 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation183, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26371 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 2, -1], ![1, 1, 0, -2, 0], ![-2, -1, 3, 0, 0], ![1, 1, -3, 0, 1]]⟩

def canonicalOutput26371 : ExponentCode := normalNode5948

theorem canonicalSound26371 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26371.moment H = canonicalOutput26371.moment H :=
  canonical_of_padded canonicalInput26371 canonicalOutput26371 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation183, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26372 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 2, -1], ![1, 1, 0, -2, 0], ![-2, 1, 2, -1, 0], ![1, -1, -2, 1, 1]]⟩

def canonicalOutput26372 : ExponentCode := normalNode5852

theorem canonicalSound26372 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26372.moment H = canonicalOutput26372.moment H :=
  canonical_of_padded canonicalInput26372 canonicalOutput26372 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation183, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26373 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 2, -1], ![1, 1, 0, -2, 0], ![-1, -1, 2, -1, 1], ![0, 1, -2, 1, 0]]⟩

def canonicalOutput26373 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1848⟩

theorem canonicalSound26373 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26373.moment H = canonicalOutput26373.moment H :=
  canonical_of_padded canonicalInput26373 canonicalOutput26373 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation183, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput26374 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 2, -1], ![1, 1, 0, -2, 0], ![-1, -1, 3, 0, -1], ![0, 1, -3, 0, 2]]⟩

def canonicalOutput26374 : ExponentCode := normalNode5948

theorem canonicalSound26374 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26374.moment H = canonicalOutput26374.moment H :=
  canonical_of_padded canonicalInput26374 canonicalOutput26374 (by decide) (by decide)
    ⟨true, false, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput26375 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 2, -1], ![1, 1, 0, -2, 0], ![-1, 1, 2, -1, -1], ![0, -1, -2, 1, 2]]⟩

def canonicalOutput26375 : ExponentCode := normalNode5852

theorem canonicalSound26375 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26375.moment H = canonicalOutput26375.moment H :=
  canonical_of_padded canonicalInput26375 canonicalOutput26375 (by decide) (by decide)
    ⟨true, false, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput26376 : ExponentCode := ⟨3, 5, ![![0, -1, 0, 2, -1], ![2, -1, -2, 0, 1], ![-2, 2, 2, -2, 0]]⟩

def canonicalOutput26376 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node647⟩

theorem canonicalSound26376 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26376.moment H = canonicalOutput26376.moment H :=
  canonical_of_padded canonicalInput26376 canonicalOutput26376 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation184, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26377 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![-1, -1, 2], ![0, -1, 1], ![0, -1, 1], ![-2, 2, 0], ![3, 2, -5]]⟩

def canonicalOutput26377 : ExponentCode := normalNode52

theorem canonicalSound26377 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26377.moment H = canonicalOutput26377.moment H :=
  canonical_of_padded canonicalInput26377 canonicalOutput26377 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation316, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26378 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![-1, -1, 2], ![0, -1, 1], ![0, -1, 1], ![-2, 3, -1], ![3, 1, -4]]⟩

def canonicalOutput26378 : ExponentCode := normalNode124

theorem canonicalSound26378 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26378.moment H = canonicalOutput26378.moment H :=
  canonical_of_padded canonicalInput26378 canonicalOutput26378 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation316, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26379 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![-1, -1, 2], ![0, -1, 1], ![0, -1, 1], ![3, 0, -3], ![-2, 4, -2]]⟩

def canonicalOutput26379 : ExponentCode := normalNode167

theorem canonicalSound26379 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26379.moment H = canonicalOutput26379.moment H :=
  canonical_of_padded canonicalInput26379 canonicalOutput26379 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation266, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26380 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![-1, -1, 2], ![0, -1, 1], ![0, 1, -1], ![-3, 3, 0], ![4, -1, -3]]⟩

def canonicalOutput26380 : ExponentCode := normalNode1

theorem canonicalSound26380 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26380.moment H = canonicalOutput26380.moment H :=
  canonical_of_padded canonicalInput26380 canonicalOutput26380 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation375, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26381 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![-1, -1, 2], ![0, -1, 1], ![1, -1, 0], ![-3, 3, 0], ![3, 1, -4]]⟩

def canonicalOutput26381 : ExponentCode := normalNode2

theorem canonicalSound26381 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26381.moment H = canonicalOutput26381.moment H :=
  canonical_of_padded canonicalInput26381 canonicalOutput26381 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation390, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput26382 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![-1, -1, 2], ![0, -1, 1], ![1, -1, 0], ![-2, 1, 1], ![2, 3, -5]]⟩

def canonicalOutput26382 : ExponentCode := normalNode311

theorem canonicalSound26382 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26382.moment H = canonicalOutput26382.moment H :=
  canonical_of_padded canonicalInput26382 canonicalOutput26382 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation375, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26383 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![-1, -1, 2], ![0, 1, -1], ![0, 1, -1], ![-3, 2, 1], ![4, -2, -2]]⟩

def canonicalOutput26383 : ExponentCode := normalNode15

theorem canonicalSound26383 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26383.moment H = canonicalOutput26383.moment H :=
  canonical_of_padded canonicalInput26383 canonicalOutput26383 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation363, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26384 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![-1, -1, 2], ![0, 1, -1], ![0, 1, -1], ![-2, -1, 3], ![3, 1, -4]]⟩

def canonicalOutput26384 : ExponentCode := normalNode110

theorem canonicalSound26384 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26384.moment H = canonicalOutput26384.moment H :=
  canonical_of_padded canonicalInput26384 canonicalOutput26384 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation363, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26385 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![-1, -1, 2], ![0, 1, -1], ![1, 0, -1], ![-2, -1, 3], ![2, 2, -4]]⟩

def canonicalOutput26385 : ExponentCode := normalNode958

theorem canonicalSound26385 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26385.moment H = canonicalOutput26385.moment H :=
  canonical_of_padded canonicalInput26385 canonicalOutput26385 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation383, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26386 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![-1, -1, 2], ![0, 1, -1], ![1, 0, -1], ![-1, -2, 3], ![1, 3, -4]]⟩

def canonicalOutput26386 : ExponentCode := normalNode6260

theorem canonicalSound26386 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26386.moment H = canonicalOutput26386.moment H :=
  canonical_of_padded canonicalInput26386 canonicalOutput26386 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation383, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26387 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![-1, -1, 2], ![0, 1, -1], ![1, 0, -1], ![1, -3, 2], ![-1, 4, -3]]⟩

def canonicalOutput26387 : ExponentCode := normalNode6271

theorem canonicalSound26387 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26387.moment H = canonicalOutput26387.moment H :=
  canonical_of_padded canonicalInput26387 canonicalOutput26387 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation337, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26388 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![-1, -1, 2], ![0, 1, -1], ![1, 1, -2], ![-3, 2, 1], ![3, -2, -1]]⟩

def canonicalOutput26388 : ExponentCode := normalNode189

theorem canonicalSound26388 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26388.moment H = canonicalOutput26388.moment H :=
  canonical_of_padded canonicalInput26388 canonicalOutput26388 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation280, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26389 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![-1, -1, 2], ![0, 1, -1], ![2, -2, 0], ![-3, 2, 1], ![2, 1, -3]]⟩

def canonicalOutput26389 : ExponentCode := normalNode185

theorem canonicalSound26389 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26389.moment H = canonicalOutput26389.moment H :=
  canonical_of_padded canonicalInput26389 canonicalOutput26389 (by decide) (by decide)
    ⟨false, false, canonicalPermutation103, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput26390 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![-1, -1, 2], ![1, -1, 0], ![-2, 1, 1], ![-1, 3, -2], ![3, -1, -2]]⟩

def canonicalOutput26390 : ExponentCode := normalNode187

theorem canonicalSound26390 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26390.moment H = canonicalOutput26390.moment H :=
  canonical_of_padded canonicalInput26390 canonicalOutput26390 (by decide) (by decide)
    ⟨false, true, canonicalPermutation106, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26391 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![-1, -1, 2], ![1, -1, 0], ![1, -1, 0], ![-3, 2, 1], ![2, 2, -4]]⟩

def canonicalOutput26391 : ExponentCode := normalNode18

theorem canonicalSound26391 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26391.moment H = canonicalOutput26391.moment H :=
  canonical_of_padded canonicalInput26391 canonicalOutput26391 (by decide) (by decide)
    ⟨false, false, canonicalPermutation103, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput26392 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![-1, -1, 2], ![1, -1, 0], ![1, -1, 0], ![-2, 0, 2], ![1, 4, -5]]⟩

def canonicalOutput26392 : ExponentCode := normalNode4582

theorem canonicalSound26392 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26392.moment H = canonicalOutput26392.moment H :=
  canonical_of_padded canonicalInput26392 canonicalOutput26392 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation277, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26393 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![-1, -1, 2], ![1, -1, 0], ![1, -1, 0], ![-1, -1, 2], ![0, 5, -5]]⟩

def canonicalOutput26393 : ExponentCode := normalNode9513

theorem canonicalSound26393 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26393.moment H = canonicalOutput26393.moment H :=
  canonical_of_padded canonicalInput26393 canonicalOutput26393 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation214, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26394 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![-1, -1, 2], ![1, 0, -1], ![1, 0, -1], ![-2, -1, 3], ![1, 3, -4]]⟩

def canonicalOutput26394 : ExponentCode := normalNode112

theorem canonicalSound26394 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26394.moment H = canonicalOutput26394.moment H :=
  canonical_of_padded canonicalInput26394 canonicalOutput26394 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation363, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput26395 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![-1, 1, 0], ![0, 1, -1], ![0, 1, -1], ![-3, 1, 2], ![4, -3, -1]]⟩

def canonicalOutput26395 : ExponentCode := normalNode2992

theorem canonicalSound26395 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26395.moment H = canonicalOutput26395.moment H :=
  canonical_of_padded canonicalInput26395 canonicalOutput26395 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation258, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput26396 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![-1, 1, 0], ![1, -1, 0], ![1, -1, 0], ![-2, -1, 3], ![1, 3, -4]]⟩

def canonicalOutput26396 : ExponentCode := normalNode2992

theorem canonicalSound26396 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26396.moment H = canonicalOutput26396.moment H :=
  canonical_of_padded canonicalInput26396 canonicalOutput26396 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation277, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26397 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![-1, 1, 0], ![1, -1, 0], ![1, -1, 0], ![-1, -2, 3], ![0, 4, -4]]⟩

def canonicalOutput26397 : ExponentCode := normalNode10773

theorem canonicalSound26397 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26397.moment H = canonicalOutput26397.moment H :=
  canonical_of_padded canonicalInput26397 canonicalOutput26397 (by decide) (by decide)
    ⟨false, true, canonicalPermutation257, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26398 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![-1, 1, 0], ![1, -1, 0], ![1, 0, -1], ![0, -3, 3], ![-1, 4, -3]]⟩

def canonicalOutput26398 : ExponentCode := normalNode6263

theorem canonicalSound26398 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26398.moment H = canonicalOutput26398.moment H :=
  canonical_of_padded canonicalInput26398 canonicalOutput26398 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation336, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26399 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![-1, 1, 0], ![1, 0, -1], ![1, 0, -1], ![0, 3, -3], ![-1, -3, 4]]⟩

def canonicalOutput26399 : ExponentCode := normalNode6269

theorem canonicalSound26399 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26399.moment H = canonicalOutput26399.moment H :=
  canonical_of_padded canonicalInput26399 canonicalOutput26399 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation335, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26400 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -2, 2], ![0, -1, 1], ![-2, 1, 1], ![2, 0, -2], ![0, 3, -3]]⟩

def canonicalOutput26400 : ExponentCode := normalNode4612

theorem canonicalSound26400 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26400.moment H = canonicalOutput26400.moment H :=
  canonical_of_padded canonicalInput26400 canonicalOutput26400 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation296, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26401 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -2, 2], ![0, -1, 1], ![-2, 2, 0], ![0, 2, -2], ![2, 0, -2]]⟩

def canonicalOutput26401 : ExponentCode := normalNode4621

theorem canonicalSound26401 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26401.moment H = canonicalOutput26401.moment H :=
  canonical_of_padded canonicalInput26401 canonicalOutput26401 (by decide) (by decide)
    ⟨false, false, canonicalPermutation121, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26402 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -2, 2], ![0, -1, 1], ![-1, 2, -1], ![-1, 2, -1], ![2, 0, -2]]⟩

def canonicalOutput26402 : ExponentCode := normalNode4632

theorem canonicalSound26402 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26402.moment H = canonicalOutput26402.moment H :=
  canonical_of_padded canonicalInput26402 canonicalOutput26402 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation314, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26403 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -2, 2], ![0, -1, 1], ![0, -1, 1], ![-2, 2, 0], ![2, 3, -5]]⟩

def canonicalOutput26403 : ExponentCode := normalNode339

theorem canonicalSound26403 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26403.moment H = canonicalOutput26403.moment H :=
  canonical_of_padded canonicalInput26403 canonicalOutput26403 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation316, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26404 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -2, 2], ![0, -1, 1], ![0, -1, 1], ![-2, 3, -1], ![2, 2, -4]]⟩

def canonicalOutput26404 : ExponentCode := normalNode1005

theorem canonicalSound26404 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26404.moment H = canonicalOutput26404.moment H :=
  canonical_of_padded canonicalInput26404 canonicalOutput26404 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation316, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26405 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -2, 2], ![0, -1, 1], ![1, -1, 0], ![-2, 1, 1], ![1, 4, -5]]⟩

def canonicalOutput26405 : ExponentCode := normalNode5596

theorem canonicalSound26405 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26405.moment H = canonicalOutput26405.moment H :=
  canonical_of_padded canonicalInput26405 canonicalOutput26405 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation277, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26406 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -2, 2], ![0, -1, 1], ![1, 0, -1], ![2, 0, -2], ![-3, 4, -1]]⟩

def canonicalOutput26406 : ExponentCode := normalNode125

theorem canonicalSound26406 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26406.moment H = canonicalOutput26406.moment H :=
  canonical_of_padded canonicalInput26406 canonicalOutput26406 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation314, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26407 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -2, 2], ![0, 1, -1], ![0, 1, -1], ![-3, 2, 1], ![3, -1, -2]]⟩

def canonicalOutput26407 : ExponentCode := normalNode204

theorem canonicalSound26407 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26407.moment H = canonicalOutput26407.moment H :=
  canonical_of_padded canonicalInput26407 canonicalOutput26407 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation286, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26408 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -2, 2], ![0, 1, -1], ![0, 1, -1], ![-2, -1, 3], ![2, 2, -4]]⟩

def canonicalOutput26408 : ExponentCode := normalNode994

theorem canonicalSound26408 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26408.moment H = canonicalOutput26408.moment H :=
  canonical_of_padded canonicalInput26408 canonicalOutput26408 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation363, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26409 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -2, 2], ![0, 1, -1], ![1, 0, -1], ![-2, -1, 3], ![1, 3, -4]]⟩

def canonicalOutput26409 : ExponentCode := normalNode3017

theorem canonicalSound26409 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26409.moment H = canonicalOutput26409.moment H :=
  canonical_of_padded canonicalInput26409 canonicalOutput26409 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation277, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26410 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -2, 2], ![1, -1, 0], ![-2, 0, 2], ![0, 2, -2], ![1, 2, -3]]⟩

def canonicalOutput26410 : ExponentCode := normalNode4618

theorem canonicalSound26410 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26410.moment H = canonicalOutput26410.moment H :=
  canonical_of_padded canonicalInput26410 canonicalOutput26410 (by decide) (by decide)
    ⟨false, false, canonicalPermutation298, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26411 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -2, 2], ![1, -1, 0], ![-2, 0, 2], ![1, 1, -2], ![0, 3, -3]]⟩

def canonicalOutput26411 : ExponentCode := normalNode4619

theorem canonicalSound26411 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26411.moment H = canonicalOutput26411.moment H :=
  canonical_of_padded canonicalInput26411 canonicalOutput26411 (by decide) (by decide)
    ⟨false, false, canonicalPermutation323, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26412 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -2, 2], ![1, -1, 0], ![-2, 1, 1], ![-1, 2, -1], ![2, 1, -3]]⟩

def canonicalOutput26412 : ExponentCode := normalNode2994

theorem canonicalSound26412 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26412.moment H = canonicalOutput26412.moment H :=
  canonical_of_padded canonicalInput26412 canonicalOutput26412 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation356, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26413 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -2, 2], ![1, -1, 0], ![-2, 1, 1], ![0, 2, -2], ![1, 1, -2]]⟩

def canonicalOutput26413 : ExponentCode := normalNode5598

theorem canonicalSound26413 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26413.moment H = canonicalOutput26413.moment H :=
  canonical_of_padded canonicalInput26413 canonicalOutput26413 (by decide) (by decide)
    ⟨false, false, canonicalPermutation298, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26414 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -2, 2], ![1, -1, 0], ![-2, 1, 1], ![2, 0, -2], ![-1, 3, -2]]⟩

def canonicalOutput26414 : ExponentCode := normalNode4596

theorem canonicalSound26414 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26414.moment H = canonicalOutput26414.moment H :=
  canonical_of_padded canonicalInput26414 canonicalOutput26414 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation284, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26415 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -2, 2], ![1, -1, 0], ![1, -1, 0], ![-2, 0, 2], ![0, 5, -5]]⟩

def canonicalOutput26415 : ExponentCode := normalNode4620

theorem canonicalSound26415 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26415.moment H = canonicalOutput26415.moment H :=
  canonical_of_padded canonicalInput26415 canonicalOutput26415 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation279, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26416 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -2, 2], ![1, -1, 0], ![1, 0, -1], ![-3, 1, 2], ![1, 3, -4]]⟩

def canonicalOutput26416 : ExponentCode := normalNode195

theorem canonicalSound26416 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26416.moment H = canonicalOutput26416.moment H :=
  canonical_of_padded canonicalInput26416 canonicalOutput26416 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation277, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26417 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -2, 2], ![1, -1, 0], ![1, 0, -1], ![-3, 2, 1], ![1, 2, -3]]⟩

def canonicalOutput26417 : ExponentCode := normalNode226

theorem canonicalSound26417 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26417.moment H = canonicalOutput26417.moment H :=
  canonical_of_padded canonicalInput26417 canonicalOutput26417 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation263, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26418 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -2, 2], ![1, -1, 0], ![1, 1, -2], ![-3, 1, 2], ![1, 2, -3]]⟩

def canonicalOutput26418 : ExponentCode := normalNode196

theorem canonicalSound26418 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26418.moment H = canonicalOutput26418.moment H :=
  canonical_of_padded canonicalInput26418 canonicalOutput26418 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation277, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26419 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -2, 2], ![1, -1, 0], ![1, 1, -2], ![1, 1, -2], ![-3, 2, 1]]⟩

def canonicalOutput26419 : ExponentCode := normalNode228

theorem canonicalSound26419 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26419.moment H = canonicalOutput26419.moment H :=
  canonical_of_padded canonicalInput26419 canonicalOutput26419 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation311, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26420 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -2, 2], ![1, 0, -1], ![1, 0, -1], ![-2, -1, 3], ![0, 4, -4]]⟩

def canonicalOutput26420 : ExponentCode := normalNode3018

theorem canonicalSound26420 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26420.moment H = canonicalOutput26420.moment H :=
  canonical_of_padded canonicalInput26420 canonicalOutput26420 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation279, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26421 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -1, 1], ![-1, -1, 2], ![0, -1, 1], ![-2, 2, 0], ![3, 2, -5]]⟩

def canonicalOutput26421 : ExponentCode := normalNode52

theorem canonicalSound26421 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26421.moment H = canonicalOutput26421.moment H :=
  canonical_of_padded canonicalInput26421 canonicalOutput26421 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation310, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26422 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -1, 1], ![-1, -1, 2], ![0, -1, 1], ![-2, 3, -1], ![3, 1, -4]]⟩

def canonicalOutput26422 : ExponentCode := normalNode124

theorem canonicalSound26422 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26422.moment H = canonicalOutput26422.moment H :=
  canonical_of_padded canonicalInput26422 canonicalOutput26422 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation310, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26423 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -1, 1], ![-1, -1, 2], ![0, -1, 1], ![3, 0, -3], ![-2, 4, -2]]⟩

def canonicalOutput26423 : ExponentCode := normalNode167

theorem canonicalSound26423 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26423.moment H = canonicalOutput26423.moment H :=
  canonical_of_padded canonicalInput26423 canonicalOutput26423 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation260, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26424 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -1, 1], ![-1, -1, 2], ![0, 1, -1], ![-3, 3, 0], ![4, -1, -3]]⟩

def canonicalOutput26424 : ExponentCode := normalNode1

theorem canonicalSound26424 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26424.moment H = canonicalOutput26424.moment H :=
  canonical_of_padded canonicalInput26424 canonicalOutput26424 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26425 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -1, 1], ![-1, -1, 2], ![1, -1, 0], ![-3, 3, 0], ![3, 1, -4]]⟩

def canonicalOutput26425 : ExponentCode := normalNode2

theorem canonicalSound26425 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26425.moment H = canonicalOutput26425.moment H :=
  canonical_of_padded canonicalInput26425 canonicalOutput26425 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation389, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput26426 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -1, 1], ![-1, -1, 2], ![1, -1, 0], ![-2, 1, 1], ![2, 3, -5]]⟩

def canonicalOutput26426 : ExponentCode := normalNode311

theorem canonicalSound26426 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26426.moment H = canonicalOutput26426.moment H :=
  canonical_of_padded canonicalInput26426 canonicalOutput26426 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26427 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -1, 1], ![-1, 1, 0], ![0, 1, -1], ![-3, 2, 1], ![4, -2, -2]]⟩

def canonicalOutput26427 : ExponentCode := normalNode968

theorem canonicalSound26427 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26427.moment H = canonicalOutput26427.moment H :=
  canonical_of_padded canonicalInput26427 canonicalOutput26427 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation383, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput26428 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -1, 1], ![-1, 1, 0], ![0, 1, -1], ![-2, -1, 3], ![3, 1, -4]]⟩

def canonicalOutput26428 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node1383⟩

theorem canonicalSound26428 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26428.moment H = canonicalOutput26428.moment H :=
  canonical_of_padded canonicalInput26428 canonicalOutput26428 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26429 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -1, 1], ![-1, 1, 0], ![1, 0, -1], ![-2, -1, 3], ![2, 2, -4]]⟩

def canonicalOutput26429 : ExponentCode := normalNode959

theorem canonicalSound26429 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26429.moment H = canonicalOutput26429.moment H :=
  canonical_of_padded canonicalInput26429 canonicalOutput26429 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26430 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -1, 1], ![-1, 1, 0], ![1, 0, -1], ![-1, -2, 3], ![1, 3, -4]]⟩

def canonicalOutput26430 : ExponentCode := normalNode6262

theorem canonicalSound26430 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26430.moment H = canonicalOutput26430.moment H :=
  canonical_of_padded canonicalInput26430 canonicalOutput26430 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26431 : ExponentCode := ⟨6, 3, ![![0, -1, 1], ![0, -1, 1], ![-1, 1, 0], ![1, 0, -1], ![1, -3, 2], ![-1, 4, -3]]⟩

def canonicalOutput26431 : ExponentCode := normalNode6262

theorem canonicalSound26431 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26431.moment H = canonicalOutput26431.moment H :=
  canonical_of_padded canonicalInput26431 canonicalOutput26431 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation355, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

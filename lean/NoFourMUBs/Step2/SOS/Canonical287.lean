import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes06
import NoFourMUBs.Step2.SOS.MomentCodes07
import NoFourMUBs.Step2.SOS.MomentCodes10
import NoFourMUBs.Step2.SOS.MomentCodes13
import NoFourMUBs.Step2.SOS.MomentCodes15
import NoFourMUBs.Step2.SOS.MomentCodes18
import NoFourMUBs.Step2.SOS.MomentCodes20
import NoFourMUBs.Step2.SOS.MomentCodes21
import NoFourMUBs.Step2.SOS.NormalizationNodes006
import NoFourMUBs.Step2.SOS.NormalizationNodes007
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes26
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes28
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes31
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes32
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes39
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes40
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes42
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes44
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput18368 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![-1, 0, -1, 1, 1], ![0, 2, -1, 0, -1], ![2, -1, 1, -2, 0]]⟩

def canonicalOutput18368 : ExponentCode := normalNode4307

theorem canonicalSound18368 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18368.moment H = canonicalOutput18368.moment H :=
  canonical_of_padded canonicalInput18368 canonicalOutput18368 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation173, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput18369 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![-1, 0, 1, 1, -1], ![0, 2, -2, 0, 0], ![2, -1, 0, -2, 1]]⟩

def canonicalOutput18369 : ExponentCode := normalNode4299

theorem canonicalSound18369 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18369.moment H = canonicalOutput18369.moment H :=
  canonical_of_padded canonicalInput18369 canonicalOutput18369 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation174, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput18370 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![-1, 1, -2, 0, 2], ![0, 1, 0, 1, -2], ![2, -1, 1, -2, 0]]⟩

def canonicalOutput18370 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code886

theorem canonicalSound18370 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18370.moment H = canonicalOutput18370.moment H :=
  canonical_of_padded canonicalInput18370 canonicalOutput18370 (by decide) (by decide)
    ⟨true, false, canonicalPermutation65, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput18371 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![-1, 1, -2, 1, 1], ![0, 1, 1, -3, 1], ![2, -1, 0, 1, -2]]⟩

def canonicalOutput18371 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1345

theorem canonicalSound18371 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18371.moment H = canonicalOutput18371.moment H :=
  canonical_of_padded canonicalInput18371 canonicalOutput18371 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput18372 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![-1, 1, -2, 1, 1], ![0, 1, 1, 0, -2], ![2, -1, 0, -2, 1]]⟩

def canonicalOutput18372 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code973

theorem canonicalSound18372 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18372.moment H = canonicalOutput18372.moment H :=
  canonical_of_padded canonicalInput18372 canonicalOutput18372 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation198, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput18373 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![-1, 1, -2, 1, 1], ![1, -2, 1, -1, 1], ![1, 2, 0, -1, -2]]⟩

def canonicalOutput18373 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1308

theorem canonicalSound18373 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18373.moment H = canonicalOutput18373.moment H :=
  canonical_of_padded canonicalInput18373 canonicalOutput18373 (by decide) (by decide)
    ⟨true, false, canonicalPermutation39, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput18374 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![-1, 1, -2, 1, 1], ![1, 1, 0, 0, -2], ![1, -1, 1, -2, 1]]⟩

def canonicalOutput18374 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1009

theorem canonicalSound18374 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18374.moment H = canonicalOutput18374.moment H :=
  canonical_of_padded canonicalInput18374 canonicalOutput18374 (by decide) (by decide)
    ⟨true, false, canonicalPermutation30, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput18375 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![-1, 1, -1, -1, 2], ![0, 1, -1, 1, -1], ![2, -1, 1, -1, -1]]⟩

def canonicalOutput18375 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1384

theorem canonicalSound18375 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18375.moment H = canonicalOutput18375.moment H :=
  canonical_of_padded canonicalInput18375 canonicalOutput18375 (by decide) (by decide)
    ⟨true, true, canonicalPermutation23, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput18376 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![-1, 1, -1, 1, 0], ![1, -1, 1, 0, -1], ![1, 1, -1, -2, 1]]⟩

def canonicalOutput18376 : ExponentCode := normalNode8863

theorem canonicalSound18376 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18376.moment H = canonicalOutput18376.moment H :=
  canonical_of_padded canonicalInput18376 canonicalOutput18376 (by decide) (by decide)
    ⟨true, true, canonicalPermutation23, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18377 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![-1, 1, 0, 1, -1], ![1, -2, 1, -1, 1], ![1, 2, -2, -1, 0]]⟩

def canonicalOutput18377 : ExponentCode := normalNode9278

theorem canonicalSound18377 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18377.moment H = canonicalOutput18377.moment H :=
  canonical_of_padded canonicalInput18377 canonicalOutput18377 (by decide) (by decide)
    ⟨true, true, canonicalPermutation23, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18378 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![-1, 1, 0, 1, -1], ![1, -1, 1, -1, 0], ![1, 1, -2, -1, 1]]⟩

def canonicalOutput18378 : ExponentCode := normalNode8863

theorem canonicalSound18378 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18378.moment H = canonicalOutput18378.moment H :=
  canonical_of_padded canonicalInput18378 canonicalOutput18378 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation180, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput18379 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![-1, 1, 0, 1, -1], ![1, 1, -2, 0, 0], ![1, -1, 1, -2, 1]]⟩

def canonicalOutput18379 : ExponentCode := normalNode4396

theorem canonicalSound18379 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18379.moment H = canonicalOutput18379.moment H :=
  canonical_of_padded canonicalInput18379 canonicalOutput18379 (by decide) (by decide)
    ⟨true, false, canonicalPermutation26, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput18380 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![-1, 2, -3, 0, 2], ![1, -1, 1, -2, 1], ![1, 0, 1, 1, -3]]⟩

def canonicalOutput18380 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1337

theorem canonicalSound18380 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18380.moment H = canonicalOutput18380.moment H :=
  canonical_of_padded canonicalInput18380 canonicalOutput18380 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation180, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput18381 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![-1, 2, -3, 1, 1], ![1, -1, 1, 1, -2], ![1, 0, 1, -3, 1]]⟩

def canonicalOutput18381 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1338

theorem canonicalSound18381 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18381.moment H = canonicalOutput18381.moment H :=
  canonical_of_padded canonicalInput18381 canonicalOutput18381 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation180, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput18382 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![-1, 2, -2, 0, 1], ![1, 0, 0, 1, -2], ![1, -1, 1, -2, 1]]⟩

def canonicalOutput18382 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code973

theorem canonicalSound18382 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18382.moment H = canonicalOutput18382.moment H :=
  canonical_of_padded canonicalInput18382 canonicalOutput18382 (by decide) (by decide)
    ⟨true, false, canonicalPermutation81, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput18383 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![-1, 2, 0, 0, -1], ![0, -1, -2, 1, 2], ![2, 0, 1, -2, -1]]⟩

def canonicalOutput18383 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1158

theorem canonicalSound18383 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18383.moment H = canonicalOutput18383.moment H :=
  canonical_of_padded canonicalInput18383 canonicalOutput18383 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation172, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput18384 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![-1, 2, 0, 0, -1], ![1, -1, -2, 1, 1], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput18384 : ExponentCode := normalNode4311

theorem canonicalSound18384 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18384.moment H = canonicalOutput18384.moment H :=
  canonical_of_padded canonicalInput18384 canonicalOutput18384 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation171, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput18385 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![-1, 2, 0, 0, -1], ![1, 0, -2, 1, 0], ![1, -1, 1, -2, 1]]⟩

def canonicalOutput18385 : ExponentCode := normalNode4311

theorem canonicalSound18385 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18385.moment H = canonicalOutput18385.moment H :=
  canonical_of_padded canonicalInput18385 canonicalOutput18385 (by decide) (by decide)
    ⟨true, true, canonicalPermutation64, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput18386 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![-1, 2, 0, 1, -2], ![1, -1, -2, 1, 1], ![1, 0, 1, -3, 1]]⟩

def canonicalOutput18386 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1345

theorem canonicalSound18386 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18386.moment H = canonicalOutput18386.moment H :=
  canonical_of_padded canonicalInput18386 canonicalOutput18386 (by decide) (by decide)
    ⟨true, true, canonicalPermutation23, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18387 : ExponentCode := ⟨3, 5, ![![-1, -1, 1, 1, 0], ![-1, 3, -2, -2, 2], ![2, -2, 1, 1, -2]]⟩

def canonicalOutput18387 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1320

theorem canonicalSound18387 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18387.moment H = canonicalOutput18387.moment H :=
  canonical_of_padded canonicalInput18387 canonicalOutput18387 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation168, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput18388 : ExponentCode := ⟨3, 5, ![![-1, -1, 1, 1, 0], ![-1, 3, -2, 1, -1], ![2, -2, 1, -2, 1]]⟩

def canonicalOutput18388 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node871⟩

theorem canonicalSound18388 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18388.moment H = canonicalOutput18388.moment H :=
  canonical_of_padded canonicalInput18388 canonicalOutput18388 (by decide) (by decide)
    ⟨true, false, canonicalPermutation39, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput18389 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![0, -2, 0, 1, 1], ![0, 2, 1, -1, -2], ![1, 1, -2, -1, 1]]⟩

def canonicalOutput18389 : ExponentCode := normalNode2497

theorem canonicalSound18389 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18389.moment H = canonicalOutput18389.moment H :=
  canonical_of_padded canonicalInput18389 canonicalOutput18389 (by decide) (by decide)
    ⟨true, false, canonicalPermutation41, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput18390 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![0, -2, 1, 1, 0], ![1, 0, 0, 0, -1], ![0, 3, -2, -2, 1]]⟩

def canonicalOutput18390 : ExponentCode := normalNode10514

theorem canonicalSound18390 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18390.moment H = canonicalOutput18390.moment H :=
  canonical_of_padded canonicalInput18390 canonicalOutput18390 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation199, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput18391 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![0, -2, 1, 1, 0], ![2, 0, 0, 0, -2], ![-1, 3, -2, -2, 2]]⟩

def canonicalOutput18391 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code415

theorem canonicalSound18391 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18391.moment H = canonicalOutput18391.moment H :=
  canonical_of_padded canonicalInput18391 canonicalOutput18391 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation168, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput18392 : ExponentCode := ⟨3, 5, ![![-1, -1, 1, 1, 0], ![0, -1, -2, 1, 2], ![1, 2, 1, -2, -2]]⟩

def canonicalOutput18392 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node1136⟩

theorem canonicalSound18392 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18392.moment H = canonicalOutput18392.moment H :=
  canonical_of_padded canonicalInput18392 canonicalOutput18392 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation168, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18393 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![0, -1, -1, 0, 2], ![0, 2, 1, -2, -1], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput18393 : ExponentCode := normalNode4293

theorem canonicalSound18393 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18393.moment H = canonicalOutput18393.moment H :=
  canonical_of_padded canonicalInput18393 canonicalOutput18393 (by decide) (by decide)
    ⟨true, true, canonicalPermutation51, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput18394 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![0, -1, -1, 1, 1], ![-1, 1, 1, -2, 1], ![2, 1, -1, 0, -2]]⟩

def canonicalOutput18394 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1367

theorem canonicalSound18394 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18394.moment H = canonicalOutput18394.moment H :=
  canonical_of_padded canonicalInput18394 canonicalOutput18394 (by decide) (by decide)
    ⟨true, true, canonicalPermutation58, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput18395 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![0, -1, -1, 1, 1], ![-1, 1, 1, -1, 0], ![2, 1, -1, -1, -1]]⟩

def canonicalOutput18395 : ExponentCode := normalNode8863

theorem canonicalSound18395 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18395.moment H = canonicalOutput18395.moment H :=
  canonical_of_padded canonicalInput18395 canonicalOutput18395 (by decide) (by decide)
    ⟨true, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput18396 : ExponentCode := ⟨5, 5, ![![-1, -1, 1, 1, 0], ![0, -1, -1, 1, 1], ![0, 0, -1, 0, 1], ![0, 2, 1, 0, -3], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput18396 : ExponentCode := normalNode7493

theorem canonicalSound18396 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18396.moment H = canonicalOutput18396.moment H :=
  canonical_of_padded canonicalInput18396 canonicalOutput18396 (by decide) (by decide)
    ⟨true, true, canonicalPermutation31, canonicalPermutation77⟩ (by decide +kernel) hH

def canonicalInput18397 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![0, -1, -1, 1, 1], ![0, 0, 1, -1, 0], ![1, 2, -1, -1, -1]]⟩

def canonicalOutput18397 : ExponentCode := normalNode9467

theorem canonicalSound18397 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18397.moment H = canonicalOutput18397.moment H :=
  canonical_of_padded canonicalInput18397 canonicalOutput18397 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation181, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput18398 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![0, -1, -1, 1, 1], ![0, 0, 1, 0, -1], ![1, 2, -1, -2, 0]]⟩

def canonicalOutput18398 : ExponentCode := normalNode9397

theorem canonicalSound18398 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18398.moment H = canonicalOutput18398.moment H :=
  canonical_of_padded canonicalInput18398 canonicalOutput18398 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation178, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput18399 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![0, -1, -1, 1, 1], ![0, 1, 1, -2, 0], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput18399 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2071⟩

theorem canonicalSound18399 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18399.moment H = canonicalOutput18399.moment H :=
  canonical_of_padded canonicalInput18399 canonicalOutput18399 (by decide) (by decide)
    ⟨true, false, canonicalPermutation58, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput18400 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![0, -1, -1, 1, 1], ![0, 1, 1, -1, -1], ![1, 1, -1, -1, 0]]⟩

def canonicalOutput18400 : ExponentCode := normalNode9290

theorem canonicalSound18400 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18400.moment H = canonicalOutput18400.moment H :=
  canonical_of_padded canonicalInput18400 canonicalOutput18400 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation168, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18401 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![0, -1, -1, 1, 1], ![0, 2, -1, 1, -2], ![1, 0, 1, -3, 1]]⟩

def canonicalOutput18401 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2514⟩

theorem canonicalSound18401 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18401.moment H = canonicalOutput18401.moment H :=
  canonical_of_padded canonicalInput18401 canonicalOutput18401 (by decide) (by decide)
    ⟨true, true, canonicalPermutation58, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput18402 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![0, -1, -1, 1, 1], ![1, 0, 1, -1, -1], ![0, 2, -1, -1, 0]]⟩

def canonicalOutput18402 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2071⟩

theorem canonicalSound18402 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18402.moment H = canonicalOutput18402.moment H :=
  canonical_of_padded canonicalInput18402 canonicalOutput18402 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation168, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput18403 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![0, -1, -1, 1, 1], ![1, 0, 1, 0, -2], ![0, 2, -1, -2, 1]]⟩

def canonicalOutput18403 : ExponentCode := normalNode4307

theorem canonicalSound18403 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18403.moment H = canonicalOutput18403.moment H :=
  canonical_of_padded canonicalInput18403 canonicalOutput18403 (by decide) (by decide)
    ⟨true, false, canonicalPermutation71, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput18404 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![0, -1, -1, 1, 1], ![1, 0, 1, 1, -3], ![0, 2, -1, -3, 2]]⟩

def canonicalOutput18404 : ExponentCode := normalNode7755

theorem canonicalSound18404 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18404.moment H = canonicalOutput18404.moment H :=
  canonical_of_padded canonicalInput18404 canonicalOutput18404 (by decide) (by decide)
    ⟨true, true, canonicalPermutation58, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput18405 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![0, -1, -1, 2, 0], ![-1, 0, 1, -2, 2], ![2, 2, -1, -1, -2]]⟩

def canonicalOutput18405 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code672

theorem canonicalSound18405 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18405.moment H = canonicalOutput18405.moment H :=
  canonical_of_padded canonicalInput18405 canonicalOutput18405 (by decide) (by decide)
    ⟨true, true, canonicalPermutation58, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput18406 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![0, -1, -1, 2, 0], ![-1, 1, 1, -3, 2], ![2, 1, -1, 0, -2]]⟩

def canonicalOutput18406 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code457

theorem canonicalSound18406 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18406.moment H = canonicalOutput18406.moment H :=
  canonical_of_padded canonicalInput18406 canonicalOutput18406 (by decide) (by decide)
    ⟨true, true, canonicalPermutation58, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput18407 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![0, -1, -1, 2, 0], ![0, 0, 1, -2, 1], ![1, 2, -1, -1, -1]]⟩

def canonicalOutput18407 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1847⟩

theorem canonicalSound18407 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18407.moment H = canonicalOutput18407.moment H :=
  canonical_of_padded canonicalInput18407 canonicalOutput18407 (by decide) (by decide)
    ⟨true, true, canonicalPermutation58, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput18408 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![0, -1, -1, 2, 0], ![0, 1, 1, -3, 1], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput18408 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1683⟩

theorem canonicalSound18408 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18408.moment H = canonicalOutput18408.moment H :=
  canonical_of_padded canonicalInput18408 canonicalOutput18408 (by decide) (by decide)
    ⟨true, true, canonicalPermutation58, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput18409 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![0, -1, 0, 1, 0], ![0, 2, -2, 1, -1], ![1, 0, 1, -3, 1]]⟩

def canonicalOutput18409 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2537⟩

theorem canonicalSound18409 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18409.moment H = canonicalOutput18409.moment H :=
  canonical_of_padded canonicalInput18409 canonicalOutput18409 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput18410 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![0, -1, 1, -1, 1], ![0, 1, -1, 1, -1], ![1, 1, -1, -1, 0]]⟩

def canonicalOutput18410 : ExponentCode := normalNode9290

theorem canonicalSound18410 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18410.moment H = canonicalOutput18410.moment H :=
  canonical_of_padded canonicalInput18410 canonicalOutput18410 (by decide) (by decide)
    ⟨true, false, canonicalPermutation39, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18411 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![0, -1, 1, -1, 1], ![0, 2, -1, -1, 0], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput18411 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2071⟩

theorem canonicalSound18411 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18411.moment H = canonicalOutput18411.moment H :=
  canonical_of_padded canonicalInput18411 canonicalOutput18411 (by decide) (by decide)
    ⟨true, true, canonicalPermutation39, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput18412 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![0, -1, 1, 1, -1], ![-2, 2, -2, 0, 2], ![3, 0, 0, -2, -1]]⟩

def canonicalOutput18412 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1361

theorem canonicalSound18412 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18412.moment H = canonicalOutput18412.moment H :=
  canonical_of_padded canonicalInput18412 canonicalOutput18412 (by decide) (by decide)
    ⟨true, true, canonicalPermutation36, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput18413 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![0, -1, 1, 1, -1], ![-2, 3, -1, 0, 0], ![3, -1, -1, -2, 1]]⟩

def canonicalOutput18413 : ExponentCode := normalNode8788

theorem canonicalSound18413 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18413.moment H = canonicalOutput18413.moment H :=
  canonical_of_padded canonicalInput18413 canonicalOutput18413 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18414 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![0, -1, 1, 1, -1], ![-1, 1, -2, 0, 2], ![2, 1, 0, -2, -1]]⟩

def canonicalOutput18414 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1362

theorem canonicalSound18414 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18414.moment H = canonicalOutput18414.moment H :=
  canonical_of_padded canonicalInput18414 canonicalOutput18414 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18415 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![0, -1, 1, 1, -1], ![-1, 2, -2, 0, 1], ![2, 0, 0, -2, 0]]⟩

def canonicalOutput18415 : ExponentCode := normalNode4299

theorem canonicalSound18415 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18415.moment H = canonicalOutput18415.moment H :=
  canonical_of_padded canonicalInput18415 canonicalOutput18415 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation160, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput18416 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![0, -1, 1, 1, -1], ![-1, 3, -1, 0, -1], ![2, -1, -1, -2, 2]]⟩

def canonicalOutput18416 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1359

theorem canonicalSound18416 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18416.moment H = canonicalOutput18416.moment H :=
  canonical_of_padded canonicalInput18416 canonicalOutput18416 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18417 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![0, -1, 1, 1, -1], ![0, 0, -2, 0, 2], ![1, 2, 0, -2, -1]]⟩

def canonicalOutput18417 : ExponentCode := normalNode4299

theorem canonicalSound18417 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18417.moment H = canonicalOutput18417.moment H :=
  canonical_of_padded canonicalInput18417 canonicalOutput18417 (by decide) (by decide)
    ⟨true, true, canonicalPermutation59, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput18418 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![0, -1, 1, 1, -1], ![0, 1, -2, 0, 1], ![1, 1, 0, -2, 0]]⟩

def canonicalOutput18418 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2057⟩

theorem canonicalSound18418 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18418.moment H = canonicalOutput18418.moment H :=
  canonical_of_padded canonicalInput18418 canonicalOutput18418 (by decide) (by decide)
    ⟨true, false, canonicalPermutation36, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput18419 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![0, -1, 1, 1, -1], ![0, 1, -1, 0, 0], ![1, 1, -1, -2, 1]]⟩

def canonicalOutput18419 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2856⟩

theorem canonicalSound18419 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18419.moment H = canonicalOutput18419.moment H :=
  canonical_of_padded canonicalInput18419 canonicalOutput18419 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation174, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput18420 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![0, -1, 1, 1, -1], ![1, 0, -2, 0, 1], ![0, 2, 0, -2, 0]]⟩

def canonicalOutput18420 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2055⟩

theorem canonicalSound18420 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18420.moment H = canonicalOutput18420.moment H :=
  canonical_of_padded canonicalInput18420 canonicalOutput18420 (by decide) (by decide)
    ⟨true, false, canonicalPermutation61, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput18421 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![0, -1, 1, 1, -1], ![1, 0, -1, 0, 0], ![0, 2, -1, -2, 1]]⟩

def canonicalOutput18421 : ExponentCode := normalNode10835

theorem canonicalSound18421 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18421.moment H = canonicalOutput18421.moment H :=
  canonical_of_padded canonicalInput18421 canonicalOutput18421 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput18422 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![0, -1, 1, 1, -1], ![1, 1, -1, 0, -1], ![0, 1, -1, -2, 2]]⟩

def canonicalOutput18422 : ExponentCode := normalNode8786

theorem canonicalSound18422 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18422.moment H = canonicalOutput18422.moment H :=
  canonical_of_padded canonicalInput18422 canonicalOutput18422 (by decide) (by decide)
    ⟨true, true, canonicalPermutation61, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput18423 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![0, -1, 1, 1, -1], ![2, -1, -1, 0, 0], ![-1, 3, -1, -2, 1]]⟩

def canonicalOutput18423 : ExponentCode := normalNode4303

theorem canonicalSound18423 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18423.moment H = canonicalOutput18423.moment H :=
  canonical_of_padded canonicalInput18423 canonicalOutput18423 (by decide) (by decide)
    ⟨true, true, canonicalPermutation7, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput18424 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![0, -1, 1, 1, -1], ![2, 0, -1, 0, -1], ![-1, 2, -1, -2, 2]]⟩

def canonicalOutput18424 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code972

theorem canonicalSound18424 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18424.moment H = canonicalOutput18424.moment H :=
  canonical_of_padded canonicalInput18424 canonicalOutput18424 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput18425 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![0, -1, 1, 1, -1], ![3, -1, -1, 0, -1], ![-2, 3, -1, -2, 2]]⟩

def canonicalOutput18425 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1342

theorem canonicalSound18425 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18425.moment H = canonicalOutput18425.moment H :=
  canonical_of_padded canonicalInput18425 canonicalOutput18425 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation175, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput18426 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![0, 0, -2, -1, 3], ![0, 1, 0, 1, -2], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput18426 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1719⟩

theorem canonicalSound18426 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18426.moment H = canonicalOutput18426.moment H :=
  canonical_of_padded canonicalInput18426 canonicalOutput18426 (by decide) (by decide)
    ⟨true, false, canonicalPermutation14, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput18427 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![0, 0, -2, 0, 2], ![0, 0, 1, -2, 1], ![1, 1, 0, 1, -3]]⟩

def canonicalOutput18427 : ExponentCode := normalNode2004

theorem canonicalSound18427 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18427.moment H = canonicalOutput18427.moment H :=
  canonical_of_padded canonicalInput18427 canonicalOutput18427 (by decide) (by decide)
    ⟨true, true, canonicalPermutation31, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput18428 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![0, 0, -2, 0, 2], ![0, 0, 1, 1, -2], ![1, 1, 0, -2, 0]]⟩

def canonicalOutput18428 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2013⟩

theorem canonicalSound18428 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18428.moment H = canonicalOutput18428.moment H :=
  canonical_of_padded canonicalInput18428 canonicalOutput18428 (by decide) (by decide)
    ⟨true, true, canonicalPermutation31, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput18429 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![0, 0, -2, 0, 2], ![0, 1, 0, -2, 1], ![1, 0, 1, 1, -3]]⟩

def canonicalOutput18429 : ExponentCode := normalNode1778

theorem canonicalSound18429 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18429.moment H = canonicalOutput18429.moment H :=
  canonical_of_padded canonicalInput18429 canonicalOutput18429 (by decide) (by decide)
    ⟨true, true, canonicalPermutation68, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput18430 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![0, 0, -2, 0, 2], ![0, 1, 0, -1, 0], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput18430 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2743⟩

theorem canonicalSound18430 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18430.moment H = canonicalOutput18430.moment H :=
  canonical_of_padded canonicalInput18430 canonicalOutput18430 (by decide) (by decide)
    ⟨true, false, canonicalPermutation61, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput18431 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 1, 0], ![0, 0, -2, 0, 2], ![0, 1, 0, 0, -1], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput18431 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2586⟩

theorem canonicalSound18431 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18431.moment H = canonicalOutput18431.moment H :=
  canonical_of_padded canonicalInput18431 canonicalOutput18431 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

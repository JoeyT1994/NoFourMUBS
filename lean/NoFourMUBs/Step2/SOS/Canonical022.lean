import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes00
import NoFourMUBs.Step2.SOS.MomentCodes01
import NoFourMUBs.Step2.SOS.MomentCodes05
import NoFourMUBs.Step2.SOS.MomentCodes10
import NoFourMUBs.Step2.SOS.MomentCodes16
import NoFourMUBs.Step2.SOS.MomentCodes18
import NoFourMUBs.Step2.SOS.NormalizationNodes019
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes033
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes24
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes34
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput1408 : ExponentCode := ⟨5, 5, ![![-2, -2, 1, 1, 2], ![0, 1, -1, 0, 0], ![0, 1, 0, 0, -1], ![1, 0, 0, -2, 1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput1408 : ExponentCode := normalNode8311

theorem canonicalSound1408 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1408.moment H = canonicalOutput1408.moment H :=
  canonical_of_padded canonicalInput1408 canonicalOutput1408 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation167, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput1409 : ExponentCode := ⟨5, 5, ![![-2, -2, 1, 1, 2], ![0, 1, -1, 0, 0], ![0, 1, 0, 1, -2], ![1, 0, -1, 0, 0], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput1409 : ExponentCode := normalNode8585

theorem canonicalSound1409 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1409.moment H = canonicalOutput1409.moment H :=
  canonical_of_padded canonicalInput1409 canonicalOutput1409 (by decide) (by decide)
    ⟨true, false, canonicalPermutation26, canonicalPermutation40⟩ (by decide +kernel) hH

def canonicalInput1410 : ExponentCode := ⟨5, 5, ![![-2, -2, 1, 1, 2], ![0, 1, -1, 0, 0], ![0, 1, 0, 1, -2], ![1, 0, 0, -2, 1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput1410 : ExponentCode := normalNode9764

theorem canonicalSound1410 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1410.moment H = canonicalOutput1410.moment H :=
  canonical_of_padded canonicalInput1410 canonicalOutput1410 (by decide) (by decide)
    ⟨true, false, canonicalPermutation20, OAI.MUB6.Certificate.PairSemantics.permutation199⟩ (by decide +kernel) hH

def canonicalInput1411 : ExponentCode := ⟨5, 5, ![![-2, -2, 1, 1, 2], ![0, 1, -1, 0, 0], ![0, 1, 1, 0, -2], ![1, 0, -1, -2, 2], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput1411 : ExponentCode := normalNode8313

theorem canonicalSound1411 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1411.moment H = canonicalOutput1411.moment H :=
  canonical_of_padded canonicalInput1411 canonicalOutput1411 (by decide) (by decide)
    ⟨true, true, canonicalPermutation78, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput1412 : ExponentCode := ⟨5, 5, ![![-2, -2, 1, 1, 2], ![0, 1, -1, 0, 0], ![0, 1, 1, 0, -2], ![1, 0, -1, -1, 1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput1412 : ExponentCode := normalNode9773

theorem canonicalSound1412 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1412.moment H = canonicalOutput1412.moment H :=
  canonical_of_padded canonicalInput1412 canonicalOutput1412 (by decide) (by decide)
    ⟨true, false, canonicalPermutation20, OAI.MUB6.Certificate.PairSemantics.permutation199⟩ (by decide +kernel) hH

def canonicalInput1413 : ExponentCode := ⟨5, 5, ![![-2, -2, 1, 1, 2], ![0, 1, -1, 0, 0], ![0, 1, 1, 0, -2], ![1, 0, 0, -2, 1], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput1413 : ExponentCode := normalNode8312

theorem canonicalSound1413 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1413.moment H = canonicalOutput1413.moment H :=
  canonical_of_padded canonicalInput1413 canonicalOutput1413 (by decide) (by decide)
    ⟨true, true, canonicalPermutation78, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput1414 : ExponentCode := ⟨5, 5, ![![-2, -2, 1, 1, 2], ![0, 1, -1, 0, 0], ![0, 1, 1, 1, -3], ![1, 0, -1, -2, 2], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput1414 : ExponentCode := normalNode9604

theorem canonicalSound1414 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1414.moment H = canonicalOutput1414.moment H :=
  canonical_of_padded canonicalInput1414 canonicalOutput1414 (by decide) (by decide)
    ⟨true, false, canonicalPermutation20, OAI.MUB6.Certificate.PairSemantics.permutation199⟩ (by decide +kernel) hH

def canonicalInput1415 : ExponentCode := ⟨5, 5, ![![-2, -2, 1, 1, 2], ![0, 1, -1, 0, 0], ![0, 1, 1, 1, -3], ![1, 0, 0, -2, 1], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput1415 : ExponentCode := normalNode8609

theorem canonicalSound1415 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1415.moment H = canonicalOutput1415.moment H :=
  canonical_of_padded canonicalInput1415 canonicalOutput1415 (by decide) (by decide)
    ⟨true, false, canonicalPermutation19, canonicalPermutation13⟩ (by decide +kernel) hH

def canonicalInput1416 : ExponentCode := ⟨5, 5, ![![-2, -2, 1, 1, 2], ![0, 1, -1, 1, -1], ![0, 1, 0, 0, -1], ![1, 0, -1, -2, 2], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput1416 : ExponentCode := normalNode6368

theorem canonicalSound1416 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1416.moment H = canonicalOutput1416.moment H :=
  canonical_of_padded canonicalInput1416 canonicalOutput1416 (by decide) (by decide)
    ⟨true, false, canonicalPermutation46, canonicalPermutation17⟩ (by decide +kernel) hH

def canonicalInput1417 : ExponentCode := ⟨5, 5, ![![-2, -2, 1, 1, 2], ![0, 1, -1, 1, -1], ![0, 1, 0, 0, -1], ![1, 0, 0, -2, 1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput1417 : ExponentCode := normalNode7590

theorem canonicalSound1417 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1417.moment H = canonicalOutput1417.moment H :=
  canonical_of_padded canonicalInput1417 canonicalOutput1417 (by decide) (by decide)
    ⟨true, false, canonicalPermutation30, canonicalPermutation17⟩ (by decide +kernel) hH

def canonicalInput1418 : ExponentCode := ⟨5, 5, ![![-2, -2, 1, 1, 2], ![0, 1, -1, 1, -1], ![0, 1, 1, 0, -2], ![1, 0, -1, -2, 2], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput1418 : ExponentCode := normalNode6369

theorem canonicalSound1418 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1418.moment H = canonicalOutput1418.moment H :=
  canonical_of_padded canonicalInput1418 canonicalOutput1418 (by decide) (by decide)
    ⟨true, false, canonicalPermutation56, canonicalPermutation33⟩ (by decide +kernel) hH

def canonicalInput1419 : ExponentCode := ⟨5, 5, ![![-2, -2, 1, 1, 2], ![0, 1, -1, 1, -1], ![0, 1, 1, 0, -2], ![1, 0, 0, -2, 1], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput1419 : ExponentCode := normalNode8208

theorem canonicalSound1419 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1419.moment H = canonicalOutput1419.moment H :=
  canonical_of_padded canonicalInput1419 canonicalOutput1419 (by decide) (by decide)
    ⟨true, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation201⟩ (by decide +kernel) hH

def canonicalInput1420 : ExponentCode := ⟨5, 5, ![![-2, -2, 1, 1, 2], ![0, 1, 0, -2, 1], ![0, 1, 0, 1, -2], ![1, 0, -2, 1, 0], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput1420 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code366

theorem canonicalSound1420 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1420.moment H = canonicalOutput1420.moment H :=
  canonical_of_padded canonicalInput1420 canonicalOutput1420 (by decide) (by decide)
    ⟨true, false, canonicalPermutation43, canonicalPermutation22⟩ (by decide +kernel) hH

def canonicalInput1421 : ExponentCode := ⟨5, 5, ![![-2, -2, 1, 1, 2], ![0, 1, 0, -1, 0], ![0, 1, 1, 0, -2], ![1, 0, -2, 1, 0], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput1421 : ExponentCode := normalNode8585

theorem canonicalSound1421 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1421.moment H = canonicalOutput1421.moment H :=
  canonical_of_padded canonicalInput1421 canonicalOutput1421 (by decide) (by decide)
    ⟨true, false, canonicalPermutation76, canonicalPermutation16⟩ (by decide +kernel) hH

def canonicalInput1422 : ExponentCode := ⟨5, 5, ![![-2, -2, 1, 1, 2], ![0, 1, 0, 0, -1], ![0, 1, 1, -2, 0], ![1, 0, -2, 0, 1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput1422 : ExponentCode := normalNode6583

theorem canonicalSound1422 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1422.moment H = canonicalOutput1422.moment H :=
  canonical_of_padded canonicalInput1422 canonicalOutput1422 (by decide) (by decide)
    ⟨true, false, canonicalPermutation30, canonicalPermutation16⟩ (by decide +kernel) hH

def canonicalInput1423 : ExponentCode := ⟨5, 5, ![![-2, -2, 1, 1, 2], ![0, 1, 0, 0, -1], ![0, 1, 1, -2, 0], ![1, 0, -2, 1, 0], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput1423 : ExponentCode := normalNode8242

theorem canonicalSound1423 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1423.moment H = canonicalOutput1423.moment H :=
  canonical_of_padded canonicalInput1423 canonicalOutput1423 (by decide) (by decide)
    ⟨true, false, canonicalPermutation46, canonicalPermutation16⟩ (by decide +kernel) hH

def canonicalInput1424 : ExponentCode := ⟨5, 5, ![![-2, -2, 1, 1, 2], ![0, 1, 0, 0, -1], ![0, 1, 1, -2, 0], ![1, 0, -1, 0, 0], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput1424 : ExponentCode := normalNode10018

theorem canonicalSound1424 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1424.moment H = canonicalOutput1424.moment H :=
  canonical_of_padded canonicalInput1424 canonicalOutput1424 (by decide) (by decide)
    ⟨true, false, canonicalPermutation30, canonicalPermutation29⟩ (by decide +kernel) hH

def canonicalInput1425 : ExponentCode := ⟨5, 5, ![![-2, -2, 1, 1, 2], ![0, 1, 0, 1, -2], ![0, 1, 1, -2, 0], ![1, 0, -2, 0, 1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput1425 : ExponentCode := normalNode6584

theorem canonicalSound1425 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1425.moment H = canonicalOutput1425.moment H :=
  canonical_of_padded canonicalInput1425 canonicalOutput1425 (by decide) (by decide)
    ⟨true, false, canonicalPermutation20, OAI.MUB6.Certificate.PairSemantics.permutation199⟩ (by decide +kernel) hH

def canonicalInput1426 : ExponentCode := ⟨3, 5, ![![-2, -2, 1, 1, 2], ![0, 2, -2, 1, -1], ![2, 0, 1, -2, -1]]⟩

def canonicalOutput1426 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node625⟩

theorem canonicalSound1426 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1426.moment H = canonicalOutput1426.moment H :=
  canonical_of_padded canonicalInput1426 canonicalOutput1426 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation173, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput1427 : ExponentCode := ⟨3, 5, ![![-2, -2, 1, 1, 2], ![1, 1, -2, 1, -1], ![1, 1, 1, -2, -1]]⟩

def canonicalOutput1427 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1212

theorem canonicalSound1427 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1427.moment H = canonicalOutput1427.moment H :=
  canonical_of_padded canonicalInput1427 canonicalOutput1427 (by decide) (by decide)
    ⟨true, false, canonicalPermutation26, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput1428 : ExponentCode := ⟨5, 5, ![![-2, -2, 1, 2, 1], ![0, 0, -2, 0, 2], ![0, 1, 0, -1, 0], ![0, 1, 1, -1, -1], ![2, 0, 0, 0, -2]]⟩

def canonicalOutput1428 : ExponentCode := normalNode8072

theorem canonicalSound1428 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1428.moment H = canonicalOutput1428.moment H :=
  canonical_of_padded canonicalInput1428 canonicalOutput1428 (by decide) (by decide)
    ⟨true, false, canonicalPermutation58, canonicalPermutation19⟩ (by decide +kernel) hH

def canonicalInput1429 : ExponentCode := ⟨5, 5, ![![-2, -2, 1, 2, 1], ![0, 0, -2, 0, 2], ![0, 1, 0, -1, 0], ![0, 1, 1, 0, -2], ![2, 0, 0, -1, -1]]⟩

def canonicalOutput1429 : ExponentCode := normalNode8069

theorem canonicalSound1429 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1429.moment H = canonicalOutput1429.moment H :=
  canonical_of_padded canonicalInput1429 canonicalOutput1429 (by decide) (by decide)
    ⟨true, false, canonicalPermutation76, canonicalPermutation22⟩ (by decide +kernel) hH

def canonicalInput1430 : ExponentCode := ⟨5, 5, ![![-2, -2, 1, 2, 1], ![0, 0, -1, -1, 2], ![0, 1, -1, 0, 0], ![0, 1, 1, -1, -1], ![2, 0, 0, 0, -2]]⟩

def canonicalOutput1430 : ExponentCode := normalNode8226

theorem canonicalSound1430 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1430.moment H = canonicalOutput1430.moment H :=
  canonical_of_padded canonicalInput1430 canonicalOutput1430 (by decide) (by decide)
    ⟨true, true, canonicalPermutation78, canonicalPermutation19⟩ (by decide +kernel) hH

def canonicalInput1431 : ExponentCode := ⟨5, 5, ![![-2, -2, 1, 2, 1], ![0, 0, -1, -1, 2], ![0, 1, -1, 0, 0], ![0, 1, 1, 0, -2], ![2, 0, 0, -1, -1]]⟩

def canonicalOutput1431 : ExponentCode := normalNode8225

theorem canonicalSound1431 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1431.moment H = canonicalOutput1431.moment H :=
  canonical_of_padded canonicalInput1431 canonicalOutput1431 (by decide) (by decide)
    ⟨true, true, canonicalPermutation78, canonicalPermutation19⟩ (by decide +kernel) hH

def canonicalInput1432 : ExponentCode := ⟨5, 5, ![![-2, -2, 1, 2, 1], ![0, 0, -1, -1, 2], ![0, 1, -1, 0, 0], ![1, 0, 1, -1, -1], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput1432 : ExponentCode := normalNode8075

theorem canonicalSound1432 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1432.moment H = canonicalOutput1432.moment H :=
  canonical_of_padded canonicalInput1432 canonicalOutput1432 (by decide) (by decide)
    ⟨true, true, canonicalPermutation78, canonicalPermutation22⟩ (by decide +kernel) hH

def canonicalInput1433 : ExponentCode := ⟨5, 5, ![![-2, -2, 1, 2, 1], ![0, 0, -1, -1, 2], ![0, 1, 0, -1, 0], ![0, 1, 1, 0, -2], ![2, 0, -1, 0, -1]]⟩

def canonicalOutput1433 : ExponentCode := normalNode8097

theorem canonicalSound1433 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1433.moment H = canonicalOutput1433.moment H :=
  canonical_of_padded canonicalInput1433 canonicalOutput1433 (by decide) (by decide)
    ⟨true, false, canonicalPermutation61, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput1434 : ExponentCode := ⟨5, 5, ![![-2, -2, 1, 2, 1], ![0, 0, -1, 0, 1], ![0, 1, -1, -1, 1], ![0, 1, 1, -1, -1], ![2, 0, 0, 0, -2]]⟩

def canonicalOutput1434 : ExponentCode := normalNode8514

theorem canonicalSound1434 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1434.moment H = canonicalOutput1434.moment H :=
  canonical_of_padded canonicalInput1434 canonicalOutput1434 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation178, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput1435 : ExponentCode := ⟨5, 5, ![![-2, -2, 1, 2, 1], ![0, 0, -1, 0, 1], ![0, 1, -1, -1, 1], ![0, 1, 1, 0, -2], ![2, 0, 0, -1, -1]]⟩

def canonicalOutput1435 : ExponentCode := normalNode8476

theorem canonicalSound1435 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1435.moment H = canonicalOutput1435.moment H :=
  canonical_of_padded canonicalInput1435 canonicalOutput1435 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation178, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput1436 : ExponentCode := ⟨5, 5, ![![-2, -2, 1, 2, 1], ![0, 0, -1, 0, 1], ![0, 1, -1, -1, 1], ![1, 0, 1, -1, -1], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput1436 : ExponentCode := normalNode8503

theorem canonicalSound1436 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1436.moment H = canonicalOutput1436.moment H :=
  canonical_of_padded canonicalInput1436 canonicalOutput1436 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation178, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput1437 : ExponentCode := ⟨5, 5, ![![-2, -2, 1, 2, 1], ![0, 0, -1, 0, 1], ![0, 1, -1, 0, 0], ![1, 0, 0, -2, 1], ![1, 1, 1, 0, -3]]⟩

def canonicalOutput1437 : ExponentCode := normalNode8595

theorem canonicalSound1437 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1437.moment H = canonicalOutput1437.moment H :=
  canonical_of_padded canonicalInput1437 canonicalOutput1437 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation178, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput1438 : ExponentCode := ⟨5, 5, ![![-2, -2, 1, 2, 1], ![0, 0, -1, 0, 1], ![0, 1, 0, -1, 0], ![0, 1, 0, -1, 0], ![2, 0, 0, 0, -2]]⟩

def canonicalOutput1438 : ExponentCode := normalNode8331

theorem canonicalSound1438 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1438.moment H = canonicalOutput1438.moment H :=
  canonical_of_padded canonicalInput1438 canonicalOutput1438 (by decide) (by decide)
    ⟨true, false, canonicalPermutation61, canonicalPermutation35⟩ (by decide +kernel) hH

def canonicalInput1439 : ExponentCode := ⟨5, 5, ![![-2, -2, 1, 2, 1], ![0, 0, -1, 0, 1], ![0, 1, 0, -1, 0], ![0, 1, 0, 0, -1], ![2, 0, 0, -1, -1]]⟩

def canonicalOutput1439 : ExponentCode := normalNode8411

theorem canonicalSound1439 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1439.moment H = canonicalOutput1439.moment H :=
  canonical_of_padded canonicalInput1439 canonicalOutput1439 (by decide) (by decide)
    ⟨true, true, canonicalPermutation41, canonicalPermutation35⟩ (by decide +kernel) hH

def canonicalInput1440 : ExponentCode := ⟨5, 5, ![![-2, -2, 1, 2, 1], ![0, 0, -1, 0, 1], ![0, 1, 0, -1, 0], ![0, 1, 1, -1, -1], ![2, 0, -1, 0, -1]]⟩

def canonicalOutput1440 : ExponentCode := normalNode10087

theorem canonicalSound1440 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1440.moment H = canonicalOutput1440.moment H :=
  canonical_of_padded canonicalInput1440 canonicalOutput1440 (by decide) (by decide)
    ⟨true, false, canonicalPermutation61, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput1441 : ExponentCode := ⟨5, 5, ![![-2, -2, 1, 2, 1], ![0, 0, -1, 0, 1], ![0, 1, 0, -1, 0], ![0, 1, 1, 0, -2], ![2, 0, -1, -1, 0]]⟩

def canonicalOutput1441 : ExponentCode := normalNode10029

theorem canonicalSound1441 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1441.moment H = canonicalOutput1441.moment H :=
  canonical_of_padded canonicalInput1441 canonicalOutput1441 (by decide) (by decide)
    ⟨true, false, canonicalPermutation61, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput1442 : ExponentCode := ⟨5, 5, ![![-2, -2, 1, 2, 1], ![0, 0, 0, -1, 1], ![0, 1, -2, 0, 1], ![0, 1, 1, -1, -1], ![2, 0, 0, 0, -2]]⟩

def canonicalOutput1442 : ExponentCode := normalNode8435

theorem canonicalSound1442 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1442.moment H = canonicalOutput1442.moment H :=
  canonical_of_padded canonicalInput1442 canonicalOutput1442 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation183, canonicalPermutation40⟩ (by decide +kernel) hH

def canonicalInput1443 : ExponentCode := ⟨5, 5, ![![-2, -2, 1, 2, 1], ![0, 0, 0, -1, 1], ![0, 1, -2, 0, 1], ![0, 1, 1, 0, -2], ![2, 0, 0, -1, -1]]⟩

def canonicalOutput1443 : ExponentCode := normalNode8255

theorem canonicalSound1443 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1443.moment H = canonicalOutput1443.moment H :=
  canonical_of_padded canonicalInput1443 canonicalOutput1443 (by decide) (by decide)
    ⟨true, false, canonicalPermutation53, canonicalPermutation16⟩ (by decide +kernel) hH

def canonicalInput1444 : ExponentCode := ⟨5, 5, ![![-2, -2, 1, 2, 1], ![0, 0, 0, -1, 1], ![0, 1, -1, -1, 1], ![0, 1, 1, 0, -2], ![2, 0, -1, 0, -1]]⟩

def canonicalOutput1444 : ExponentCode := normalNode8096

theorem canonicalSound1444 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1444.moment H = canonicalOutput1444.moment H :=
  canonical_of_padded canonicalInput1444 canonicalOutput1444 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation192, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput1445 : ExponentCode := ⟨5, 5, ![![-2, -2, 1, 2, 1], ![0, 0, 0, -1, 1], ![0, 1, -1, 0, 0], ![0, 1, 0, -1, 0], ![2, 0, 0, 0, -2]]⟩

def canonicalOutput1445 : ExponentCode := normalNode8334

theorem canonicalSound1445 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1445.moment H = canonicalOutput1445.moment H :=
  canonical_of_padded canonicalInput1445 canonicalOutput1445 (by decide) (by decide)
    ⟨true, false, canonicalPermutation61, OAI.MUB6.Certificate.PairSemantics.permutation189⟩ (by decide +kernel) hH

def canonicalInput1446 : ExponentCode := ⟨5, 5, ![![-2, -2, 1, 2, 1], ![0, 0, 0, -1, 1], ![0, 1, -1, 0, 0], ![0, 1, 0, 0, -1], ![2, 0, 0, -1, -1]]⟩

def canonicalOutput1446 : ExponentCode := normalNode8412

theorem canonicalSound1446 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1446.moment H = canonicalOutput1446.moment H :=
  canonical_of_padded canonicalInput1446 canonicalOutput1446 (by decide) (by decide)
    ⟨true, true, canonicalPermutation78, canonicalPermutation35⟩ (by decide +kernel) hH

def canonicalInput1447 : ExponentCode := ⟨5, 5, ![![-2, -2, 1, 2, 1], ![0, 0, 0, -1, 1], ![0, 1, -1, 0, 0], ![0, 1, 1, -1, -1], ![2, 0, -1, 0, -1]]⟩

def canonicalOutput1447 : ExponentCode := normalNode10088

theorem canonicalSound1447 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1447.moment H = canonicalOutput1447.moment H :=
  canonical_of_padded canonicalInput1447 canonicalOutput1447 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation192, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput1448 : ExponentCode := ⟨5, 5, ![![-2, -2, 1, 2, 1], ![0, 0, 0, -1, 1], ![0, 1, -1, 0, 0], ![0, 1, 1, 0, -2], ![2, 0, -1, -1, 0]]⟩

def canonicalOutput1448 : ExponentCode := normalNode10030

theorem canonicalSound1448 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1448.moment H = canonicalOutput1448.moment H :=
  canonical_of_padded canonicalInput1448 canonicalOutput1448 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation192, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput1449 : ExponentCode := ⟨5, 5, ![![-2, -2, 1, 2, 1], ![0, 0, 0, -1, 1], ![0, 1, 0, -1, 0], ![0, 1, 0, 0, -1], ![2, 0, -1, 0, -1]]⟩

def canonicalOutput1449 : ExponentCode := normalNode8410

theorem canonicalSound1449 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1449.moment H = canonicalOutput1449.moment H :=
  canonical_of_padded canonicalInput1449 canonicalOutput1449 (by decide) (by decide)
    ⟨true, true, canonicalPermutation41, canonicalPermutation35⟩ (by decide +kernel) hH

def canonicalInput1450 : ExponentCode := ⟨5, 5, ![![-2, -2, 1, 2, 1], ![0, 0, 0, -1, 1], ![0, 1, 0, -1, 0], ![0, 1, 1, 0, -2], ![2, 0, -2, 0, 0]]⟩

def canonicalOutput1450 : ExponentCode := normalNode8265

theorem canonicalSound1450 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1450.moment H = canonicalOutput1450.moment H :=
  canonical_of_padded canonicalInput1450 canonicalOutput1450 (by decide) (by decide)
    ⟨true, false, canonicalPermutation61, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput1451 : ExponentCode := ⟨5, 5, ![![-2, -2, 1, 2, 1], ![0, 1, -2, 0, 1], ![0, 1, 0, 0, -1], ![1, 0, 0, -2, 1], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput1451 : ExponentCode := normalNode6818

theorem canonicalSound1451 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1451.moment H = canonicalOutput1451.moment H :=
  canonical_of_padded canonicalInput1451 canonicalOutput1451 (by decide) (by decide)
    ⟨true, false, canonicalPermutation46, canonicalPermutation22⟩ (by decide +kernel) hH

def canonicalInput1452 : ExponentCode := ⟨5, 5, ![![-2, -2, 1, 2, 1], ![0, 1, -2, 0, 1], ![0, 1, 1, 0, -2], ![1, 0, 0, -2, 1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput1452 : ExponentCode := normalNode6817

theorem canonicalSound1452 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1452.moment H = canonicalOutput1452.moment H :=
  canonical_of_padded canonicalInput1452 canonicalOutput1452 (by decide) (by decide)
    ⟨true, false, canonicalPermutation56, canonicalPermutation20⟩ (by decide +kernel) hH

def canonicalInput1453 : ExponentCode := ⟨5, 5, ![![-2, -2, 1, 2, 1], ![0, 1, -1, 0, 0], ![0, 1, 0, 0, -1], ![1, 0, 0, -2, 1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput1453 : ExponentCode := normalNode8316

theorem canonicalSound1453 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1453.moment H = canonicalOutput1453.moment H :=
  canonical_of_padded canonicalInput1453 canonicalOutput1453 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation167, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput1454 : ExponentCode := ⟨5, 5, ![![-2, -2, 1, 2, 1], ![0, 1, -1, 0, 0], ![0, 1, 1, 0, -2], ![1, 0, -1, -2, 2], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput1454 : ExponentCode := normalNode9787

theorem canonicalSound1454 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1454.moment H = canonicalOutput1454.moment H :=
  canonical_of_padded canonicalInput1454 canonicalOutput1454 (by decide) (by decide)
    ⟨true, false, canonicalPermutation20, OAI.MUB6.Certificate.PairSemantics.permutation199⟩ (by decide +kernel) hH

def canonicalInput1455 : ExponentCode := ⟨5, 5, ![![-2, -2, 1, 2, 1], ![0, 1, -1, 0, 0], ![0, 1, 1, 0, -2], ![1, 0, 0, -2, 1], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput1455 : ExponentCode := normalNode8585

theorem canonicalSound1455 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1455.moment H = canonicalOutput1455.moment H :=
  canonical_of_padded canonicalInput1455 canonicalOutput1455 (by decide) (by decide)
    ⟨true, false, canonicalPermutation19, canonicalPermutation13⟩ (by decide +kernel) hH

def canonicalInput1456 : ExponentCode := ⟨5, 5, ![![-2, -2, 1, 2, 1], ![0, 1, 0, -2, 1], ![0, 1, 0, 0, -1], ![1, 0, -2, 0, 1], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput1456 : ExponentCode := normalNode6817

theorem canonicalSound1456 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1456.moment H = canonicalOutput1456.moment H :=
  canonical_of_padded canonicalInput1456 canonicalOutput1456 (by decide) (by decide)
    ⟨true, false, canonicalPermutation46, canonicalPermutation17⟩ (by decide +kernel) hH

def canonicalInput1457 : ExponentCode := ⟨5, 5, ![![-2, -2, 1, 2, 1], ![0, 1, 0, -2, 1], ![0, 1, 1, 0, -2], ![1, 0, -2, 0, 1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput1457 : ExponentCode := normalNode6818

theorem canonicalSound1457 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1457.moment H = canonicalOutput1457.moment H :=
  canonical_of_padded canonicalInput1457 canonicalOutput1457 (by decide) (by decide)
    ⟨true, false, canonicalPermutation56, canonicalPermutation33⟩ (by decide +kernel) hH

def canonicalInput1458 : ExponentCode := ⟨3, 5, ![![-2, -2, 1, 2, 1], ![0, 2, -2, -1, 1], ![2, 0, 1, -1, -2]]⟩

def canonicalOutput1458 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node625⟩

theorem canonicalSound1458 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1458.moment H = canonicalOutput1458.moment H :=
  canonical_of_padded canonicalInput1458 canonicalOutput1458 (by decide) (by decide)
    ⟨true, true, canonicalPermutation44, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput1459 : ExponentCode := ⟨3, 5, ![![-2, -2, 1, 2, 1], ![0, 2, 1, -1, -2], ![2, 0, -2, -1, 1]]⟩

def canonicalOutput1459 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node625⟩

theorem canonicalSound1459 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1459.moment H = canonicalOutput1459.moment H :=
  canonical_of_padded canonicalInput1459 canonicalOutput1459 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation169, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput1460 : ExponentCode := ⟨3, 5, ![![-2, -2, 1, 2, 1], ![1, 0, 2, -1, -2], ![1, 2, -3, -1, 1]]⟩

def canonicalOutput1460 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code681

theorem canonicalSound1460 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1460.moment H = canonicalOutput1460.moment H :=
  canonical_of_padded canonicalInput1460 canonicalOutput1460 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput1461 : ExponentCode := ⟨3, 5, ![![-2, -2, 1, 2, 1], ![1, 1, -2, 2, -2], ![1, 1, 1, -4, 1]]⟩

def canonicalOutput1461 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code14

theorem canonicalSound1461 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1461.moment H = canonicalOutput1461.moment H :=
  canonical_of_padded canonicalInput1461 canonicalOutput1461 (by decide) (by decide)
    ⟨true, false, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput1462 : ExponentCode := ⟨3, 5, ![![-2, -2, 1, 2, 1], ![1, 1, 1, 0, -3], ![1, 1, -2, -2, 2]]⟩

def canonicalOutput1462 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code80

theorem canonicalSound1462 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1462.moment H = canonicalOutput1462.moment H :=
  canonical_of_padded canonicalInput1462 canonicalOutput1462 (by decide) (by decide)
    ⟨true, false, canonicalPermutation59, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput1463 : ExponentCode := ⟨3, 5, ![![-2, -2, 1, 2, 1], ![2, -1, 1, 0, -2], ![0, 3, -2, -2, 1]]⟩

def canonicalOutput1463 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1036

theorem canonicalSound1463 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1463.moment H = canonicalOutput1463.moment H :=
  canonical_of_padded canonicalInput1463 canonicalOutput1463 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput1464 : ExponentCode := ⟨3, 5, ![![-2, -2, 1, 2, 1], ![2, 0, 1, 0, -3], ![0, 2, -2, -2, 2]]⟩

def canonicalOutput1464 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code71

theorem canonicalSound1464 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1464.moment H = canonicalOutput1464.moment H :=
  canonical_of_padded canonicalInput1464 canonicalOutput1464 (by decide) (by decide)
    ⟨true, false, canonicalPermutation13, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput1465 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, -1, 0, 1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![2, 1, 1, -4]]⟩

def canonicalOutput1465 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1589⟩

theorem canonicalSound1465 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1465.moment H = canonicalOutput1465.moment H :=
  canonical_of_padded canonicalInput1465 canonicalOutput1465 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation199, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput1466 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, -1, 0, 1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 2, 1, -4]]⟩

def canonicalOutput1466 : ExponentCode := normalNode4879

theorem canonicalSound1466 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1466.moment H = canonicalOutput1466.moment H :=
  canonical_of_padded canonicalInput1466 canonicalOutput1466 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput1467 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, -1, 0, 1], ![0, 3, 1, -4], ![1, 0, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput1467 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2182⟩

theorem canonicalSound1467 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1467.moment H = canonicalOutput1467.moment H :=
  canonical_of_padded canonicalInput1467 canonicalOutput1467 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput1468 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, -1, 1, 0], ![0, 3, 1, -4], ![2, 0, -3, 1]]⟩

def canonicalOutput1468 : ExponentCode := normalNode9982

theorem canonicalSound1468 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1468.moment H = canonicalOutput1468.moment H :=
  canonical_of_padded canonicalInput1468 canonicalOutput1468 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput1469 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, -1, 1, 0], ![1, 0, 1, -2], ![1, 3, -3, -1]]⟩

def canonicalOutput1469 : ExponentCode := normalNode7905

theorem canonicalSound1469 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1469.moment H = canonicalOutput1469.moment H :=
  canonical_of_padded canonicalInput1469 canonicalOutput1469 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput1470 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, -1, 1, 0], ![1, 1, -3, 1], ![1, 2, 1, -4]]⟩

def canonicalOutput1470 : ExponentCode := normalNode11074

theorem canonicalSound1470 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1470.moment H = canonicalOutput1470.moment H :=
  canonical_of_padded canonicalInput1470 canonicalOutput1470 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput1471 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, -1, 1, 0], ![1, 1, 1, -3], ![1, 2, -3, 0]]⟩

def canonicalOutput1471 : ExponentCode := normalNode9582

theorem canonicalSound1471 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1471.moment H = canonicalOutput1471.moment H :=
  canonical_of_padded canonicalInput1471 canonicalOutput1471 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

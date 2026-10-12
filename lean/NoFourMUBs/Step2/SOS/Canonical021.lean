import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes01
import NoFourMUBs.Step2.SOS.MomentCodes02
import NoFourMUBs.Step2.SOS.MomentCodes10
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes033
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes6
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput1344 : ExponentCode := ⟨4, 4, ![![-2, -2, 0, 4], ![1, -1, 1, -1], ![0, 3, -2, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput1344 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node458⟩

theorem canonicalSound1344 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1344.moment H = canonicalOutput1344.moment H :=
  canonical_of_padded canonicalInput1344 canonicalOutput1344 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput1345 : ExponentCode := ⟨4, 4, ![![-2, -2, 0, 4], ![1, -1, 2, -2], ![0, 3, -2, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput1345 : ExponentCode := normalNode6459

theorem canonicalSound1345 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1345.moment H = canonicalOutput1345.moment H :=
  canonical_of_padded canonicalInput1345 canonicalOutput1345 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput1346 : ExponentCode := ⟨4, 4, ![![-2, -2, 0, 4], ![1, 0, 1, -2], ![0, 1, -2, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput1346 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node402⟩

theorem canonicalSound1346 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1346.moment H = canonicalOutput1346.moment H :=
  canonical_of_padded canonicalInput1346 canonicalOutput1346 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1347 : ExponentCode := ⟨4, 4, ![![-2, -2, 0, 4], ![1, 0, 1, -2], ![0, 3, -2, -1], ![1, -1, 1, -1]]⟩

def canonicalOutput1347 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node458⟩

theorem canonicalSound1347 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1347.moment H = canonicalOutput1347.moment H :=
  canonical_of_padded canonicalInput1347 canonicalOutput1347 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput1348 : ExponentCode := ⟨4, 4, ![![-2, -2, 0, 4], ![1, 0, 3, -4], ![0, 1, -2, 1], ![1, 1, -1, -1]]⟩

def canonicalOutput1348 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code142

theorem canonicalSound1348 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1348.moment H = canonicalOutput1348.moment H :=
  canonical_of_padded canonicalInput1348 canonicalOutput1348 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1349 : ExponentCode := ⟨4, 4, ![![-2, -2, 0, 4], ![1, 0, 3, -4], ![0, 2, -2, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput1349 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node814⟩

theorem canonicalSound1349 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1349.moment H = canonicalOutput1349.moment H :=
  canonical_of_padded canonicalInput1349 canonicalOutput1349 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput1350 : ExponentCode := ⟨4, 4, ![![-2, -2, 0, 4], ![1, 1, -3, 1], ![0, 1, 1, -2], ![1, 0, 2, -3]]⟩

def canonicalOutput1350 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code144

theorem canonicalSound1350 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1350.moment H = canonicalOutput1350.moment H :=
  canonical_of_padded canonicalInput1350 canonicalOutput1350 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1351 : ExponentCode := ⟨4, 4, ![![-2, -2, 0, 4], ![1, 1, -3, 1], ![0, 1, 2, -3], ![1, 0, 1, -2]]⟩

def canonicalOutput1351 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code144

theorem canonicalSound1351 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1351.moment H = canonicalOutput1351.moment H :=
  canonical_of_padded canonicalInput1351 canonicalOutput1351 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput1352 : ExponentCode := ⟨4, 4, ![![-2, -2, 0, 4], ![1, 1, -3, 1], ![0, 1, 3, -4], ![1, 0, 0, -1]]⟩

def canonicalOutput1352 : ExponentCode := normalNode8937

theorem canonicalSound1352 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1352.moment H = canonicalOutput1352.moment H :=
  canonical_of_padded canonicalInput1352 canonicalOutput1352 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation151, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput1353 : ExponentCode := ⟨3, 5, ![![-2, -2, 1, 1, 2], ![-1, 3, -2, 1, -1], ![3, -1, 1, -2, -1]]⟩

def canonicalOutput1353 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code67

theorem canonicalSound1353 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1353.moment H = canonicalOutput1353.moment H :=
  canonical_of_padded canonicalInput1353 canonicalOutput1353 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation173, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput1354 : ExponentCode := ⟨5, 5, ![![-2, -2, 1, 1, 2], ![0, 0, -2, 0, 2], ![0, 1, 0, -1, 0], ![0, 1, 1, 1, -3], ![2, 0, 0, -1, -1]]⟩

def canonicalOutput1354 : ExponentCode := normalNode8551

theorem canonicalSound1354 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1354.moment H = canonicalOutput1354.moment H :=
  canonical_of_padded canonicalInput1354 canonicalOutput1354 (by decide) (by decide)
    ⟨true, false, canonicalPermutation76, canonicalPermutation17⟩ (by decide +kernel) hH

def canonicalInput1355 : ExponentCode := ⟨5, 5, ![![-2, -2, 1, 1, 2], ![0, 0, -1, -1, 2], ![0, 2, -1, 0, -1], ![1, 0, 0, -1, 0], ![1, 0, 1, 1, -3]]⟩

def canonicalOutput1355 : ExponentCode := normalNode8497

theorem canonicalSound1355 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1355.moment H = canonicalOutput1355.moment H :=
  canonical_of_padded canonicalInput1355 canonicalOutput1355 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation189⟩ (by decide +kernel) hH

def canonicalInput1356 : ExponentCode := ⟨5, 5, ![![-2, -2, 1, 1, 2], ![0, 0, -1, 0, 1], ![0, 1, -1, -1, 1], ![0, 1, 1, 1, -3], ![2, 0, 0, -1, -1]]⟩

def canonicalOutput1356 : ExponentCode := normalNode8496

theorem canonicalSound1356 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1356.moment H = canonicalOutput1356.moment H :=
  canonical_of_padded canonicalInput1356 canonicalOutput1356 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation178, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput1357 : ExponentCode := ⟨5, 5, ![![-2, -2, 1, 1, 2], ![0, 0, -1, 0, 1], ![0, 1, -1, 0, 0], ![0, 1, 1, 1, -3], ![2, 0, 0, -2, 0]]⟩

def canonicalOutput1357 : ExponentCode := normalNode8630

theorem canonicalSound1357 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1357.moment H = canonicalOutput1357.moment H :=
  canonical_of_padded canonicalInput1357 canonicalOutput1357 (by decide) (by decide)
    ⟨true, false, canonicalPermutation36, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput1358 : ExponentCode := ⟨5, 5, ![![-2, -2, 1, 1, 2], ![0, 0, -1, 0, 1], ![0, 1, -1, 0, 0], ![1, 0, 0, -2, 1], ![1, 1, 1, 1, -4]]⟩

def canonicalOutput1358 : ExponentCode := normalNode8613

theorem canonicalSound1358 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1358.moment H = canonicalOutput1358.moment H :=
  canonical_of_padded canonicalInput1358 canonicalOutput1358 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation178, OAI.MUB6.Certificate.PairSemantics.permutation171⟩ (by decide +kernel) hH

def canonicalInput1359 : ExponentCode := ⟨5, 5, ![![-2, -2, 1, 1, 2], ![0, 0, -1, 0, 1], ![0, 1, -1, 0, 0], ![1, 0, 0, 1, -2], ![1, 1, 1, -2, -1]]⟩

def canonicalOutput1359 : ExponentCode := normalNode8762

theorem canonicalSound1359 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1359.moment H = canonicalOutput1359.moment H :=
  canonical_of_padded canonicalInput1359 canonicalOutput1359 (by decide) (by decide)
    ⟨true, false, canonicalPermutation36, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput1360 : ExponentCode := ⟨5, 5, ![![-2, -2, 1, 1, 2], ![0, 0, -1, 0, 1], ![0, 1, 0, -1, 0], ![0, 1, 0, 1, -2], ![2, 0, 0, -1, -1]]⟩

def canonicalOutput1360 : ExponentCode := normalNode10109

theorem canonicalSound1360 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1360.moment H = canonicalOutput1360.moment H :=
  canonical_of_padded canonicalInput1360 canonicalOutput1360 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation175, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput1361 : ExponentCode := ⟨5, 5, ![![-2, -2, 1, 1, 2], ![0, 0, -1, 0, 1], ![0, 1, 0, -1, 0], ![0, 1, 1, 1, -3], ![2, 0, -1, -1, 0]]⟩

def canonicalOutput1361 : ExponentCode := normalNode10144

theorem canonicalSound1361 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1361.moment H = canonicalOutput1361.moment H :=
  canonical_of_padded canonicalInput1361 canonicalOutput1361 (by decide) (by decide)
    ⟨true, false, canonicalPermutation61, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput1362 : ExponentCode := ⟨5, 5, ![![-2, -2, 1, 1, 2], ![0, 0, -1, 0, 1], ![0, 2, 0, -2, 0], ![1, 0, -1, 0, 0], ![1, 0, 1, 1, -3]]⟩

def canonicalOutput1362 : ExponentCode := normalNode8630

theorem canonicalSound1362 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1362.moment H = canonicalOutput1362.moment H :=
  canonical_of_padded canonicalInput1362 canonicalOutput1362 (by decide) (by decide)
    ⟨true, false, canonicalPermutation35, OAI.MUB6.Certificate.PairSemantics.permutation189⟩ (by decide +kernel) hH

def canonicalInput1363 : ExponentCode := ⟨5, 5, ![![-2, -2, 1, 1, 2], ![0, 0, -1, 0, 1], ![0, 2, 0, -1, -1], ![1, 0, -1, -1, 1], ![1, 0, 1, 1, -3]]⟩

def canonicalOutput1363 : ExponentCode := normalNode8496

theorem canonicalSound1363 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1363.moment H = canonicalOutput1363.moment H :=
  canonical_of_padded canonicalInput1363 canonicalOutput1363 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation179, canonicalPermutation40⟩ (by decide +kernel) hH

def canonicalInput1364 : ExponentCode := ⟨5, 5, ![![-2, -2, 1, 1, 2], ![0, 0, -1, 1, 0], ![0, 0, 1, 0, -1], ![0, 2, 0, -2, 0], ![2, 0, -1, 0, -1]]⟩

def canonicalOutput1364 : ExponentCode := normalNode10138

theorem canonicalSound1364 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1364.moment H = canonicalOutput1364.moment H :=
  canonical_of_padded canonicalInput1364 canonicalOutput1364 (by decide) (by decide)
    ⟨true, false, canonicalPermutation68, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput1365 : ExponentCode := ⟨5, 5, ![![-2, -2, 1, 1, 2], ![0, 0, -1, 1, 0], ![0, 1, -1, 0, 0], ![0, 1, 1, 1, -3], ![2, 0, 0, -3, 1]]⟩

def canonicalOutput1365 : ExponentCode := normalNode8756

theorem canonicalSound1365 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1365.moment H = canonicalOutput1365.moment H :=
  canonical_of_padded canonicalInput1365 canonicalOutput1365 (by decide) (by decide)
    ⟨true, false, canonicalPermutation27, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput1366 : ExponentCode := ⟨5, 5, ![![-2, -2, 1, 1, 2], ![0, 0, -1, 1, 0], ![0, 2, 0, -3, 1], ![1, 0, -1, 0, 0], ![1, 0, 1, 1, -3]]⟩

def canonicalOutput1366 : ExponentCode := normalNode8756

theorem canonicalSound1366 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1366.moment H = canonicalOutput1366.moment H :=
  canonical_of_padded canonicalInput1366 canonicalOutput1366 (by decide) (by decide)
    ⟨true, false, canonicalPermutation17, OAI.MUB6.Certificate.PairSemantics.permutation189⟩ (by decide +kernel) hH

def canonicalInput1367 : ExponentCode := ⟨5, 5, ![![-2, -2, 1, 1, 2], ![0, 0, -1, 1, 0], ![0, 2, 0, 1, -3], ![1, 0, -1, 0, 0], ![1, 0, 1, -3, 1]]⟩

def canonicalOutput1367 : ExponentCode := normalNode8579

theorem canonicalSound1367 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1367.moment H = canonicalOutput1367.moment H :=
  canonical_of_padded canonicalInput1367 canonicalOutput1367 (by decide) (by decide)
    ⟨true, false, canonicalPermutation77, canonicalPermutation40⟩ (by decide +kernel) hH

def canonicalInput1368 : ExponentCode := ⟨5, 5, ![![-2, -2, 1, 1, 2], ![0, 0, 0, 1, -1], ![0, 0, 1, -1, 0], ![0, 2, -1, 0, -1], ![2, 0, -1, -1, 0]]⟩

def canonicalOutput1368 : ExponentCode := normalNode10137

theorem canonicalSound1368 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1368.moment H = canonicalOutput1368.moment H :=
  canonical_of_padded canonicalInput1368 canonicalOutput1368 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput1369 : ExponentCode := ⟨5, 5, ![![-2, -2, 1, 1, 2], ![0, 0, 0, 1, -1], ![0, 0, 1, 0, -1], ![0, 2, -2, 0, 0], ![2, 0, 0, -2, 0]]⟩

def canonicalOutput1369 : ExponentCode := normalNode8433

theorem canonicalSound1369 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1369.moment H = canonicalOutput1369.moment H :=
  canonical_of_padded canonicalInput1369 canonicalOutput1369 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput1370 : ExponentCode := ⟨5, 5, ![![-2, -2, 1, 1, 2], ![0, 0, 1, -1, 0], ![0, 1, -2, 1, 0], ![0, 1, 0, -1, 0], ![2, 0, 0, 0, -2]]⟩

def canonicalOutput1370 : ExponentCode := normalNode8604

theorem canonicalSound1370 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1370.moment H = canonicalOutput1370.moment H :=
  canonical_of_padded canonicalInput1370 canonicalOutput1370 (by decide) (by decide)
    ⟨true, false, canonicalPermutation58, OAI.MUB6.Certificate.PairSemantics.permutation191⟩ (by decide +kernel) hH

def canonicalInput1371 : ExponentCode := ⟨5, 5, ![![-2, -2, 1, 1, 2], ![0, 0, 1, -1, 0], ![0, 1, -2, 1, 0], ![0, 1, 0, 0, -1], ![2, 0, 0, -1, -1]]⟩

def canonicalOutput1371 : ExponentCode := normalNode10029

theorem canonicalSound1371 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1371.moment H = canonicalOutput1371.moment H :=
  canonical_of_padded canonicalInput1371 canonicalOutput1371 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, OAI.MUB6.Certificate.PairSemantics.permutation191⟩ (by decide +kernel) hH

def canonicalInput1372 : ExponentCode := ⟨5, 5, ![![-2, -2, 1, 1, 2], ![0, 0, 1, -1, 0], ![0, 1, -1, 1, -1], ![0, 1, 0, -1, 0], ![2, 0, -1, 0, -1]]⟩

def canonicalOutput1372 : ExponentCode := normalNode8678

theorem canonicalSound1372 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1372.moment H = canonicalOutput1372.moment H :=
  canonical_of_padded canonicalInput1372 canonicalOutput1372 (by decide) (by decide)
    ⟨true, false, canonicalPermutation58, OAI.MUB6.Certificate.PairSemantics.permutation191⟩ (by decide +kernel) hH

def canonicalInput1373 : ExponentCode := ⟨5, 5, ![![-2, -2, 1, 1, 2], ![0, 0, 1, -1, 0], ![0, 1, 0, -1, 0], ![0, 1, 0, 1, -2], ![2, 0, -2, 0, 0]]⟩

def canonicalOutput1373 : ExponentCode := normalNode8730

theorem canonicalSound1373 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1373.moment H = canonicalOutput1373.moment H :=
  canonical_of_padded canonicalInput1373 canonicalOutput1373 (by decide) (by decide)
    ⟨true, false, canonicalPermutation58, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput1374 : ExponentCode := ⟨5, 5, ![![-2, -2, 1, 1, 2], ![0, 0, 1, -1, 0], ![0, 1, 0, -1, 0], ![1, 0, -1, 1, -1], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput1374 : ExponentCode := normalNode8660

theorem canonicalSound1374 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1374.moment H = canonicalOutput1374.moment H :=
  canonical_of_padded canonicalInput1374 canonicalOutput1374 (by decide) (by decide)
    ⟨true, false, canonicalPermutation58, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput1375 : ExponentCode := ⟨5, 5, ![![-2, -2, 1, 1, 2], ![0, 0, 1, -1, 0], ![0, 1, 0, -1, 0], ![1, 0, 0, 1, -2], ![1, 1, -2, 0, 0]]⟩

def canonicalOutput1375 : ExponentCode := normalNode8725

theorem canonicalSound1375 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1375.moment H = canonicalOutput1375.moment H :=
  canonical_of_padded canonicalInput1375 canonicalOutput1375 (by decide) (by decide)
    ⟨true, false, canonicalPermutation58, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput1376 : ExponentCode := ⟨5, 5, ![![-2, -2, 1, 1, 2], ![0, 0, 1, -1, 0], ![0, 1, 0, 1, -2], ![1, 0, 0, -1, 0], ![1, 1, -2, 0, 0]]⟩

def canonicalOutput1376 : ExponentCode := normalNode8725

theorem canonicalSound1376 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1376.moment H = canonicalOutput1376.moment H :=
  canonical_of_padded canonicalInput1376 canonicalOutput1376 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation196, OAI.MUB6.Certificate.PairSemantics.permutation191⟩ (by decide +kernel) hH

def canonicalInput1377 : ExponentCode := ⟨5, 5, ![![-2, -2, 1, 1, 2], ![0, 0, 1, -1, 0], ![0, 2, -2, 0, 0], ![1, 0, 0, -1, 0], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput1377 : ExponentCode := normalNode8730

theorem canonicalSound1377 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1377.moment H = canonicalOutput1377.moment H :=
  canonical_of_padded canonicalInput1377 canonicalOutput1377 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation196, OAI.MUB6.Certificate.PairSemantics.permutation189⟩ (by decide +kernel) hH

def canonicalInput1378 : ExponentCode := ⟨5, 5, ![![-2, -2, 1, 1, 2], ![0, 0, 1, 0, -1], ![0, 1, -2, 1, 0], ![0, 1, 0, 0, -1], ![2, 0, 0, -2, 0]]⟩

def canonicalOutput1378 : ExponentCode := normalNode8265

theorem canonicalSound1378 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1378.moment H = canonicalOutput1378.moment H :=
  canonical_of_padded canonicalInput1378 canonicalOutput1378 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, OAI.MUB6.Certificate.PairSemantics.permutation191⟩ (by decide +kernel) hH

def canonicalInput1379 : ExponentCode := ⟨5, 5, ![![-2, -2, 1, 1, 2], ![0, 0, 1, 0, -1], ![0, 1, -2, 1, 0], ![1, 0, 0, 0, -1], ![1, 1, 0, -2, 0]]⟩

def canonicalOutput1379 : ExponentCode := normalNode8250

theorem canonicalSound1379 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1379.moment H = canonicalOutput1379.moment H :=
  canonical_of_padded canonicalInput1379 canonicalOutput1379 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation201, OAI.MUB6.Certificate.PairSemantics.permutation191⟩ (by decide +kernel) hH

def canonicalInput1380 : ExponentCode := ⟨5, 5, ![![-2, -2, 1, 1, 2], ![0, 0, 1, 0, -1], ![0, 1, -1, 1, -1], ![0, 1, 0, 0, -1], ![2, 0, -1, -2, 1]]⟩

def canonicalOutput1380 : ExponentCode := normalNode7625

theorem canonicalSound1380 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1380.moment H = canonicalOutput1380.moment H :=
  canonical_of_padded canonicalInput1380 canonicalOutput1380 (by decide) (by decide)
    ⟨true, false, canonicalPermutation21, OAI.MUB6.Certificate.PairSemantics.permutation189⟩ (by decide +kernel) hH

def canonicalInput1381 : ExponentCode := ⟨5, 5, ![![-2, -2, 1, 1, 2], ![0, 0, 1, 0, -1], ![0, 1, -1, 1, -1], ![1, 0, -1, -2, 2], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput1381 : ExponentCode := normalNode6370

theorem canonicalSound1381 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1381.moment H = canonicalOutput1381.moment H :=
  canonical_of_padded canonicalInput1381 canonicalOutput1381 (by decide) (by decide)
    ⟨true, false, canonicalPermutation59, canonicalPermutation16⟩ (by decide +kernel) hH

def canonicalInput1382 : ExponentCode := ⟨5, 5, ![![-2, -2, 1, 1, 2], ![0, 0, 1, 0, -1], ![0, 1, 0, -2, 1], ![0, 1, 0, 0, -1], ![2, 0, -2, 1, -1]]⟩

def canonicalOutput1382 : ExponentCode := normalNode9169

theorem canonicalSound1382 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1382.moment H = canonicalOutput1382.moment H :=
  canonical_of_padded canonicalInput1382 canonicalOutput1382 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, OAI.MUB6.Certificate.PairSemantics.permutation189⟩ (by decide +kernel) hH

def canonicalInput1383 : ExponentCode := ⟨5, 5, ![![-2, -2, 1, 1, 2], ![0, 0, 1, 0, -1], ![0, 1, 0, -2, 1], ![0, 1, 0, 1, -2], ![2, 0, -2, 0, 0]]⟩

def canonicalOutput1383 : ExponentCode := normalNode6618

theorem canonicalSound1383 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1383.moment H = canonicalOutput1383.moment H :=
  canonical_of_padded canonicalInput1383 canonicalOutput1383 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation198, canonicalPermutation29⟩ (by decide +kernel) hH

def canonicalInput1384 : ExponentCode := ⟨5, 5, ![![-2, -2, 1, 1, 2], ![0, 0, 1, 0, -1], ![0, 1, 0, -2, 1], ![1, 0, 0, 0, -1], ![1, 1, -2, 1, -1]]⟩

def canonicalOutput1384 : ExponentCode := normalNode9173

theorem canonicalSound1384 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1384.moment H = canonicalOutput1384.moment H :=
  canonical_of_padded canonicalInput1384 canonicalOutput1384 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation201, OAI.MUB6.Certificate.PairSemantics.permutation189⟩ (by decide +kernel) hH

def canonicalInput1385 : ExponentCode := ⟨5, 5, ![![-2, -2, 1, 1, 2], ![0, 0, 1, 0, -1], ![0, 1, 0, -2, 1], ![1, 0, 0, 1, -2], ![1, 1, -2, 0, 0]]⟩

def canonicalOutput1385 : ExponentCode := normalNode6607

theorem canonicalSound1385 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1385.moment H = canonicalOutput1385.moment H :=
  canonical_of_padded canonicalInput1385 canonicalOutput1385 (by decide) (by decide)
    ⟨true, false, canonicalPermutation71, canonicalPermutation29⟩ (by decide +kernel) hH

def canonicalInput1386 : ExponentCode := ⟨5, 5, ![![-2, -2, 1, 1, 2], ![0, 0, 1, 0, -1], ![0, 1, 0, 0, -1], ![1, 0, -1, -2, 2], ![1, 1, -1, 1, -2]]⟩

def canonicalOutput1386 : ExponentCode := normalNode7250

theorem canonicalSound1386 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1386.moment H = canonicalOutput1386.moment H :=
  canonical_of_padded canonicalInput1386 canonicalOutput1386 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput1387 : ExponentCode := ⟨5, 5, ![![-2, -2, 1, 1, 2], ![0, 0, 1, 0, -1], ![0, 1, 0, 0, -1], ![1, 0, 0, -2, 1], ![1, 1, -2, 1, -1]]⟩

def canonicalOutput1387 : ExponentCode := normalNode9173

theorem canonicalSound1387 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1387.moment H = canonicalOutput1387.moment H :=
  canonical_of_padded canonicalInput1387 canonicalOutput1387 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput1388 : ExponentCode := ⟨5, 5, ![![-2, -2, 1, 1, 2], ![0, 0, 1, 0, -1], ![0, 1, 0, 1, -2], ![1, 0, 0, -2, 1], ![1, 1, -2, 0, 0]]⟩

def canonicalOutput1388 : ExponentCode := normalNode6607

theorem canonicalSound1388 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1388.moment H = canonicalOutput1388.moment H :=
  canonical_of_padded canonicalInput1388 canonicalOutput1388 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation198, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput1389 : ExponentCode := ⟨5, 5, ![![-2, -2, 1, 1, 2], ![0, 0, 1, 0, -1], ![0, 2, -2, 0, 0], ![1, 0, 0, -2, 1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput1389 : ExponentCode := normalNode6618

theorem canonicalSound1389 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1389.moment H = canonicalOutput1389.moment H :=
  canonical_of_padded canonicalInput1389 canonicalOutput1389 (by decide) (by decide)
    ⟨true, false, canonicalPermutation71, canonicalPermutation16⟩ (by decide +kernel) hH

def canonicalInput1390 : ExponentCode := ⟨5, 5, ![![-2, -2, 1, 1, 2], ![0, 0, 1, 0, -1], ![0, 2, -2, 1, -1], ![1, 0, 0, -2, 1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput1390 : ExponentCode := normalNode9169

theorem canonicalSound1390 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1390.moment H = canonicalOutput1390.moment H :=
  canonical_of_padded canonicalInput1390 canonicalOutput1390 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation201, canonicalPermutation13⟩ (by decide +kernel) hH

def canonicalInput1391 : ExponentCode := ⟨5, 5, ![![-2, -2, 1, 1, 2], ![0, 0, 1, 0, -1], ![0, 2, -1, 0, -1], ![1, 0, -1, -2, 2], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput1391 : ExponentCode := normalNode6372

theorem canonicalSound1391 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1391.moment H = canonicalOutput1391.moment H :=
  canonical_of_padded canonicalInput1391 canonicalOutput1391 (by decide) (by decide)
    ⟨true, false, canonicalPermutation71, canonicalPermutation16⟩ (by decide +kernel) hH

def canonicalInput1392 : ExponentCode := ⟨5, 5, ![![-2, -2, 1, 1, 2], ![0, 0, 1, 0, -1], ![0, 2, -1, 1, -2], ![1, 0, -1, -2, 2], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput1392 : ExponentCode := normalNode7254

theorem canonicalSound1392 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1392.moment H = canonicalOutput1392.moment H :=
  canonical_of_padded canonicalInput1392 canonicalOutput1392 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation201, OAI.MUB6.Certificate.PairSemantics.permutation199⟩ (by decide +kernel) hH

def canonicalInput1393 : ExponentCode := ⟨5, 5, ![![-2, -2, 1, 1, 2], ![0, 0, 1, 1, -2], ![0, 1, -1, 0, 0], ![0, 1, 0, -1, 0], ![2, 0, -1, -1, 0]]⟩

def canonicalOutput1393 : ExponentCode := normalNode8222

theorem canonicalSound1393 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1393.moment H = canonicalOutput1393.moment H :=
  canonical_of_padded canonicalInput1393 canonicalOutput1393 (by decide) (by decide)
    ⟨true, true, canonicalPermutation39, canonicalPermutation19⟩ (by decide +kernel) hH

def canonicalInput1394 : ExponentCode := ⟨5, 5, ![![-2, -2, 1, 1, 2], ![0, 0, 1, 1, -2], ![0, 1, 0, -2, 1], ![0, 1, 0, 0, -1], ![2, 0, -2, 0, 0]]⟩

def canonicalOutput1394 : ExponentCode := normalNode6613

theorem canonicalSound1394 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1394.moment H = canonicalOutput1394.moment H :=
  canonical_of_padded canonicalInput1394 canonicalOutput1394 (by decide) (by decide)
    ⟨true, false, canonicalPermutation14, OAI.MUB6.Certificate.PairSemantics.permutation191⟩ (by decide +kernel) hH

def canonicalInput1395 : ExponentCode := ⟨5, 5, ![![-2, -2, 1, 1, 2], ![0, 0, 1, 1, -2], ![0, 1, 0, -2, 1], ![1, 0, 0, 0, -1], ![1, 1, -2, 0, 0]]⟩

def canonicalOutput1395 : ExponentCode := normalNode6603

theorem canonicalSound1395 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1395.moment H = canonicalOutput1395.moment H :=
  canonical_of_padded canonicalInput1395 canonicalOutput1395 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation199, OAI.MUB6.Certificate.PairSemantics.permutation191⟩ (by decide +kernel) hH

def canonicalInput1396 : ExponentCode := ⟨5, 5, ![![-2, -2, 1, 1, 2], ![0, 0, 1, 1, -2], ![0, 1, 0, 0, -1], ![1, 0, 0, -2, 1], ![1, 1, -2, 0, 0]]⟩

def canonicalOutput1396 : ExponentCode := normalNode6603

theorem canonicalSound1396 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1396.moment H = canonicalOutput1396.moment H :=
  canonical_of_padded canonicalInput1396 canonicalOutput1396 (by decide) (by decide)
    ⟨true, false, canonicalPermutation14, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput1397 : ExponentCode := ⟨5, 5, ![![-2, -2, 1, 1, 2], ![0, 0, 1, 1, -2], ![0, 2, -2, 0, 0], ![1, 0, 0, -2, 1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput1397 : ExponentCode := normalNode6613

theorem canonicalSound1397 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1397.moment H = canonicalOutput1397.moment H :=
  canonical_of_padded canonicalInput1397 canonicalOutput1397 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation199, OAI.MUB6.Certificate.PairSemantics.permutation199⟩ (by decide +kernel) hH

def canonicalInput1398 : ExponentCode := ⟨5, 5, ![![-2, -2, 1, 1, 2], ![0, 0, 1, 1, -2], ![0, 2, -2, 0, 0], ![1, 0, 0, -1, 0], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput1398 : ExponentCode := normalNode8220

theorem canonicalSound1398 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1398.moment H = canonicalOutput1398.moment H :=
  canonical_of_padded canonicalInput1398 canonicalOutput1398 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation155, canonicalPermutation52⟩ (by decide +kernel) hH

def canonicalInput1399 : ExponentCode := ⟨5, 5, ![![-2, -2, 1, 1, 2], ![0, 0, 1, 1, -2], ![0, 2, -1, 0, -1], ![1, 0, -1, -2, 2], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput1399 : ExponentCode := normalNode6371

theorem canonicalSound1399 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1399.moment H = canonicalOutput1399.moment H :=
  canonical_of_padded canonicalInput1399 canonicalOutput1399 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation199, OAI.MUB6.Certificate.PairSemantics.permutation199⟩ (by decide +kernel) hH

def canonicalInput1400 : ExponentCode := ⟨5, 5, ![![-2, -2, 1, 1, 2], ![0, 1, -2, 0, 1], ![0, 1, 0, 0, -1], ![1, 0, 0, 1, -2], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput1400 : ExponentCode := normalNode6584

theorem canonicalSound1400 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1400.moment H = canonicalOutput1400.moment H :=
  canonical_of_padded canonicalInput1400 canonicalOutput1400 (by decide) (by decide)
    ⟨true, false, canonicalPermutation30, canonicalPermutation19⟩ (by decide +kernel) hH

def canonicalInput1401 : ExponentCode := ⟨5, 5, ![![-2, -2, 1, 1, 2], ![0, 1, -2, 0, 1], ![0, 1, 0, 1, -2], ![1, 0, 0, 0, -1], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput1401 : ExponentCode := normalNode6583

theorem canonicalSound1401 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1401.moment H = canonicalOutput1401.moment H :=
  canonical_of_padded canonicalInput1401 canonicalOutput1401 (by decide) (by decide)
    ⟨true, false, canonicalPermutation20, canonicalPermutation23⟩ (by decide +kernel) hH

def canonicalInput1402 : ExponentCode := ⟨5, 5, ![![-2, -2, 1, 1, 2], ![0, 1, -2, 0, 1], ![0, 1, 1, 1, -3], ![1, 0, 0, -2, 1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput1402 : ExponentCode := normalNode8317

theorem canonicalSound1402 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1402.moment H = canonicalOutput1402.moment H :=
  canonical_of_padded canonicalInput1402 canonicalOutput1402 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation201⟩ (by decide +kernel) hH

def canonicalInput1403 : ExponentCode := ⟨5, 5, ![![-2, -2, 1, 1, 2], ![0, 1, -2, 1, 0], ![0, 1, 0, -1, 0], ![1, 0, 0, -1, 0], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput1403 : ExponentCode := normalNode8585

theorem canonicalSound1403 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1403.moment H = canonicalOutput1403.moment H :=
  canonical_of_padded canonicalInput1403 canonicalOutput1403 (by decide) (by decide)
    ⟨true, false, canonicalPermutation52, canonicalPermutation23⟩ (by decide +kernel) hH

def canonicalInput1404 : ExponentCode := ⟨5, 5, ![![-2, -2, 1, 1, 2], ![0, 1, -2, 1, 0], ![0, 1, 0, 0, -1], ![1, 0, 0, 0, -1], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput1404 : ExponentCode := normalNode8242

theorem canonicalSound1404 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1404.moment H = canonicalOutput1404.moment H :=
  canonical_of_padded canonicalInput1404 canonicalOutput1404 (by decide) (by decide)
    ⟨true, false, canonicalPermutation30, canonicalPermutation35⟩ (by decide +kernel) hH

def canonicalInput1405 : ExponentCode := ⟨5, 5, ![![-2, -2, 1, 1, 2], ![0, 1, -2, 1, 0], ![0, 1, 1, -2, 0], ![1, 0, 0, 0, -1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput1405 : ExponentCode := normalNode8238

theorem canonicalSound1405 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1405.moment H = canonicalOutput1405.moment H :=
  canonical_of_padded canonicalInput1405 canonicalOutput1405 (by decide) (by decide)
    ⟨true, false, canonicalPermutation20, OAI.MUB6.Certificate.PairSemantics.permutation196⟩ (by decide +kernel) hH

def canonicalInput1406 : ExponentCode := ⟨5, 5, ![![-2, -2, 1, 1, 2], ![0, 1, -2, 1, 0], ![0, 1, 1, 0, -2], ![1, 0, 0, -2, 1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput1406 : ExponentCode := normalNode6584

theorem canonicalSound1406 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1406.moment H = canonicalOutput1406.moment H :=
  canonical_of_padded canonicalInput1406 canonicalOutput1406 (by decide) (by decide)
    ⟨true, false, canonicalPermutation56, canonicalPermutation33⟩ (by decide +kernel) hH

def canonicalInput1407 : ExponentCode := ⟨3, 5, ![![-2, -2, 1, 1, 2], ![0, 1, -2, 2, -1], ![2, 1, 1, -3, -1]]⟩

def canonicalOutput1407 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code681

theorem canonicalSound1407 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1407.moment H = canonicalOutput1407.moment H :=
  canonical_of_padded canonicalInput1407 canonicalOutput1407 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation187, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

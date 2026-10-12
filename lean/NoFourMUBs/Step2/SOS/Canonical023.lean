import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes02
import NoFourMUBs.Step2.SOS.MomentCodes06
import NoFourMUBs.Step2.SOS.MomentCodes07
import NoFourMUBs.Step2.SOS.MomentCodes14
import NoFourMUBs.Step2.SOS.MomentCodes17
import NoFourMUBs.Step2.SOS.MomentCodes19
import NoFourMUBs.Step2.SOS.NormalizationNodes002
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes018
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes10
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes21
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes23
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes6
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput1472 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, -1, 2, -1], ![0, 1, -2, 1], ![1, 1, 0, -2], ![1, 1, -1, -1]]⟩

def canonicalOutput1472 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code146

theorem canonicalSound1472 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1472.moment H = canonicalOutput1472.moment H :=
  canonical_of_padded canonicalInput1472 canonicalOutput1472 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1473 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, -1, 2, -1], ![0, 1, -2, 1], ![2, 2, -1, -3]]⟩

def canonicalOutput1473 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1268

theorem canonicalSound1473 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1473.moment H = canonicalOutput1473.moment H :=
  canonical_of_padded canonicalInput1473 canonicalOutput1473 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput1474 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, -1, 2, -1], ![0, 1, -1, 0], ![2, 2, -2, -2]]⟩

def canonicalOutput1474 : ExponentCode := normalNode11052

theorem canonicalSound1474 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1474.moment H = canonicalOutput1474.moment H :=
  canonical_of_padded canonicalInput1474 canonicalOutput1474 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput1475 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, -1, 2, -1], ![0, 1, 0, -1], ![1, 1, -1, -1], ![1, 1, -2, 0]]⟩

def canonicalOutput1475 : ExponentCode := normalNode553

theorem canonicalSound1475 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1475.moment H = canonicalOutput1475.moment H :=
  canonical_of_padded canonicalInput1475 canonicalOutput1475 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1476 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, -1, 2, -1], ![0, 1, 0, -1], ![2, 2, -3, -1]]⟩

def canonicalOutput1476 : ExponentCode := normalNode7975

theorem canonicalSound1476 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1476.moment H = canonicalOutput1476.moment H :=
  canonical_of_padded canonicalInput1476 canonicalOutput1476 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput1477 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, -1, 2, -1], ![0, 2, -2, 0], ![0, 1, -1, 0], ![2, 0, 0, -2]]⟩

def canonicalOutput1477 : ExponentCode := normalNode539

theorem canonicalSound1477 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1477.moment H = canonicalOutput1477.moment H :=
  canonical_of_padded canonicalInput1477 canonicalOutput1477 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1478 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, -1, 2, -1], ![0, 2, -2, 0], ![1, 1, -1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput1478 : ExponentCode := normalNode555

theorem canonicalSound1478 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1478.moment H = canonicalOutput1478.moment H :=
  canonical_of_padded canonicalInput1478 canonicalOutput1478 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1479 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, -1, 2, -1], ![0, 2, -2, 0], ![2, 1, -1, -2]]⟩

def canonicalOutput1479 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1125

theorem canonicalSound1479 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1479.moment H = canonicalOutput1479.moment H :=
  canonical_of_padded canonicalInput1479 canonicalOutput1479 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput1480 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, -1, 2, -1], ![0, 2, -1, -1], ![1, 1, -2, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput1480 : ExponentCode := normalNode557

theorem canonicalSound1480 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1480.moment H = canonicalOutput1480.moment H :=
  canonical_of_padded canonicalInput1480 canonicalOutput1480 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1481 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, -1, 2, -1], ![0, 2, -1, -1], ![1, 1, -1, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput1481 : ExponentCode := normalNode556

theorem canonicalSound1481 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1481.moment H = canonicalOutput1481.moment H :=
  canonical_of_padded canonicalInput1481 canonicalOutput1481 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1482 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, -1, 2, -1], ![0, 2, -1, -1], ![2, 1, -2, -1]]⟩

def canonicalOutput1482 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node682⟩

theorem canonicalSound1482 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1482.moment H = canonicalOutput1482.moment H :=
  canonical_of_padded canonicalInput1482 canonicalOutput1482 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput1483 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, -1, 2, -1], ![0, 2, 0, -2], ![2, 1, -3, 0]]⟩

def canonicalOutput1483 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node480⟩

theorem canonicalSound1483 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1483.moment H = canonicalOutput1483.moment H :=
  canonical_of_padded canonicalInput1483 canonicalOutput1483 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput1484 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, -1, 2, -1], ![0, 3, -3, 0], ![2, 0, 0, -2]]⟩

def canonicalOutput1484 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code436

theorem canonicalSound1484 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1484.moment H = canonicalOutput1484.moment H :=
  canonical_of_padded canonicalInput1484 canonicalOutput1484 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput1485 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, -1, 2, -1], ![0, 3, -2, -1], ![2, 0, -1, -1]]⟩

def canonicalOutput1485 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code913

theorem canonicalSound1485 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1485.moment H = canonicalOutput1485.moment H :=
  canonical_of_padded canonicalInput1485 canonicalOutput1485 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation151, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput1486 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, -1, 2, -1], ![0, 3, -1, -2], ![2, 0, -2, 0]]⟩

def canonicalOutput1486 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code912

theorem canonicalSound1486 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1486.moment H = canonicalOutput1486.moment H :=
  canonical_of_padded canonicalInput1486 canonicalOutput1486 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation152, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput1487 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, -1, 2, -1], ![1, 0, -2, 1], ![1, 3, -1, -3]]⟩

def canonicalOutput1487 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1263

theorem canonicalSound1487 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1487.moment H = canonicalOutput1487.moment H :=
  canonical_of_padded canonicalInput1487 canonicalOutput1487 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput1488 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, -1, 2, -1], ![1, 0, -1, 0], ![1, 3, -2, -2]]⟩

def canonicalOutput1488 : ExponentCode := normalNode10355

theorem canonicalSound1488 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1488.moment H = canonicalOutput1488.moment H :=
  canonical_of_padded canonicalInput1488 canonicalOutput1488 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput1489 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, -1, 2, -1], ![1, 0, 0, -1], ![1, 3, -3, -1]]⟩

def canonicalOutput1489 : ExponentCode := normalNode7917

theorem canonicalSound1489 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1489.moment H = canonicalOutput1489.moment H :=
  canonical_of_padded canonicalInput1489 canonicalOutput1489 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput1490 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, -1, 2, -1], ![1, 1, -2, 0], ![1, 2, -1, -2]]⟩

def canonicalOutput1490 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1261

theorem canonicalSound1490 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1490.moment H = canonicalOutput1490.moment H :=
  canonical_of_padded canonicalInput1490 canonicalOutput1490 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput1491 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, -1, 2, -1], ![1, 1, -1, -1], ![1, 2, -2, -1]]⟩

def canonicalOutput1491 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1242

theorem canonicalSound1491 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1491.moment H = canonicalOutput1491.moment H :=
  canonical_of_padded canonicalInput1491 canonicalOutput1491 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput1492 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, -1, 2, -1], ![1, 1, 0, -2], ![1, 2, -3, 0]]⟩

def canonicalOutput1492 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code503

theorem canonicalSound1492 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1492.moment H = canonicalOutput1492.moment H :=
  canonical_of_padded canonicalInput1492 canonicalOutput1492 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput1493 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, -1, 2, -1], ![1, 2, -3, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput1493 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code503

theorem canonicalSound1493 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1493.moment H = canonicalOutput1493.moment H :=
  canonical_of_padded canonicalInput1493 canonicalOutput1493 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput1494 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, -1, 2, -1], ![1, 2, -2, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput1494 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1242

theorem canonicalSound1494 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1494.moment H = canonicalOutput1494.moment H :=
  canonical_of_padded canonicalInput1494 canonicalOutput1494 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput1495 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, -1, 2, -1], ![1, 2, -1, -2], ![1, 1, -2, 0]]⟩

def canonicalOutput1495 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1261

theorem canonicalSound1495 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1495.moment H = canonicalOutput1495.moment H :=
  canonical_of_padded canonicalInput1495 canonicalOutput1495 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput1496 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, -1, 2, -1], ![1, 3, -3, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput1496 : ExponentCode := normalNode7917

theorem canonicalSound1496 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1496.moment H = canonicalOutput1496.moment H :=
  canonical_of_padded canonicalInput1496 canonicalOutput1496 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput1497 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, -1, 2, -1], ![1, 3, -2, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput1497 : ExponentCode := normalNode10355

theorem canonicalSound1497 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1497.moment H = canonicalOutput1497.moment H :=
  canonical_of_padded canonicalInput1497 canonicalOutput1497 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation152, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput1498 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, -1, 2, -1], ![1, 3, -1, -3], ![1, 0, -2, 1]]⟩

def canonicalOutput1498 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1263

theorem canonicalSound1498 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1498.moment H = canonicalOutput1498.moment H :=
  canonical_of_padded canonicalInput1498 canonicalOutput1498 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput1499 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 0, -2, 2], ![0, 1, -1, 0], ![2, 1, 2, -5]]⟩

def canonicalOutput1499 : ExponentCode := normalNode6980

theorem canonicalSound1499 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1499.moment H = canonicalOutput1499.moment H :=
  canonical_of_padded canonicalInput1499 canonicalOutput1499 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput1500 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, 0, -2, 2], ![0, 1, 0, -1], ![1, 1, -1, -1], ![1, 0, 2, -3]]⟩

def canonicalOutput1500 : ExponentCode := normalNode581

theorem canonicalSound1500 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1500.moment H = canonicalOutput1500.moment H :=
  canonical_of_padded canonicalInput1500 canonicalOutput1500 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1501 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, 0, -2, 2], ![0, 1, 1, -2], ![1, 0, 0, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput1501 : ExponentCode := normalNode580

theorem canonicalSound1501 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1501.moment H = canonicalOutput1501.moment H :=
  canonical_of_padded canonicalInput1501 canonicalOutput1501 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput1502 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, 0, -2, 2], ![0, 1, 2, -3], ![1, 0, 0, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput1502 : ExponentCode := normalNode581

theorem canonicalSound1502 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1502.moment H = canonicalOutput1502.moment H :=
  canonical_of_padded canonicalInput1502 canonicalOutput1502 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput1503 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, 0, -2, 2], ![0, 1, 2, -3], ![1, 1, -1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput1503 : ExponentCode := normalNode581

theorem canonicalSound1503 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1503.moment H = canonicalOutput1503.moment H :=
  canonical_of_padded canonicalInput1503 canonicalOutput1503 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput1504 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, 0, -2, 2], ![0, 2, -1, -1], ![1, 0, 0, -1], ![1, 0, 2, -3]]⟩

def canonicalOutput1504 : ExponentCode := normalNode578

theorem canonicalSound1504 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1504.moment H = canonicalOutput1504.moment H :=
  canonical_of_padded canonicalInput1504 canonicalOutput1504 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput1505 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, 0, -2, 2], ![0, 2, 1, -3], ![1, 0, 0, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput1505 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1489⟩

theorem canonicalSound1505 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1505.moment H = canonicalOutput1505.moment H :=
  canonical_of_padded canonicalInput1505 canonicalOutput1505 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput1506 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 0, -2, 2], ![0, 2, 2, -4], ![2, 0, -1, -1]]⟩

def canonicalOutput1506 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code155

theorem canonicalSound1506 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1506.moment H = canonicalOutput1506.moment H :=
  canonical_of_padded canonicalInput1506 canonicalOutput1506 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput1507 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 0, -2, 2], ![1, 0, 0, -1], ![1, 2, 1, -4]]⟩

def canonicalOutput1507 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1254⟩

theorem canonicalSound1507 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1507.moment H = canonicalOutput1507.moment H :=
  canonical_of_padded canonicalInput1507 canonicalOutput1507 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput1508 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 0, -2, 2], ![1, 0, 1, -2], ![1, 2, 0, -3]]⟩

def canonicalOutput1508 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node405⟩

theorem canonicalSound1508 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1508.moment H = canonicalOutput1508.moment H :=
  canonical_of_padded canonicalInput1508 canonicalOutput1508 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput1509 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 0, -2, 2], ![1, 0, 2, -3], ![1, 2, -1, -2]]⟩

def canonicalOutput1509 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code154

theorem canonicalSound1509 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1509.moment H = canonicalOutput1509.moment H :=
  canonical_of_padded canonicalInput1509 canonicalOutput1509 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput1510 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 0, -2, 2], ![1, 1, 1, -3], ![1, 1, 0, -2]]⟩

def canonicalOutput1510 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code158

theorem canonicalSound1510 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1510.moment H = canonicalOutput1510.moment H :=
  canonical_of_padded canonicalInput1510 canonicalOutput1510 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1511 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 0, -2, 2], ![1, 1, 2, -4], ![1, 1, -1, -1]]⟩

def canonicalOutput1511 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code157

theorem canonicalSound1511 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1511.moment H = canonicalOutput1511.moment H :=
  canonical_of_padded canonicalInput1511 canonicalOutput1511 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1512 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 1, -1, 0], ![2, 1, 1, -4]]⟩

def canonicalOutput1512 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1108⟩

theorem canonicalSound1512 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1512.moment H = canonicalOutput1512.moment H :=
  canonical_of_padded canonicalInput1512 canonicalOutput1512 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, canonicalPermutation32⟩ (by decide +kernel) hH

def canonicalInput1513 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, 0, -1, 1], ![0, 0, 0, 0], ![1, 0, -1, 0], ![1, 2, 1, -4]]⟩

def canonicalOutput1513 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1108⟩

theorem canonicalSound1513 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1513.moment H = canonicalOutput1513.moment H :=
  canonical_of_padded canonicalInput1513 canonicalOutput1513 (by decide) (by decide)
    ⟨true, false, canonicalPermutation6, canonicalPermutation32⟩ (by decide +kernel) hH

def canonicalInput1514 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 2, 0, -2], ![2, 0, -1, -1]]⟩

def canonicalOutput1514 : ExponentCode := normalNode602

theorem canonicalSound1514 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1514.moment H = canonicalOutput1514.moment H :=
  canonical_of_padded canonicalInput1514 canonicalOutput1514 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput1515 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, 0, -1, 1], ![0, 0, 1, -1], ![1, 0, -1, 0], ![1, 2, 0, -3]]⟩

def canonicalOutput1515 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1492⟩

theorem canonicalSound1515 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1515.moment H = canonicalOutput1515.moment H :=
  canonical_of_padded canonicalInput1515 canonicalOutput1515 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput1516 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, 0, -1, 1], ![0, 0, 1, -1], ![1, 0, 1, -2], ![1, 2, -2, -1]]⟩

def canonicalOutput1516 : ExponentCode := normalNode600

theorem canonicalSound1516 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1516.moment H = canonicalOutput1516.moment H :=
  canonical_of_padded canonicalInput1516 canonicalOutput1516 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput1517 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, 0, -1, 1], ![0, 0, 2, -2], ![1, 0, -2, 1], ![1, 2, 0, -3]]⟩

def canonicalOutput1517 : ExponentCode := normalNode604

theorem canonicalSound1517 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1517.moment H = canonicalOutput1517.moment H :=
  canonical_of_padded canonicalInput1517 canonicalOutput1517 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput1518 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 0, 0, 0], ![2, 1, 1, -4]]⟩

def canonicalOutput1518 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1108⟩

theorem canonicalSound1518 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1518.moment H = canonicalOutput1518.moment H :=
  canonical_of_padded canonicalInput1518 canonicalOutput1518 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation188⟩ (by decide +kernel) hH

def canonicalInput1519 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 2, 0, -2], ![2, -1, 1, -2]]⟩

def canonicalOutput1519 : ExponentCode := normalNode2602

theorem canonicalSound1519 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1519.moment H = canonicalOutput1519.moment H :=
  canonical_of_padded canonicalInput1519 canonicalOutput1519 (by decide) (by decide)
    ⟨false, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput1520 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 2, 1, -4]]⟩

def canonicalOutput1520 : ExponentCode := normalNode4826

theorem canonicalSound1520 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1520.moment H = canonicalOutput1520.moment H :=
  canonical_of_padded canonicalInput1520 canonicalOutput1520 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput1521 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 0, -1, 1], ![0, 1, -1, 0], ![2, 1, 1, -4]]⟩

def canonicalOutput1521 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1108⟩

theorem canonicalSound1521 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1521.moment H = canonicalOutput1521.moment H :=
  canonical_of_padded canonicalInput1521 canonicalOutput1521 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput1522 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, -1, 0], ![2, 0, 1, -3]]⟩

def canonicalOutput1522 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1495⟩

theorem canonicalSound1522 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1522.moment H = canonicalOutput1522.moment H :=
  canonical_of_padded canonicalInput1522 canonicalOutput1522 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1523 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 2, -1, -1], ![2, -1, 1, -2]]⟩

def canonicalOutput1523 : ExponentCode := normalNode2673

theorem canonicalSound1523 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1523.moment H = canonicalOutput1523.moment H :=
  canonical_of_padded canonicalInput1523 canonicalOutput1523 (by decide) (by decide)
    ⟨false, true, canonicalPermutation20, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput1524 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput1524 : ExponentCode := normalNode10724

theorem canonicalSound1524 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1524.moment H = canonicalOutput1524.moment H :=
  canonical_of_padded canonicalInput1524 canonicalOutput1524 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation172, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput1525 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, 0, -1, 1], ![0, 1, 1, -2], ![1, 0, -1, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput1525 : ExponentCode := normalNode623

theorem canonicalSound1525 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1525.moment H = canonicalOutput1525.moment H :=
  canonical_of_padded canonicalInput1525 canonicalOutput1525 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput1526 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 0, -1, 1], ![0, 1, 2, -3], ![2, 1, -2, -1]]⟩

def canonicalOutput1526 : ExponentCode := normalNode7128

theorem canonicalSound1526 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1526.moment H = canonicalOutput1526.moment H :=
  canonical_of_padded canonicalInput1526 canonicalOutput1526 (by decide) (by decide)
    ⟨true, false, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput1527 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, 0, -1, 1], ![0, 3, 1, -4], ![1, -1, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput1527 : ExponentCode := normalNode4861

theorem canonicalSound1527 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1527.moment H = canonicalOutput1527.moment H :=
  canonical_of_padded canonicalInput1527 canonicalOutput1527 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput1528 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, 0, -1, 1], ![0, 3, 1, -4], ![1, 0, -1, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput1528 : ExponentCode := normalNode4861

theorem canonicalSound1528 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1528.moment H = canonicalOutput1528.moment H :=
  canonical_of_padded canonicalInput1528 canonicalOutput1528 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput1529 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 0, -1, 1], ![1, 0, 1, -2], ![1, 2, -1, -2]]⟩

def canonicalOutput1529 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1351⟩

theorem canonicalSound1529 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1529.moment H = canonicalOutput1529.moment H :=
  canonical_of_padded canonicalInput1529 canonicalOutput1529 (by decide) (by decide)
    ⟨true, false, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput1530 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 0, -1, 1], ![1, 0, 2, -3], ![1, 2, -2, -1]]⟩

def canonicalOutput1530 : ExponentCode := normalNode7128

theorem canonicalSound1530 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1530.moment H = canonicalOutput1530.moment H :=
  canonical_of_padded canonicalInput1530 canonicalOutput1530 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput1531 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 0, -1, 1], ![1, 1, -2, 0], ![1, 1, 2, -4]]⟩

def canonicalOutput1531 : ExponentCode := normalNode7069

theorem canonicalSound1531 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1531.moment H = canonicalOutput1531.moment H :=
  canonical_of_padded canonicalInput1531 canonicalOutput1531 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput1532 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 0, -1, 1], ![1, 1, 0, -2], ![1, 1, 0, -2]]⟩

def canonicalOutput1532 : ExponentCode := normalNode10739

theorem canonicalSound1532 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1532.moment H = canonicalOutput1532.moment H :=
  canonical_of_padded canonicalInput1532 canonicalOutput1532 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput1533 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, 0, 0, 0], ![0, 0, 1, -1], ![0, 1, -2, 1], ![2, 1, 0, -3]]⟩

def canonicalOutput1533 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1329⟩

theorem canonicalSound1533 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1533.moment H = canonicalOutput1533.moment H :=
  canonical_of_padded canonicalInput1533 canonicalOutput1533 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput1534 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, 0, 0, 0], ![0, 0, 1, -1], ![0, 1, -1, 0], ![2, 1, -1, -2]]⟩

def canonicalOutput1534 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1222⟩

theorem canonicalSound1534 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1534.moment H = canonicalOutput1534.moment H :=
  canonical_of_padded canonicalInput1534 canonicalOutput1534 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput1535 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, 0, 0, 0], ![0, 0, 1, -1], ![0, 1, 0, -1], ![2, 1, -2, -1]]⟩

def canonicalOutput1535 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node973⟩

theorem canonicalSound1535 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1535.moment H = canonicalOutput1535.moment H :=
  canonical_of_padded canonicalInput1535 canonicalOutput1535 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, canonicalPermutation40⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

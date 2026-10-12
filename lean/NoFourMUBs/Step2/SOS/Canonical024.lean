import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes002
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes019
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes23
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes30
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes34
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput1536 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, 0, 0, 0], ![0, 0, 1, -1], ![0, 1, 1, -2], ![2, 1, -3, 0]]⟩

def canonicalOutput1536 : ExponentCode := normalNode6783

theorem canonicalSound1536 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1536.moment H = canonicalOutput1536.moment H :=
  canonical_of_padded canonicalInput1536 canonicalOutput1536 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput1537 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, 0, 0, 0], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 3, -2, -2]]⟩

def canonicalOutput1537 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1213⟩

theorem canonicalSound1537 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1537.moment H = canonicalOutput1537.moment H :=
  canonical_of_padded canonicalInput1537 canonicalOutput1537 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput1538 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, 0, 0, 0], ![0, 0, 2, -2], ![0, 1, 0, -1], ![2, 1, -3, 0]]⟩

def canonicalOutput1538 : ExponentCode := normalNode6784

theorem canonicalSound1538 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1538.moment H = canonicalOutput1538.moment H :=
  canonical_of_padded canonicalInput1538 canonicalOutput1538 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, canonicalPermutation40⟩ (by decide +kernel) hH

def canonicalInput1539 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, 0, 0, 0], ![0, 1, -2, 1], ![0, 1, 0, -1], ![2, 0, 1, -3]]⟩

def canonicalOutput1539 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1035⟩

theorem canonicalSound1539 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1539.moment H = canonicalOutput1539.moment H :=
  canonical_of_padded canonicalInput1539 canonicalOutput1539 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, canonicalPermutation40⟩ (by decide +kernel) hH

def canonicalInput1540 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, 0, 0, 0], ![0, 1, -2, 1], ![1, 0, 0, -1], ![1, 1, 1, -3]]⟩

def canonicalOutput1540 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1239⟩

theorem canonicalSound1540 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1540.moment H = canonicalOutput1540.moment H :=
  canonical_of_padded canonicalInput1540 canonicalOutput1540 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation151, canonicalPermutation40⟩ (by decide +kernel) hH

def canonicalInput1541 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, 0, 0, 0], ![0, 1, -1, 0], ![0, 1, -1, 0], ![2, 0, 1, -3]]⟩

def canonicalOutput1541 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1028⟩

theorem canonicalSound1541 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1541.moment H = canonicalOutput1541.moment H :=
  canonical_of_padded canonicalInput1541 canonicalOutput1541 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput1542 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, 0, 0, 0], ![0, 1, -1, 0], ![0, 1, 1, -2], ![2, 0, -1, -1]]⟩

def canonicalOutput1542 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1036⟩

theorem canonicalSound1542 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1542.moment H = canonicalOutput1542.moment H :=
  canonical_of_padded canonicalInput1542 canonicalOutput1542 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput1543 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, 0, 0, 0], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput1543 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1104⟩

theorem canonicalSound1543 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1543.moment H = canonicalOutput1543.moment H :=
  canonical_of_padded canonicalInput1543 canonicalOutput1543 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput1544 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, 0, 0, 0], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput1544 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1198⟩

theorem canonicalSound1544 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1544.moment H = canonicalOutput1544.moment H :=
  canonical_of_padded canonicalInput1544 canonicalOutput1544 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation40⟩ (by decide +kernel) hH

def canonicalInput1545 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, 0, 0, 0], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput1545 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node964⟩

theorem canonicalSound1545 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1545.moment H = canonicalOutput1545.moment H :=
  canonical_of_padded canonicalInput1545 canonicalOutput1545 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput1546 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, 0, 0, 0], ![0, 1, 0, -1], ![1, 0, 1, -2], ![1, 1, -2, 0]]⟩

def canonicalOutput1546 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node815⟩

theorem canonicalSound1546 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1546.moment H = canonicalOutput1546.moment H :=
  canonical_of_padded canonicalInput1546 canonicalOutput1546 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput1547 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, 0, 0, 0], ![0, 1, 1, -2], ![1, 0, -1, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput1547 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node995⟩

theorem canonicalSound1547 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1547.moment H = canonicalOutput1547.moment H :=
  canonical_of_padded canonicalInput1547 canonicalOutput1547 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation152, canonicalPermutation29⟩ (by decide +kernel) hH

def canonicalInput1548 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 0, 0, 0], ![0, 1, 1, -2], ![2, 1, -2, -1]]⟩

def canonicalOutput1548 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node184⟩

theorem canonicalSound1548 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1548.moment H = canonicalOutput1548.moment H :=
  canonical_of_padded canonicalInput1548 canonicalOutput1548 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput1549 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 0, 0, 0], ![0, 2, -2, 0], ![2, 0, 1, -3]]⟩

def canonicalOutput1549 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node198⟩

theorem canonicalSound1549 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1549.moment H = canonicalOutput1549.moment H :=
  canonical_of_padded canonicalInput1549 canonicalOutput1549 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput1550 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 0, 0, 0], ![0, 2, -1, -1], ![2, 0, 0, -2]]⟩

def canonicalOutput1550 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node169⟩

theorem canonicalSound1550 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1550.moment H = canonicalOutput1550.moment H :=
  canonical_of_padded canonicalInput1550 canonicalOutput1550 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput1551 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 0, 0, 0], ![1, 1, -2, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput1551 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node223⟩

theorem canonicalSound1551 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1551.moment H = canonicalOutput1551.moment H :=
  canonical_of_padded canonicalInput1551 canonicalOutput1551 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput1552 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 0, 0, 0], ![1, 1, -1, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput1552 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node175⟩

theorem canonicalSound1552 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1552.moment H = canonicalOutput1552.moment H :=
  canonical_of_padded canonicalInput1552 canonicalOutput1552 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput1553 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, 0, 1, -1], ![0, 0, 0, 0], ![0, 1, -2, 1], ![2, 1, 0, -3]]⟩

def canonicalOutput1553 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1329⟩

theorem canonicalSound1553 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1553.moment H = canonicalOutput1553.moment H :=
  canonical_of_padded canonicalInput1553 canonicalOutput1553 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput1554 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, 0, 1, -1], ![0, 0, 0, 0], ![0, 1, -1, 0], ![2, 1, -1, -2]]⟩

def canonicalOutput1554 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1222⟩

theorem canonicalSound1554 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1554.moment H = canonicalOutput1554.moment H :=
  canonical_of_padded canonicalInput1554 canonicalOutput1554 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput1555 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, 0, 1, -1], ![0, 0, 0, 0], ![0, 1, 0, -1], ![2, 1, -2, -1]]⟩

def canonicalOutput1555 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node973⟩

theorem canonicalSound1555 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1555.moment H = canonicalOutput1555.moment H :=
  canonical_of_padded canonicalInput1555 canonicalOutput1555 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, canonicalPermutation35⟩ (by decide +kernel) hH

def canonicalInput1556 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, 0, 1, -1], ![0, 0, 0, 0], ![0, 1, 1, -2], ![2, 1, -3, 0]]⟩

def canonicalOutput1556 : ExponentCode := normalNode6783

theorem canonicalSound1556 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1556.moment H = canonicalOutput1556.moment H :=
  canonical_of_padded canonicalInput1556 canonicalOutput1556 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput1557 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, 0, 1, -1], ![0, 0, 0, 0], ![1, -1, 0, 0], ![1, 3, -2, -2]]⟩

def canonicalOutput1557 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1213⟩

theorem canonicalSound1557 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1557.moment H = canonicalOutput1557.moment H :=
  canonical_of_padded canonicalInput1557 canonicalOutput1557 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput1558 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, 0, 1, -1], ![0, 0, 0, 0], ![1, 0, 0, -1], ![1, 2, -2, -1]]⟩

def canonicalOutput1558 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node973⟩

theorem canonicalSound1558 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1558.moment H = canonicalOutput1558.moment H :=
  canonical_of_padded canonicalInput1558 canonicalOutput1558 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation35⟩ (by decide +kernel) hH

def canonicalInput1559 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 2, -1, -1], ![2, 0, -2, 0]]⟩

def canonicalOutput1559 : ExponentCode := normalNode641

theorem canonicalSound1559 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1559.moment H = canonicalOutput1559.moment H :=
  canonical_of_padded canonicalInput1559 canonicalOutput1559 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput1560 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 2, 0, -2], ![2, 0, -3, 1]]⟩

def canonicalOutput1560 : ExponentCode := normalNode640

theorem canonicalSound1560 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1560.moment H = canonicalOutput1560.moment H :=
  canonical_of_padded canonicalInput1560 canonicalOutput1560 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput1561 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, 0, -2, 1], ![1, 2, -1, -2]]⟩

def canonicalOutput1561 : ExponentCode := normalNode630

theorem canonicalSound1561 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1561.moment H = canonicalOutput1561.moment H :=
  canonical_of_padded canonicalInput1561 canonicalOutput1561 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput1562 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, 0, -1, 0], ![1, 2, -2, -1]]⟩

def canonicalOutput1562 : ExponentCode := normalNode635

theorem canonicalSound1562 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1562.moment H = canonicalOutput1562.moment H :=
  canonical_of_padded canonicalInput1562 canonicalOutput1562 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput1563 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, 0, 0, -1], ![1, 2, -3, 0]]⟩

def canonicalOutput1563 : ExponentCode := normalNode638

theorem canonicalSound1563 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1563.moment H = canonicalOutput1563.moment H :=
  canonical_of_padded canonicalInput1563 canonicalOutput1563 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput1564 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, 0, 1, -1], ![0, 0, 2, -2], ![0, 1, -1, 0], ![2, 1, -3, 0]]⟩

def canonicalOutput1564 : ExponentCode := normalNode954

theorem canonicalSound1564 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1564.moment H = canonicalOutput1564.moment H :=
  canonical_of_padded canonicalInput1564 canonicalOutput1564 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput1565 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 0, 1, -1], ![0, 1, -3, 2], ![2, 1, 1, -4]]⟩

def canonicalOutput1565 : ExponentCode := normalNode11200

theorem canonicalSound1565 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1565.moment H = canonicalOutput1565.moment H :=
  canonical_of_padded canonicalInput1565 canonicalOutput1565 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput1566 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 0, 0, 0], ![2, 1, -1, -2]]⟩

def canonicalOutput1566 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1222⟩

theorem canonicalSound1566 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1566.moment H = canonicalOutput1566.moment H :=
  canonical_of_padded canonicalInput1566 canonicalOutput1566 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation189⟩ (by decide +kernel) hH

def canonicalInput1567 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 0, 1, -1], ![2, 1, -2, -1]]⟩

def canonicalOutput1567 : ExponentCode := normalNode635

theorem canonicalSound1567 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1567.moment H = canonicalOutput1567.moment H :=
  canonical_of_padded canonicalInput1567 canonicalOutput1567 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1568 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, -2, 1], ![2, 0, 1, -3]]⟩

def canonicalOutput1568 : ExponentCode := normalNode654

theorem canonicalSound1568 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1568.moment H = canonicalOutput1568.moment H :=
  canonical_of_padded canonicalInput1568 canonicalOutput1568 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1569 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, 0, -2, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput1569 : ExponentCode := normalNode656

theorem canonicalSound1569 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1569.moment H = canonicalOutput1569.moment H :=
  canonical_of_padded canonicalInput1569 canonicalOutput1569 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput1570 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, 0, 1, -1], ![2, 1, -3, 0]]⟩

def canonicalOutput1570 : ExponentCode := normalNode638

theorem canonicalSound1570 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1570.moment H = canonicalOutput1570.moment H :=
  canonical_of_padded canonicalInput1570 canonicalOutput1570 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1571 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, 2, 0, -2], ![2, -1, -2, 1]]⟩

def canonicalOutput1571 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2187⟩

theorem canonicalSound1571 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1571.moment H = canonicalOutput1571.moment H :=
  canonical_of_padded canonicalInput1571 canonicalOutput1571 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput1572 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, -1, 1], ![1, 2, -1, -2]]⟩

def canonicalOutput1572 : ExponentCode := normalNode4983

theorem canonicalSound1572 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1572.moment H = canonicalOutput1572.moment H :=
  canonical_of_padded canonicalInput1572 canonicalOutput1572 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput1573 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -2, 1], ![1, 1, 0, -2]]⟩

def canonicalOutput1573 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1502⟩

theorem canonicalSound1573 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1573.moment H = canonicalOutput1573.moment H :=
  canonical_of_padded canonicalInput1573 canonicalOutput1573 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput1574 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 1, -2, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput1574 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1508⟩

theorem canonicalSound1574 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1574.moment H = canonicalOutput1574.moment H :=
  canonical_of_padded canonicalInput1574 canonicalOutput1574 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1575 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, 0, 1, -1], ![0, 1, 1, -2], ![0, 1, 0, -1], ![2, 0, -3, 1]]⟩

def canonicalOutput1575 : ExponentCode := normalNode664

theorem canonicalSound1575 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1575.moment H = canonicalOutput1575.moment H :=
  canonical_of_padded canonicalInput1575 canonicalOutput1575 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1576 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, 0, 1, -1], ![0, 1, 1, -2], ![1, 0, -2, 1], ![1, 1, -1, -1]]⟩

def canonicalOutput1576 : ExponentCode := normalNode657

theorem canonicalSound1576 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1576.moment H = canonicalOutput1576.moment H :=
  canonical_of_padded canonicalInput1576 canonicalOutput1576 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput1577 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, 0, 1, -1], ![0, 1, 1, -2], ![1, 0, -1, 0], ![1, 1, -2, 0]]⟩

def canonicalOutput1577 : ExponentCode := normalNode663

theorem canonicalSound1577 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1577.moment H = canonicalOutput1577.moment H :=
  canonical_of_padded canonicalInput1577 canonicalOutput1577 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput1578 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, 0, 1, -1], ![0, 1, 1, -2], ![1, 0, 0, -1], ![1, 1, -3, 1]]⟩

def canonicalOutput1578 : ExponentCode := normalNode666

theorem canonicalSound1578 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1578.moment H = canonicalOutput1578.moment H :=
  canonical_of_padded canonicalInput1578 canonicalOutput1578 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput1579 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 0, 1, -1], ![0, 1, 1, -2], ![2, 1, -3, 0]]⟩

def canonicalOutput1579 : ExponentCode := normalNode6783

theorem canonicalSound1579 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1579.moment H = canonicalOutput1579.moment H :=
  canonical_of_padded canonicalInput1579 canonicalOutput1579 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput1580 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 0, 1, -1], ![0, 1, 2, -3], ![2, 1, -4, 1]]⟩

def canonicalOutput1580 : ExponentCode := normalNode6119

theorem canonicalSound1580 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1580.moment H = canonicalOutput1580.moment H :=
  canonical_of_padded canonicalInput1580 canonicalOutput1580 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput1581 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, 0, 1, -1], ![0, 2, -3, 1], ![1, 0, 0, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput1581 : ExponentCode := normalNode664

theorem canonicalSound1581 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1581.moment H = canonicalOutput1581.moment H :=
  canonical_of_padded canonicalInput1581 canonicalOutput1581 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput1582 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 0, 1, -1], ![0, 2, -3, 1], ![2, 0, 1, -3]]⟩

def canonicalOutput1582 : ExponentCode := normalNode6122

theorem canonicalSound1582 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1582.moment H = canonicalOutput1582.moment H :=
  canonical_of_padded canonicalInput1582 canonicalOutput1582 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput1583 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, 0, 1, -1], ![0, 2, 0, -2], ![1, -1, -1, 1], ![1, 1, -1, -1]]⟩

def canonicalOutput1583 : ExponentCode := normalNode4990

theorem canonicalSound1583 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1583.moment H = canonicalOutput1583.moment H :=
  canonical_of_padded canonicalInput1583 canonicalOutput1583 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput1584 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, 0, 1, -1], ![0, 2, 0, -2], ![1, 0, -2, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput1584 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1501⟩

theorem canonicalSound1584 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1584.moment H = canonicalOutput1584.moment H :=
  canonical_of_padded canonicalInput1584 canonicalOutput1584 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput1585 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 0, 1, -1], ![0, 2, 1, -3], ![2, 0, -3, 1]]⟩

def canonicalOutput1585 : ExponentCode := normalNode6122

theorem canonicalSound1585 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1585.moment H = canonicalOutput1585.moment H :=
  canonical_of_padded canonicalInput1585 canonicalOutput1585 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput1586 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 0, 1, -1], ![0, 3, -3, 0], ![2, -1, 1, -2]]⟩

def canonicalOutput1586 : ExponentCode := normalNode6715

theorem canonicalSound1586 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1586.moment H = canonicalOutput1586.moment H :=
  canonical_of_padded canonicalInput1586 canonicalOutput1586 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput1587 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, 0, 1, -1], ![0, 3, -2, -1], ![1, -1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput1587 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1980⟩

theorem canonicalSound1587 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1587.moment H = canonicalOutput1587.moment H :=
  canonical_of_padded canonicalInput1587 canonicalOutput1587 (by decide) (by decide)
    ⟨false, false, canonicalPermutation26, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput1588 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, 0, 1, -1], ![0, 3, -2, -1], ![1, 0, -1, 0], ![1, -1, 1, -1]]⟩

def canonicalOutput1588 : ExponentCode := normalNode671

theorem canonicalSound1588 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1588.moment H = canonicalOutput1588.moment H :=
  canonical_of_padded canonicalInput1588 canonicalOutput1588 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1589 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 0, 1, -1], ![0, 3, -2, -1], ![2, -1, 0, -1]]⟩

def canonicalOutput1589 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node953⟩

theorem canonicalSound1589 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1589.moment H = canonicalOutput1589.moment H :=
  canonical_of_padded canonicalInput1589 canonicalOutput1589 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput1590 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, 0, 1, -1], ![0, 3, -1, -2], ![1, -1, -1, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput1590 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2176⟩

theorem canonicalSound1590 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1590.moment H = canonicalOutput1590.moment H :=
  canonical_of_padded canonicalInput1590 canonicalOutput1590 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput1591 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, 0, 1, -1], ![0, 3, -1, -2], ![1, -1, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput1591 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2177⟩

theorem canonicalSound1591 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1591.moment H = canonicalOutput1591.moment H :=
  canonical_of_padded canonicalInput1591 canonicalOutput1591 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput1592 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 0, 1, -1], ![0, 3, -1, -2], ![2, -1, -1, 0]]⟩

def canonicalOutput1592 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1215⟩

theorem canonicalSound1592 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1592.moment H = canonicalOutput1592.moment H :=
  canonical_of_padded canonicalInput1592 canonicalOutput1592 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput1593 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 0, 1, -1], ![1, -1, -1, 1], ![1, 3, -1, -3]]⟩

def canonicalOutput1593 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1327⟩

theorem canonicalSound1593 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1593.moment H = canonicalOutput1593.moment H :=
  canonical_of_padded canonicalInput1593 canonicalOutput1593 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput1594 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 3, -2, -2]]⟩

def canonicalOutput1594 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1213⟩

theorem canonicalSound1594 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1594.moment H = canonicalOutput1594.moment H :=
  canonical_of_padded canonicalInput1594 canonicalOutput1594 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput1595 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 0, 1, -1], ![1, -1, 1, -1], ![1, 3, -3, -1]]⟩

def canonicalOutput1595 : ExponentCode := normalNode7904

theorem canonicalSound1595 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1595.moment H = canonicalOutput1595.moment H :=
  canonical_of_padded canonicalInput1595 canonicalOutput1595 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput1596 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 0, 1, -1], ![1, 0, -2, 1], ![1, 2, 0, -3]]⟩

def canonicalOutput1596 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1329⟩

theorem canonicalSound1596 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1596.moment H = canonicalOutput1596.moment H :=
  canonical_of_padded canonicalInput1596 canonicalOutput1596 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput1597 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 0, 1, -1], ![1, 0, 1, -2], ![1, 2, -3, 0]]⟩

def canonicalOutput1597 : ExponentCode := normalNode6783

theorem canonicalSound1597 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1597.moment H = canonicalOutput1597.moment H :=
  canonical_of_padded canonicalInput1597 canonicalOutput1597 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput1598 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 0, 1, -1], ![1, 1, -3, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput1598 : ExponentCode := normalNode6131

theorem canonicalSound1598 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1598.moment H = canonicalOutput1598.moment H :=
  canonical_of_padded canonicalInput1598 canonicalOutput1598 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput1599 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 0, 1, -1], ![1, 1, -1, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput1599 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node987⟩

theorem canonicalSound1599 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1599.moment H = canonicalOutput1599.moment H :=
  canonical_of_padded canonicalInput1599 canonicalOutput1599 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

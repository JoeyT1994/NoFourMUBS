import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes02
import NoFourMUBs.Step2.SOS.MomentCodes06
import NoFourMUBs.Step2.SOS.MomentCodes09
import NoFourMUBs.Step2.SOS.MomentCodes12
import NoFourMUBs.Step2.SOS.MomentCodes15
import NoFourMUBs.Step2.SOS.MomentCodes17
import NoFourMUBs.Step2.SOS.NormalizationNodes002
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes019
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes23
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes27
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes32
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes33
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes6
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput1600 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 0, 1, -1], ![1, 1, 0, -2], ![1, 1, -2, 0]]⟩

def canonicalOutput1600 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node820⟩

theorem canonicalSound1600 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1600.moment H = canonicalOutput1600.moment H :=
  canonical_of_padded canonicalInput1600 canonicalOutput1600 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput1601 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, 0, 2, -2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![2, 1, -4, 1]]⟩

def canonicalOutput1601 : ExponentCode := normalNode648

theorem canonicalSound1601 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1601.moment H = canonicalOutput1601.moment H :=
  canonical_of_padded canonicalInput1601 canonicalOutput1601 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1602 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, 0, 2, -2], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 1, -2, 0]]⟩

def canonicalOutput1602 : ExponentCode := normalNode683

theorem canonicalSound1602 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1602.moment H = canonicalOutput1602.moment H :=
  canonical_of_padded canonicalInput1602 canonicalOutput1602 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput1603 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 0, 2, -2], ![0, 1, 0, -1], ![2, 1, -3, 0]]⟩

def canonicalOutput1603 : ExponentCode := normalNode6784

theorem canonicalSound1603 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1603.moment H = canonicalOutput1603.moment H :=
  canonical_of_padded canonicalInput1603 canonicalOutput1603 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput1604 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, 0, 2, -2], ![0, 2, -2, 0], ![0, 1, -1, 0], ![2, -1, 0, -1]]⟩

def canonicalOutput1604 : ExponentCode := normalNode680

theorem canonicalSound1604 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1604.moment H = canonicalOutput1604.moment H :=
  canonical_of_padded canonicalInput1604 canonicalOutput1604 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1605 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, 0, 2, -2], ![0, 2, -2, 0], ![0, 1, 0, -1], ![2, -1, -1, 0]]⟩

def canonicalOutput1605 : ExponentCode := normalNode685

theorem canonicalSound1605 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1605.moment H = canonicalOutput1605.moment H :=
  canonical_of_padded canonicalInput1605 canonicalOutput1605 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1606 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, 0, 2, -2], ![0, 2, -2, 0], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput1606 : ExponentCode := normalNode679

theorem canonicalSound1606 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1606.moment H = canonicalOutput1606.moment H :=
  canonical_of_padded canonicalInput1606 canonicalOutput1606 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput1607 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, 0, 2, -2], ![0, 2, -1, -1], ![1, 0, -2, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput1607 : ExponentCode := normalNode674

theorem canonicalSound1607 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1607.moment H = canonicalOutput1607.moment H :=
  canonical_of_padded canonicalInput1607 canonicalOutput1607 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput1608 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, 0, 2, -2], ![0, 2, -1, -1], ![1, 0, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput1608 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1509⟩

theorem canonicalSound1608 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1608.moment H = canonicalOutput1608.moment H :=
  canonical_of_padded canonicalInput1608 canonicalOutput1608 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput1609 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 0, 2, -2], ![0, 2, -1, -1], ![2, 0, -2, 0]]⟩

def canonicalOutput1609 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node482⟩

theorem canonicalSound1609 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1609.moment H = canonicalOutput1609.moment H :=
  canonical_of_padded canonicalInput1609 canonicalOutput1609 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput1610 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 0, 2, -2], ![0, 2, 0, -2], ![2, 0, -3, 1]]⟩

def canonicalOutput1610 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code162

theorem canonicalSound1610 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1610.moment H = canonicalOutput1610.moment H :=
  canonical_of_padded canonicalInput1610 canonicalOutput1610 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput1611 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 0, 2, -2], ![0, 3, -3, 0], ![2, -1, 0, -1]]⟩

def canonicalOutput1611 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code439

theorem canonicalSound1611 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1611.moment H = canonicalOutput1611.moment H :=
  canonical_of_padded canonicalInput1611 canonicalOutput1611 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput1612 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 0, 2, -2], ![0, 3, -2, -1], ![2, -1, -1, 0]]⟩

def canonicalOutput1612 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code783

theorem canonicalSound1612 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1612.moment H = canonicalOutput1612.moment H :=
  canonical_of_padded canonicalInput1612 canonicalOutput1612 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput1613 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 0, 2, -2], ![1, -1, -1, 1], ![1, 3, -2, -2]]⟩

def canonicalOutput1613 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1088

theorem canonicalSound1613 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1613.moment H = canonicalOutput1613.moment H :=
  canonical_of_padded canonicalInput1613 canonicalOutput1613 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput1614 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 0, 2, -2], ![1, -1, 0, 0], ![1, 3, -3, -1]]⟩

def canonicalOutput1614 : ExponentCode := normalNode9859

theorem canonicalSound1614 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1614.moment H = canonicalOutput1614.moment H :=
  canonical_of_padded canonicalInput1614 canonicalOutput1614 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation161, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput1615 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 0, 2, -2], ![1, 0, -2, 1], ![1, 2, -1, -2]]⟩

def canonicalOutput1615 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node407⟩

theorem canonicalSound1615 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1615.moment H = canonicalOutput1615.moment H :=
  canonical_of_padded canonicalInput1615 canonicalOutput1615 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput1616 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 0, 2, -2], ![1, 0, -1, 0], ![1, 2, -2, -1]]⟩

def canonicalOutput1616 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1256⟩

theorem canonicalSound1616 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1616.moment H = canonicalOutput1616.moment H :=
  canonical_of_padded canonicalInput1616 canonicalOutput1616 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput1617 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 0, 2, -2], ![1, 0, 0, -1], ![1, 2, -3, 0]]⟩

def canonicalOutput1617 : ExponentCode := normalNode6784

theorem canonicalSound1617 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1617.moment H = canonicalOutput1617.moment H :=
  canonical_of_padded canonicalInput1617 canonicalOutput1617 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput1618 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 0, 2, -2], ![1, 1, -2, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput1618 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node489⟩

theorem canonicalSound1618 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1618.moment H = canonicalOutput1618.moment H :=
  canonical_of_padded canonicalInput1618 canonicalOutput1618 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput1619 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 0, 2, -2], ![1, 1, -1, -1], ![1, 1, -2, 0]]⟩

def canonicalOutput1619 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node489⟩

theorem canonicalSound1619 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1619.moment H = canonicalOutput1619.moment H :=
  canonical_of_padded canonicalInput1619 canonicalOutput1619 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput1620 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 0, 2, -2], ![1, 1, 0, -2], ![1, 1, -3, 1]]⟩

def canonicalOutput1620 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code163

theorem canonicalSound1620 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1620.moment H = canonicalOutput1620.moment H :=
  canonical_of_padded canonicalInput1620 canonicalOutput1620 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1621 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 0, 2, -2], ![1, 2, -2, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput1621 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1256⟩

theorem canonicalSound1621 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1621.moment H = canonicalOutput1621.moment H :=
  canonical_of_padded canonicalInput1621 canonicalOutput1621 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation152, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput1622 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 0, 2, -2], ![1, 3, -2, -2], ![1, -1, -1, 1]]⟩

def canonicalOutput1622 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1088

theorem canonicalSound1622 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1622.moment H = canonicalOutput1622.moment H :=
  canonical_of_padded canonicalInput1622 canonicalOutput1622 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput1623 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 0, 3, -3], ![0, 1, 0, -1], ![2, 1, -4, 1]]⟩

def canonicalOutput1623 : ExponentCode := normalNode6123

theorem canonicalSound1623 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1623.moment H = canonicalOutput1623.moment H :=
  canonical_of_padded canonicalInput1623 canonicalOutput1623 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput1624 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 1, -3, 2], ![0, 0, 2, -2], ![2, 1, 0, -3]]⟩

def canonicalOutput1624 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code159

theorem canonicalSound1624 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1624.moment H = canonicalOutput1624.moment H :=
  canonical_of_padded canonicalInput1624 canonicalOutput1624 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1625 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 1, -3, 2], ![0, 1, 0, -1], ![2, 0, 2, -4]]⟩

def canonicalOutput1625 : ExponentCode := normalNode9066

theorem canonicalSound1625 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1625.moment H = canonicalOutput1625.moment H :=
  canonical_of_padded canonicalInput1625 canonicalOutput1625 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput1626 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, 1, -3, 2], ![0, 1, 1, -2], ![1, 0, 1, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput1626 : ExponentCode := normalNode690

theorem canonicalSound1626 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1626.moment H = canonicalOutput1626.moment H :=
  canonical_of_padded canonicalInput1626 canonicalOutput1626 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1627 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 1, -3, 2], ![1, 0, 0, -1], ![1, 1, 2, -4]]⟩

def canonicalOutput1627 : ExponentCode := normalNode10259

theorem canonicalSound1627 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1627.moment H = canonicalOutput1627.moment H :=
  canonical_of_padded canonicalInput1627 canonicalOutput1627 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput1628 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 1, -3, 2], ![1, 1, 0, -2], ![1, 0, 2, -3]]⟩

def canonicalOutput1628 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code167

theorem canonicalSound1628 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1628.moment H = canonicalOutput1628.moment H :=
  canonical_of_padded canonicalInput1628 canonicalOutput1628 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1629 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 1, -3, 2], ![1, 1, 1, -3], ![1, 0, 1, -2]]⟩

def canonicalOutput1629 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code166

theorem canonicalSound1629 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1629.moment H = canonicalOutput1629.moment H :=
  canonical_of_padded canonicalInput1629 canonicalOutput1629 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1630 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 1, -3, 2], ![1, 1, 2, -4], ![1, 0, 0, -1]]⟩

def canonicalOutput1630 : ExponentCode := normalNode10259

theorem canonicalSound1630 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1630.moment H = canonicalOutput1630.moment H :=
  canonical_of_padded canonicalInput1630 canonicalOutput1630 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation151, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput1631 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 1, -2, 1], ![0, 0, 0, 0], ![2, 1, 1, -4]]⟩

def canonicalOutput1631 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node225⟩

theorem canonicalSound1631 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1631.moment H = canonicalOutput1631.moment H :=
  canonical_of_padded canonicalInput1631 canonicalOutput1631 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput1632 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 1, -2, 1], ![0, 0, 2, -2], ![2, 1, -1, -2]]⟩

def canonicalOutput1632 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node407⟩

theorem canonicalSound1632 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1632.moment H = canonicalOutput1632.moment H :=
  canonical_of_padded canonicalInput1632 canonicalOutput1632 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1633 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, 1, -2, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![2, -1, 2, -3]]⟩

def canonicalOutput1633 : ExponentCode := normalNode622

theorem canonicalSound1633 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1633.moment H = canonicalOutput1633.moment H :=
  canonical_of_padded canonicalInput1633 canonicalOutput1633 (by decide) (by decide)
    ⟨false, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput1634 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, 1, -2, 1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput1634 : ExponentCode := normalNode4501

theorem canonicalSound1634 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1634.moment H = canonicalOutput1634.moment H :=
  canonical_of_padded canonicalInput1634 canonicalOutput1634 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation171, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput1635 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, 1, -2, 1], ![0, 1, 0, -1], ![1, 0, 2, -3], ![1, 0, -1, 0]]⟩

def canonicalOutput1635 : ExponentCode := normalNode699

theorem canonicalSound1635 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1635.moment H = canonicalOutput1635.moment H :=
  canonical_of_padded canonicalInput1635 canonicalOutput1635 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1636 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, 1, -2, 1], ![0, 1, 2, -3], ![1, 0, 0, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput1636 : ExponentCode := normalNode701

theorem canonicalSound1636 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1636.moment H = canonicalOutput1636.moment H :=
  canonical_of_padded canonicalInput1636 canonicalOutput1636 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1637 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 1, -2, 1], ![0, 2, -1, -1], ![2, -1, 2, -3]]⟩

def canonicalOutput1637 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code580

theorem canonicalSound1637 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1637.moment H = canonicalOutput1637.moment H :=
  canonical_of_padded canonicalInput1637 canonicalOutput1637 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput1638 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 1, -2, 1], ![0, 2, 0, -2], ![2, -1, 1, -2]]⟩

def canonicalOutput1638 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code577

theorem canonicalSound1638 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1638.moment H = canonicalOutput1638.moment H :=
  canonical_of_padded canonicalInput1638 canonicalOutput1638 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput1639 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 1, -2, 1], ![1, -1, 0, 0], ![1, 2, 1, -4]]⟩

def canonicalOutput1639 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1251⟩

theorem canonicalSound1639 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1639.moment H = canonicalOutput1639.moment H :=
  canonical_of_padded canonicalInput1639 canonicalOutput1639 (by decide) (by decide)
    ⟨true, true, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput1640 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 1, -2, 1], ![1, -1, 1, -1], ![1, 2, 0, -3]]⟩

def canonicalOutput1640 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1022

theorem canonicalSound1640 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1640.moment H = canonicalOutput1640.moment H :=
  canonical_of_padded canonicalInput1640 canonicalOutput1640 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput1641 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 1, -2, 1], ![1, 1, -2, 0], ![1, 0, 3, -4]]⟩

def canonicalOutput1641 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code176

theorem canonicalSound1641 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1641.moment H = canonicalOutput1641.moment H :=
  canonical_of_padded canonicalInput1641 canonicalOutput1641 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1642 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 1, -2, 1], ![1, 1, -1, -1], ![1, 0, 2, -3]]⟩

def canonicalOutput1642 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code175

theorem canonicalSound1642 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1642.moment H = canonicalOutput1642.moment H :=
  canonical_of_padded canonicalInput1642 canonicalOutput1642 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1643 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 1, -2, 1], ![1, 1, 2, -4], ![1, 0, -1, 0]]⟩

def canonicalOutput1643 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node848⟩

theorem canonicalSound1643 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1643.moment H = canonicalOutput1643.moment H :=
  canonical_of_padded canonicalInput1643 canonicalOutput1643 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput1644 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 1, -2, 1], ![1, 2, -1, -2], ![1, -1, 2, -2]]⟩

def canonicalOutput1644 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code173

theorem canonicalSound1644 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1644.moment H = canonicalOutput1644.moment H :=
  canonical_of_padded canonicalInput1644 canonicalOutput1644 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1645 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, 1, -1, 0], ![0, 0, -1, 1], ![1, 0, -1, 0], ![1, 1, 2, -4]]⟩

def canonicalOutput1645 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1497⟩

theorem canonicalSound1645 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1645.moment H = canonicalOutput1645.moment H :=
  canonical_of_padded canonicalInput1645 canonicalOutput1645 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1646 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, 1, -1, 0], ![0, 0, 0, 0], ![0, 1, 1, -2], ![2, 0, -1, -1]]⟩

def canonicalOutput1646 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1036⟩

theorem canonicalSound1646 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1646.moment H = canonicalOutput1646.moment H :=
  canonical_of_padded canonicalInput1646 canonicalOutput1646 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput1647 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, 1, -1, 0], ![0, 0, 1, -1], ![1, 0, 1, -2], ![1, 1, -2, 0]]⟩

def canonicalOutput1647 : ExponentCode := normalNode663

theorem canonicalSound1647 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1647.moment H = canonicalOutput1647.moment H :=
  canonical_of_padded canonicalInput1647 canonicalOutput1647 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1648 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, 1, -1, 0], ![0, 0, 2, -2], ![1, 0, -1, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput1648 : ExponentCode := normalNode682

theorem canonicalSound1648 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1648.moment H = canonicalOutput1648.moment H :=
  canonical_of_padded canonicalInput1648 canonicalOutput1648 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1649 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 1, -1, 0], ![0, 0, 2, -2], ![2, 1, -2, -1]]⟩

def canonicalOutput1649 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1256⟩

theorem canonicalSound1649 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1649.moment H = canonicalOutput1649.moment H :=
  canonical_of_padded canonicalInput1649 canonicalOutput1649 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput1650 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, 1, -1, 0], ![0, 1, -2, 1], ![0, 1, 0, -1], ![2, -1, 2, -3]]⟩

def canonicalOutput1650 : ExponentCode := normalNode622

theorem canonicalSound1650 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1650.moment H = canonicalOutput1650.moment H :=
  canonical_of_padded canonicalInput1650 canonicalOutput1650 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation201, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput1651 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, 1, -1, 0], ![0, 1, -2, 1], ![0, 1, 1, -2], ![2, -1, 1, -2]]⟩

def canonicalOutput1651 : ExponentCode := normalNode692

theorem canonicalSound1651 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1651.moment H = canonicalOutput1651.moment H :=
  canonical_of_padded canonicalInput1651 canonicalOutput1651 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1652 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, 1, -1, 0], ![0, 1, -2, 1], ![1, -1, 0, 0], ![1, 1, 2, -4]]⟩

def canonicalOutput1652 : ExponentCode := normalNode693

theorem canonicalSound1652 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1652.moment H = canonicalOutput1652.moment H :=
  canonical_of_padded canonicalInput1652 canonicalOutput1652 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1653 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, 1, -1, 0], ![0, 1, -2, 1], ![1, 0, -1, 0], ![1, 0, 3, -4]]⟩

def canonicalOutput1653 : ExponentCode := normalNode695

theorem canonicalSound1653 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1653.moment H = canonicalOutput1653.moment H :=
  canonical_of_padded canonicalInput1653 canonicalOutput1653 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1654 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, 1, -1, 0], ![0, 1, -2, 1], ![1, 0, 0, -1], ![1, 0, 2, -3]]⟩

def canonicalOutput1654 : ExponentCode := normalNode696

theorem canonicalSound1654 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1654.moment H = canonicalOutput1654.moment H :=
  canonical_of_padded canonicalInput1654 canonicalOutput1654 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1655 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, 1, -1, 0], ![0, 1, -1, 0], ![0, 0, 2, -2], ![2, 0, -1, -1]]⟩

def canonicalOutput1655 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1509⟩

theorem canonicalSound1655 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1655.moment H = canonicalOutput1655.moment H :=
  canonical_of_padded canonicalInput1655 canonicalOutput1655 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1656 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, 1, -1, 0], ![0, 1, -1, 0], ![0, 1, 0, -1], ![2, -1, 1, -2]]⟩

def canonicalOutput1656 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1765⟩

theorem canonicalSound1656 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1656.moment H = canonicalOutput1656.moment H :=
  canonical_of_padded canonicalInput1656 canonicalOutput1656 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation201, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput1657 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, 1, -1, 0], ![0, 1, -1, 0], ![0, 1, 1, -2], ![2, -1, 0, -1]]⟩

def canonicalOutput1657 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2061⟩

theorem canonicalSound1657 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1657.moment H = canonicalOutput1657.moment H :=
  canonical_of_padded canonicalInput1657 canonicalOutput1657 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation201, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput1658 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, 1, -1, 0], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput1658 : ExponentCode := normalNode4867

theorem canonicalSound1658 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1658.moment H = canonicalOutput1658.moment H :=
  canonical_of_padded canonicalInput1658 canonicalOutput1658 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput1659 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, 1, -1, 0], ![0, 1, -1, 0], ![1, -1, 1, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput1659 : ExponentCode := normalNode4868

theorem canonicalSound1659 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1659.moment H = canonicalOutput1659.moment H :=
  canonical_of_padded canonicalInput1659 canonicalOutput1659 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput1660 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, 1, -1, 0], ![0, 1, -1, 0], ![1, 0, -2, 1], ![1, 0, 3, -4]]⟩

def canonicalOutput1660 : ExponentCode := normalNode702

theorem canonicalSound1660 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1660.moment H = canonicalOutput1660.moment H :=
  canonical_of_padded canonicalInput1660 canonicalOutput1660 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput1661 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, 1, -1, 0], ![0, 1, 0, -1], ![0, 1, 1, -2], ![2, -1, -1, 0]]⟩

def canonicalOutput1661 : ExponentCode := normalNode4887

theorem canonicalSound1661 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1661.moment H = canonicalOutput1661.moment H :=
  canonical_of_padded canonicalInput1661 canonicalOutput1661 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput1662 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, -1, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput1662 : ExponentCode := normalNode4888

theorem canonicalSound1662 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1662.moment H = canonicalOutput1662.moment H :=
  canonical_of_padded canonicalInput1662 canonicalOutput1662 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput1663 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, 1, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput1663 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2161⟩

theorem canonicalSound1663 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1663.moment H = canonicalOutput1663.moment H :=
  canonical_of_padded canonicalInput1663 canonicalOutput1663 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes02
import NoFourMUBs.Step2.SOS.MomentCodes07
import NoFourMUBs.Step2.SOS.MomentCodes09
import NoFourMUBs.Step2.SOS.MomentCodes10
import NoFourMUBs.Step2.SOS.NormalizationNodes002
import NoFourMUBs.Step2.SOS.NormalizationNodes019
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes10
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes23
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes32
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes33
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes34
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes6
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput1664 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, -2, 1], ![1, 0, 2, -3]]⟩

def canonicalOutput1664 : ExponentCode := normalNode701

theorem canonicalSound1664 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1664.moment H = canonicalOutput1664.moment H :=
  canonical_of_padded canonicalInput1664 canonicalOutput1664 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput1665 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, 1, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput1665 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1513⟩

theorem canonicalSound1665 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1665.moment H = canonicalOutput1665.moment H :=
  canonical_of_padded canonicalInput1665 canonicalOutput1665 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1666 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, 1, -1, 0], ![0, 1, 1, -2], ![1, -1, -1, 1], ![1, 1, 0, -2]]⟩

def canonicalOutput1666 : ExponentCode := normalNode4895

theorem canonicalSound1666 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1666.moment H = canonicalOutput1666.moment H :=
  canonical_of_padded canonicalInput1666 canonicalOutput1666 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput1667 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, 1, -1, 0], ![0, 1, 1, -2], ![1, -1, 0, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput1667 : ExponentCode := normalNode4896

theorem canonicalSound1667 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1667.moment H = canonicalOutput1667.moment H :=
  canonical_of_padded canonicalInput1667 canonicalOutput1667 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput1668 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, 1, -1, 0], ![0, 1, 1, -2], ![1, 0, -2, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput1668 : ExponentCode := normalNode700

theorem canonicalSound1668 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1668.moment H = canonicalOutput1668.moment H :=
  canonical_of_padded canonicalInput1668 canonicalOutput1668 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput1669 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, 1, -1, 0], ![0, 1, 2, -3], ![1, 0, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput1669 : ExponentCode := normalNode710

theorem canonicalSound1669 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1669.moment H = canonicalOutput1669.moment H :=
  canonical_of_padded canonicalInput1669 canonicalOutput1669 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput1670 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 1, -1, 0], ![0, 1, 2, -3], ![2, 0, -2, 0]]⟩

def canonicalOutput1670 : ExponentCode := normalNode7120

theorem canonicalSound1670 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1670.moment H = canonicalOutput1670.moment H :=
  canonical_of_padded canonicalInput1670 canonicalOutput1670 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput1671 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 1, -1, 0], ![0, 2, -2, 0], ![2, -1, 2, -3]]⟩

def canonicalOutput1671 : ExponentCode := normalNode6969

theorem canonicalSound1671 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1671.moment H = canonicalOutput1671.moment H :=
  canonical_of_padded canonicalInput1671 canonicalOutput1671 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput1672 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, 1, -1, 0], ![0, 2, -1, -1], ![1, -1, 0, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput1672 : ExponentCode := normalNode4870

theorem canonicalSound1672 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1672.moment H = canonicalOutput1672.moment H :=
  canonical_of_padded canonicalInput1672 canonicalOutput1672 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput1673 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 1, -1, 0], ![0, 2, -1, -1], ![2, -1, 1, -2]]⟩

def canonicalOutput1673 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node829⟩

theorem canonicalSound1673 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1673.moment H = canonicalOutput1673.moment H :=
  canonical_of_padded canonicalInput1673 canonicalOutput1673 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput1674 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, 1, -1, 0], ![0, 2, 0, -2], ![1, -1, -1, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput1674 : ExponentCode := normalNode4889

theorem canonicalSound1674 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1674.moment H = canonicalOutput1674.moment H :=
  canonical_of_padded canonicalInput1674 canonicalOutput1674 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput1675 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, 1, -1, 0], ![0, 2, 0, -2], ![1, -1, 1, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput1675 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2162⟩

theorem canonicalSound1675 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1675.moment H = canonicalOutput1675.moment H :=
  canonical_of_padded canonicalInput1675 canonicalOutput1675 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput1676 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 1, -1, 0], ![0, 2, 1, -3], ![2, -1, -1, 0]]⟩

def canonicalOutput1676 : ExponentCode := normalNode9442

theorem canonicalSound1676 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1676.moment H = canonicalOutput1676.moment H :=
  canonical_of_padded canonicalInput1676 canonicalOutput1676 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput1677 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 1, -1, 0], ![1, -1, -1, 1], ![1, 2, 1, -4]]⟩

def canonicalOutput1677 : ExponentCode := normalNode9475

theorem canonicalSound1677 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1677.moment H = canonicalOutput1677.moment H :=
  canonical_of_padded canonicalInput1677 canonicalOutput1677 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput1678 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 1, -1, 0], ![1, -1, 1, -1], ![1, 2, -1, -2]]⟩

def canonicalOutput1678 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1332⟩

theorem canonicalSound1678 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1678.moment H = canonicalOutput1678.moment H :=
  canonical_of_padded canonicalInput1678 canonicalOutput1678 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput1679 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 1, -1, 0], ![1, -1, 2, -2], ![1, 2, -2, -1]]⟩

def canonicalOutput1679 : ExponentCode := normalNode6931

theorem canonicalSound1679 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1679.moment H = canonicalOutput1679.moment H :=
  canonical_of_padded canonicalInput1679 canonicalOutput1679 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput1680 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 1, -1, 0], ![1, 0, 2, -3], ![1, 1, -2, 0]]⟩

def canonicalOutput1680 : ExponentCode := normalNode7119

theorem canonicalSound1680 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1680.moment H = canonicalOutput1680.moment H :=
  canonical_of_padded canonicalInput1680 canonicalOutput1680 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput1681 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 1, -1, 0], ![1, 1, -2, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput1681 : ExponentCode := normalNode7119

theorem canonicalSound1681 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1681.moment H = canonicalOutput1681.moment H :=
  canonical_of_padded canonicalInput1681 canonicalOutput1681 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput1682 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, 1, 0, -1], ![0, 0, 1, -1], ![0, 1, 1, -2], ![2, 0, -3, 1]]⟩

def canonicalOutput1682 : ExponentCode := normalNode664

theorem canonicalSound1682 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1682.moment H = canonicalOutput1682.moment H :=
  canonical_of_padded canonicalInput1682 canonicalOutput1682 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1683 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, 1, 0, -1], ![0, 0, 2, -2], ![1, 0, -2, 1], ![1, 1, -1, -1]]⟩

def canonicalOutput1683 : ExponentCode := normalNode676

theorem canonicalSound1683 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1683.moment H = canonicalOutput1683.moment H :=
  canonical_of_padded canonicalInput1683 canonicalOutput1683 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput1684 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, 1, 0, -1], ![0, 1, -1, 0], ![1, -1, -1, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput1684 : ExponentCode := normalNode4888

theorem canonicalSound1684 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1684.moment H = canonicalOutput1684.moment H :=
  canonical_of_padded canonicalInput1684 canonicalOutput1684 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput1685 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, 1, 0, -1], ![0, 1, 0, -1], ![0, 0, 2, -2], ![2, 0, -3, 1]]⟩

def canonicalOutput1685 : ExponentCode := normalNode684

theorem canonicalSound1685 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1685.moment H = canonicalOutput1685.moment H :=
  canonical_of_padded canonicalInput1685 canonicalOutput1685 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1686 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, 1, 0, -1], ![0, 1, 0, -1], ![0, 1, 1, -2], ![2, -1, -2, 1]]⟩

def canonicalOutput1686 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2184⟩

theorem canonicalSound1686 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1686.moment H = canonicalOutput1686.moment H :=
  canonical_of_padded canonicalInput1686 canonicalOutput1686 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput1687 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -1, 1, -1], ![1, 1, -2, 0]]⟩

def canonicalOutput1687 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2185⟩

theorem canonicalSound1687 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1687.moment H = canonicalOutput1687.moment H :=
  canonical_of_padded canonicalInput1687 canonicalOutput1687 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput1688 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -2, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput1688 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1511⟩

theorem canonicalSound1688 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1688.moment H = canonicalOutput1688.moment H :=
  canonical_of_padded canonicalInput1688 canonicalOutput1688 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput1689 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, 1, -2], ![1, 0, -2, 1]]⟩

def canonicalOutput1689 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1511⟩

theorem canonicalSound1689 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1689.moment H = canonicalOutput1689.moment H :=
  canonical_of_padded canonicalInput1689 canonicalOutput1689 (by decide) (by decide)
    ⟨false, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput1690 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, 1, 0, -1], ![0, 1, 1, -2], ![1, -1, -1, 1], ![1, 1, -1, -1]]⟩

def canonicalOutput1690 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2194⟩

theorem canonicalSound1690 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1690.moment H = canonicalOutput1690.moment H :=
  canonical_of_padded canonicalInput1690 canonicalOutput1690 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput1691 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, 1, 0, -1], ![0, 1, 1, -2], ![1, 0, -2, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput1691 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1510⟩

theorem canonicalSound1691 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1691.moment H = canonicalOutput1691.moment H :=
  canonical_of_padded canonicalInput1691 canonicalOutput1691 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput1692 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, 1, 0, -1], ![0, 1, 1, -2], ![1, 0, 0, -1], ![1, 0, -2, 1]]⟩

def canonicalOutput1692 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1510⟩

theorem canonicalSound1692 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1692.moment H = canonicalOutput1692.moment H :=
  canonical_of_padded canonicalInput1692 canonicalOutput1692 (by decide) (by decide)
    ⟨false, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput1693 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 1, 0, -1], ![0, 1, 2, -3], ![2, 0, -3, 1]]⟩

def canonicalOutput1693 : ExponentCode := normalNode6120

theorem canonicalSound1693 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1693.moment H = canonicalOutput1693.moment H :=
  canonical_of_padded canonicalInput1693 canonicalOutput1693 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput1694 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 1, 0, -1], ![0, 2, -2, 0], ![2, -1, 1, -2]]⟩

def canonicalOutput1694 : ExponentCode := normalNode6979

theorem canonicalSound1694 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1694.moment H = canonicalOutput1694.moment H :=
  canonical_of_padded canonicalInput1694 canonicalOutput1694 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput1695 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, 1, 0, -1], ![0, 2, 0, -2], ![1, -1, 1, -1], ![1, 0, -2, 1]]⟩

def canonicalOutput1695 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2188⟩

theorem canonicalSound1695 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1695.moment H = canonicalOutput1695.moment H :=
  canonical_of_padded canonicalInput1695 canonicalOutput1695 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput1696 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 1, 0, -1], ![1, -1, 1, -1], ![1, 2, -2, -1]]⟩

def canonicalOutput1696 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node983⟩

theorem canonicalSound1696 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1696.moment H = canonicalOutput1696.moment H :=
  canonical_of_padded canonicalInput1696 canonicalOutput1696 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput1697 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 1, 0, -1], ![1, -1, 2, -2], ![1, 2, -3, 0]]⟩

def canonicalOutput1697 : ExponentCode := normalNode6809

theorem canonicalSound1697 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1697.moment H = canonicalOutput1697.moment H :=
  canonical_of_padded canonicalInput1697 canonicalOutput1697 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput1698 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 1, 0, -1], ![1, 0, -2, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput1698 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1239⟩

theorem canonicalSound1698 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1698.moment H = canonicalOutput1698.moment H :=
  canonical_of_padded canonicalInput1698 canonicalOutput1698 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput1699 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 1, 0, -1], ![1, 0, 2, -3], ![1, 1, -3, 1]]⟩

def canonicalOutput1699 : ExponentCode := normalNode6132

theorem canonicalSound1699 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1699.moment H = canonicalOutput1699.moment H :=
  canonical_of_padded canonicalInput1699 canonicalOutput1699 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput1700 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 1, 1, -2], ![0, 1, -2, 1], ![2, 0, 0, -2]]⟩

def canonicalOutput1700 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node408⟩

theorem canonicalSound1700 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1700.moment H = canonicalOutput1700.moment H :=
  canonical_of_padded canonicalInput1700 canonicalOutput1700 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1701 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, 1, 1, -2], ![0, 1, -1, 0], ![0, 1, -1, 0], ![2, -1, 0, -1]]⟩

def canonicalOutput1701 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2061⟩

theorem canonicalSound1701 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1701.moment H = canonicalOutput1701.moment H :=
  canonical_of_padded canonicalInput1701 canonicalOutput1701 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation199, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput1702 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, 1, 1, -2], ![0, 1, -1, 0], ![0, 1, 0, -1], ![2, -1, -1, 0]]⟩

def canonicalOutput1702 : ExponentCode := normalNode4887

theorem canonicalSound1702 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1702.moment H = canonicalOutput1702.moment H :=
  canonical_of_padded canonicalInput1702 canonicalOutput1702 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput1703 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 1, 1, -2], ![0, 1, 1, -2], ![2, 0, -3, 1]]⟩

def canonicalOutput1703 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code163

theorem canonicalSound1703 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1703.moment H = canonicalOutput1703.moment H :=
  canonical_of_padded canonicalInput1703 canonicalOutput1703 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput1704 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 1, 1, -2], ![0, 2, -2, 0], ![2, -1, 0, -1]]⟩

def canonicalOutput1704 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node496⟩

theorem canonicalSound1704 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1704.moment H = canonicalOutput1704.moment H :=
  canonical_of_padded canonicalInput1704 canonicalOutput1704 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput1705 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 1, 1, -2], ![0, 2, -1, -1], ![2, -1, -1, 0]]⟩

def canonicalOutput1705 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node483⟩

theorem canonicalSound1705 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1705.moment H = canonicalOutput1705.moment H :=
  canonical_of_padded canonicalInput1705 canonicalOutput1705 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput1706 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 1, 1, -2], ![1, -1, -1, 1], ![1, 2, -1, -2]]⟩

def canonicalOutput1706 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node676⟩

theorem canonicalSound1706 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1706.moment H = canonicalOutput1706.moment H :=
  canonical_of_padded canonicalInput1706 canonicalOutput1706 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput1707 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 1, 1, -2], ![1, -1, 0, 0], ![1, 2, -2, -1]]⟩

def canonicalOutput1707 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1248⟩

theorem canonicalSound1707 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1707.moment H = canonicalOutput1707.moment H :=
  canonical_of_padded canonicalInput1707 canonicalOutput1707 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput1708 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 1, 1, -2], ![1, -1, 1, -1], ![1, 2, -3, 0]]⟩

def canonicalOutput1708 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code490

theorem canonicalSound1708 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1708.moment H = canonicalOutput1708.moment H :=
  canonical_of_padded canonicalInput1708 canonicalOutput1708 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput1709 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 1, 1, -2], ![1, 0, -3, 2], ![1, 1, 1, -3]]⟩

def canonicalOutput1709 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code166

theorem canonicalSound1709 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1709.moment H = canonicalOutput1709.moment H :=
  canonical_of_padded canonicalInput1709 canonicalOutput1709 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput1710 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 1, 1, -2], ![1, 0, -2, 1], ![1, 1, 0, -2]]⟩

def canonicalOutput1710 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node409⟩

theorem canonicalSound1710 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1710.moment H = canonicalOutput1710.moment H :=
  canonical_of_padded canonicalInput1710 canonicalOutput1710 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput1711 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 1, 2, -3], ![0, 1, -2, 1], ![2, 0, -1, -1]]⟩

def canonicalOutput1711 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code170

theorem canonicalSound1711 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1711.moment H = canonicalOutput1711.moment H :=
  canonical_of_padded canonicalInput1711 canonicalOutput1711 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1712 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 1, 2, -3], ![0, 1, 0, -1], ![2, 0, -3, 1]]⟩

def canonicalOutput1712 : ExponentCode := normalNode6120

theorem canonicalSound1712 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1712.moment H = canonicalOutput1712.moment H :=
  canonical_of_padded canonicalInput1712 canonicalOutput1712 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput1713 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 1, 2, -3], ![0, 2, -2, 0], ![2, -1, -1, 0]]⟩

def canonicalOutput1713 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code670

theorem canonicalSound1713 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1713.moment H = canonicalOutput1713.moment H :=
  canonical_of_padded canonicalInput1713 canonicalOutput1713 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput1714 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 1, 2, -3], ![1, -1, 0, 0], ![1, 2, -3, 0]]⟩

def canonicalOutput1714 : ExponentCode := normalNode9112

theorem canonicalSound1714 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1714.moment H = canonicalOutput1714.moment H :=
  canonical_of_padded canonicalInput1714 canonicalOutput1714 (by decide) (by decide)
    ⟨true, true, canonicalPermutation1, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput1715 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 1, 2, -3], ![1, 0, -1, 0], ![1, 1, -2, 0]]⟩

def canonicalOutput1715 : ExponentCode := normalNode7119

theorem canonicalSound1715 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1715.moment H = canonicalOutput1715.moment H :=
  canonical_of_padded canonicalInput1715 canonicalOutput1715 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput1716 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 1, 2, -3], ![1, 0, 0, -1], ![1, 1, -3, 1]]⟩

def canonicalOutput1716 : ExponentCode := normalNode6132

theorem canonicalSound1716 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1716.moment H = canonicalOutput1716.moment H :=
  canonical_of_padded canonicalInput1716 canonicalOutput1716 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput1717 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 2, -3, 1], ![0, 1, 1, -2], ![2, -1, 1, -2]]⟩

def canonicalOutput1717 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code177

theorem canonicalSound1717 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1717.moment H = canonicalOutput1717.moment H :=
  canonical_of_padded canonicalInput1717 canonicalOutput1717 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1718 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 2, -3, 1], ![1, -1, 0, 0], ![1, 1, 2, -4]]⟩

def canonicalOutput1718 : ExponentCode := normalNode10310

theorem canonicalSound1718 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1718.moment H = canonicalOutput1718.moment H :=
  canonical_of_padded canonicalInput1718 canonicalOutput1718 (by decide) (by decide)
    ⟨true, true, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput1719 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 2, -3, 1], ![1, 0, -1, 0], ![1, 0, 3, -4]]⟩

def canonicalOutput1719 : ExponentCode := normalNode6134

theorem canonicalSound1719 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1719.moment H = canonicalOutput1719.moment H :=
  canonical_of_padded canonicalInput1719 canonicalOutput1719 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput1720 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 2, -3, 1], ![1, 0, 0, -1], ![1, 0, 2, -3]]⟩

def canonicalOutput1720 : ExponentCode := normalNode6120

theorem canonicalSound1720 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1720.moment H = canonicalOutput1720.moment H :=
  canonical_of_padded canonicalInput1720 canonicalOutput1720 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput1721 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 2, -3, 1], ![1, 0, 1, -2], ![1, 0, 1, -2]]⟩

def canonicalOutput1721 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code163

theorem canonicalSound1721 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1721.moment H = canonicalOutput1721.moment H :=
  canonical_of_padded canonicalInput1721 canonicalOutput1721 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput1722 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, 2, -2, 0], ![0, 1, -1, 0], ![1, -1, 1, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput1722 : ExponentCode := normalNode716

theorem canonicalSound1722 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1722.moment H = canonicalOutput1722.moment H :=
  canonical_of_padded canonicalInput1722 canonicalOutput1722 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1723 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, 2, -2, 0], ![0, 1, -1, 0], ![1, -1, 2, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput1723 : ExponentCode := normalNode717

theorem canonicalSound1723 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1723.moment H = canonicalOutput1723.moment H :=
  canonical_of_padded canonicalInput1723 canonicalOutput1723 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1724 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 2, -2, 0], ![0, 1, -1, 0], ![2, -1, 2, -3]]⟩

def canonicalOutput1724 : ExponentCode := normalNode6969

theorem canonicalSound1724 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1724.moment H = canonicalOutput1724.moment H :=
  canonical_of_padded canonicalInput1724 canonicalOutput1724 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput1725 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, 2, -2, 0], ![0, 1, 0, -1], ![1, -1, 2, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput1725 : ExponentCode := normalNode721

theorem canonicalSound1725 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1725.moment H = canonicalOutput1725.moment H :=
  canonical_of_padded canonicalInput1725 canonicalOutput1725 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1726 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 2, -2, 0], ![1, -1, -1, 1], ![1, 1, 2, -4]]⟩

def canonicalOutput1726 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code604

theorem canonicalSound1726 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1726.moment H = canonicalOutput1726.moment H :=
  canonical_of_padded canonicalInput1726 canonicalOutput1726 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput1727 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 2, -2, 0], ![1, -1, 0, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput1727 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1270⟩

theorem canonicalSound1727 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1727.moment H = canonicalOutput1727.moment H :=
  canonical_of_padded canonicalInput1727 canonicalOutput1727 (by decide) (by decide)
    ⟨true, true, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

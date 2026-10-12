import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes00
import NoFourMUBs.Step2.SOS.MomentCodes02
import NoFourMUBs.Step2.SOS.MomentCodes06
import NoFourMUBs.Step2.SOS.MomentCodes08
import NoFourMUBs.Step2.SOS.NormalizationNodes002
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes10
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes6
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput1728 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 2, -2, 0], ![1, -1, 1, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput1728 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node488⟩

theorem canonicalSound1728 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1728.moment H = canonicalOutput1728.moment H :=
  canonical_of_padded canonicalInput1728 canonicalOutput1728 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput1729 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 2, -2, 0], ![1, -1, 2, -2], ![1, 1, -1, -1]]⟩

def canonicalOutput1729 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code542

theorem canonicalSound1729 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1729.moment H = canonicalOutput1729.moment H :=
  canonical_of_padded canonicalInput1729 canonicalOutput1729 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput1730 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 2, -2, 0], ![1, 0, -1, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput1730 : ExponentCode := normalNode7120

theorem canonicalSound1730 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1730.moment H = canonicalOutput1730.moment H :=
  canonical_of_padded canonicalInput1730 canonicalOutput1730 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput1731 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 2, -2, 0], ![1, 0, 1, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput1731 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node804⟩

theorem canonicalSound1731 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1731.moment H = canonicalOutput1731.moment H :=
  canonical_of_padded canonicalInput1731 canonicalOutput1731 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput1732 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 2, -2, 0], ![1, 0, 2, -3], ![1, 0, -1, 0]]⟩

def canonicalOutput1732 : ExponentCode := normalNode7120

theorem canonicalSound1732 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1732.moment H = canonicalOutput1732.moment H :=
  canonical_of_padded canonicalInput1732 canonicalOutput1732 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput1733 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, 2, -1, -1], ![0, 1, 0, -1], ![1, -1, 2, -2], ![1, 0, -2, 1]]⟩

def canonicalOutput1733 : ExponentCode := normalNode722

theorem canonicalSound1733 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1733.moment H = canonicalOutput1733.moment H :=
  canonical_of_padded canonicalInput1733 canonicalOutput1733 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1734 : ExponentCode := ⟨5, 4, ![![-2, -2, 1, 3], ![0, 2, -1, -1], ![0, 1, 1, -2], ![1, -1, 1, -1], ![1, 0, -2, 1]]⟩

def canonicalOutput1734 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code178

theorem canonicalSound1734 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1734.moment H = canonicalOutput1734.moment H :=
  canonical_of_padded canonicalInput1734 canonicalOutput1734 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1735 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 2, -1, -1], ![1, -1, 1, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput1735 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node502⟩

theorem canonicalSound1735 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1735.moment H = canonicalOutput1735.moment H :=
  canonical_of_padded canonicalInput1735 canonicalOutput1735 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput1736 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 2, -1, -1], ![1, -1, 2, -2], ![1, 1, -2, 0]]⟩

def canonicalOutput1736 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code547

theorem canonicalSound1736 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1736.moment H = canonicalOutput1736.moment H :=
  canonical_of_padded canonicalInput1736 canonicalOutput1736 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput1737 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 2, -1, -1], ![1, 0, 1, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput1737 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1036⟩

theorem canonicalSound1737 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1737.moment H = canonicalOutput1737.moment H :=
  canonical_of_padded canonicalInput1737 canonicalOutput1737 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation152, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput1738 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 2, -1, -1], ![1, 0, 2, -3], ![1, 0, -2, 1]]⟩

def canonicalOutput1738 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code170

theorem canonicalSound1738 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1738.moment H = canonicalOutput1738.moment H :=
  canonical_of_padded canonicalInput1738 canonicalOutput1738 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput1739 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 2, 0, -2], ![1, -1, 1, -1], ![1, 1, -2, 0]]⟩

def canonicalOutput1739 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node484⟩

theorem canonicalSound1739 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1739.moment H = canonicalOutput1739.moment H :=
  canonical_of_padded canonicalInput1739 canonicalOutput1739 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput1740 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 2, 0, -2], ![1, -1, 2, -2], ![1, 1, -3, 1]]⟩

def canonicalOutput1740 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code177

theorem canonicalSound1740 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1740.moment H = canonicalOutput1740.moment H :=
  canonical_of_padded canonicalInput1740 canonicalOutput1740 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput1741 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 2, 0, -2], ![1, 0, -2, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput1741 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node408⟩

theorem canonicalSound1741 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1741.moment H = canonicalOutput1741.moment H :=
  canonical_of_padded canonicalInput1741 canonicalOutput1741 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput1742 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 2, 1, -3], ![1, -1, 0, 0], ![1, 1, -2, 0]]⟩

def canonicalOutput1742 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1067⟩

theorem canonicalSound1742 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1742.moment H = canonicalOutput1742.moment H :=
  canonical_of_padded canonicalInput1742 canonicalOutput1742 (by decide) (by decide)
    ⟨true, true, canonicalPermutation1, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput1743 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 2, 1, -3], ![1, 0, -3, 2], ![1, 0, 1, -2]]⟩

def canonicalOutput1743 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code164

theorem canonicalSound1743 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1743.moment H = canonicalOutput1743.moment H :=
  canonical_of_padded canonicalInput1743 canonicalOutput1743 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput1744 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 2, 2, -4], ![1, -1, 0, 0], ![1, 1, -3, 1]]⟩

def canonicalOutput1744 : ExponentCode := normalNode9041

theorem canonicalSound1744 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1744.moment H = canonicalOutput1744.moment H :=
  canonical_of_padded canonicalInput1744 canonicalOutput1744 (by decide) (by decide)
    ⟨true, true, canonicalPermutation1, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput1745 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 2, 2, -4], ![1, 0, -2, 1], ![1, 0, -1, 0]]⟩

def canonicalOutput1745 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node830⟩

theorem canonicalSound1745 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1745.moment H = canonicalOutput1745.moment H :=
  canonical_of_padded canonicalInput1745 canonicalOutput1745 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput1746 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 3, -3, 0], ![1, -1, 0, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput1746 : ExponentCode := normalNode8908

theorem canonicalSound1746 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1746.moment H = canonicalOutput1746.moment H :=
  canonical_of_padded canonicalInput1746 canonicalOutput1746 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation154, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput1747 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 3, -3, 0], ![1, -1, 1, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput1747 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code445

theorem canonicalSound1747 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1747.moment H = canonicalOutput1747.moment H :=
  canonical_of_padded canonicalInput1747 canonicalOutput1747 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput1748 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 3, -3, 0], ![1, -1, 2, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput1748 : ExponentCode := normalNode6712

theorem canonicalSound1748 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1748.moment H = canonicalOutput1748.moment H :=
  canonical_of_padded canonicalInput1748 canonicalOutput1748 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput1749 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 3, -3, 0], ![1, 0, 0, -1], ![1, -1, 2, -2]]⟩

def canonicalOutput1749 : ExponentCode := normalNode6712

theorem canonicalSound1749 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1749.moment H = canonicalOutput1749.moment H :=
  canonical_of_padded canonicalInput1749 canonicalOutput1749 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput1750 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 3, -2, -1], ![1, -1, 0, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput1750 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1011⟩

theorem canonicalSound1750 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1750.moment H = canonicalOutput1750.moment H :=
  canonical_of_padded canonicalInput1750 canonicalOutput1750 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation154, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput1751 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 3, -2, -1], ![1, -1, 1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput1751 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node948⟩

theorem canonicalSound1751 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1751.moment H = canonicalOutput1751.moment H :=
  canonical_of_padded canonicalInput1751 canonicalOutput1751 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput1752 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 3, -2, -1], ![1, -1, 2, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput1752 : ExponentCode := normalNode7108

theorem canonicalSound1752 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1752.moment H = canonicalOutput1752.moment H :=
  canonical_of_padded canonicalInput1752 canonicalOutput1752 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput1753 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 3, -2, -1], ![1, 0, -1, 0], ![1, -1, 2, -2]]⟩

def canonicalOutput1753 : ExponentCode := normalNode7108

theorem canonicalSound1753 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1753.moment H = canonicalOutput1753.moment H :=
  canonical_of_padded canonicalInput1753 canonicalOutput1753 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput1754 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 3, -1, -2], ![1, -1, -1, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput1754 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node674⟩

theorem canonicalSound1754 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1754.moment H = canonicalOutput1754.moment H :=
  canonical_of_padded canonicalInput1754 canonicalOutput1754 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput1755 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 3, -1, -2], ![1, -1, 1, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput1755 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1074⟩

theorem canonicalSound1755 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1755.moment H = canonicalOutput1755.moment H :=
  canonical_of_padded canonicalInput1755 canonicalOutput1755 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation152, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput1756 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 3, 1, -4], ![1, -1, -1, 1], ![1, 0, -1, 0]]⟩

def canonicalOutput1756 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1019⟩

theorem canonicalSound1756 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1756.moment H = canonicalOutput1756.moment H :=
  canonical_of_padded canonicalInput1756 canonicalOutput1756 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation155, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput1757 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 3, 1, -4], ![1, -1, 0, 0], ![1, 0, -2, 1]]⟩

def canonicalOutput1757 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1020⟩

theorem canonicalSound1757 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1757.moment H = canonicalOutput1757.moment H :=
  canonical_of_padded canonicalInput1757 canonicalOutput1757 (by decide) (by decide)
    ⟨true, true, canonicalPermutation1, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput1758 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![0, 3, 1, -4], ![1, 0, -2, 1], ![1, -1, 0, 0]]⟩

def canonicalOutput1758 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1020⟩

theorem canonicalSound1758 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1758.moment H = canonicalOutput1758.moment H :=
  canonical_of_padded canonicalInput1758 canonicalOutput1758 (by decide) (by decide)
    ⟨true, true, canonicalPermutation1, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput1759 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![1, -1, 1, -1], ![0, 2, -2, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput1759 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node488⟩

theorem canonicalSound1759 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1759.moment H = canonicalOutput1759.moment H :=
  canonical_of_padded canonicalInput1759 canonicalOutput1759 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput1760 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![1, -1, 1, -1], ![0, 2, -1, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput1760 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node502⟩

theorem canonicalSound1760 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1760.moment H = canonicalOutput1760.moment H :=
  canonical_of_padded canonicalInput1760 canonicalOutput1760 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput1761 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![1, -1, 1, -1], ![0, 2, 0, -2], ![1, 1, -2, 0]]⟩

def canonicalOutput1761 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node484⟩

theorem canonicalSound1761 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1761.moment H = canonicalOutput1761.moment H :=
  canonical_of_padded canonicalInput1761 canonicalOutput1761 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput1762 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![1, -1, 1, -1], ![0, 3, -2, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput1762 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node948⟩

theorem canonicalSound1762 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1762.moment H = canonicalOutput1762.moment H :=
  canonical_of_padded canonicalInput1762 canonicalOutput1762 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput1763 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![1, -1, 1, -1], ![0, 3, -1, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput1763 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1074⟩

theorem canonicalSound1763 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1763.moment H = canonicalOutput1763.moment H :=
  canonical_of_padded canonicalInput1763 canonicalOutput1763 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation152, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput1764 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![1, -1, 2, -2], ![0, 1, -2, 1], ![1, 2, -1, -2]]⟩

def canonicalOutput1764 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code173

theorem canonicalSound1764 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1764.moment H = canonicalOutput1764.moment H :=
  canonical_of_padded canonicalInput1764 canonicalOutput1764 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1765 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![1, -1, 2, -2], ![0, 2, -2, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput1765 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code542

theorem canonicalSound1765 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1765.moment H = canonicalOutput1765.moment H :=
  canonical_of_padded canonicalInput1765 canonicalOutput1765 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput1766 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![1, -1, 2, -2], ![0, 2, -1, -1], ![1, 1, -2, 0]]⟩

def canonicalOutput1766 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code547

theorem canonicalSound1766 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1766.moment H = canonicalOutput1766.moment H :=
  canonical_of_padded canonicalInput1766 canonicalOutput1766 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput1767 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![1, -1, 2, -2], ![0, 3, -3, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput1767 : ExponentCode := normalNode6712

theorem canonicalSound1767 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1767.moment H = canonicalOutput1767.moment H :=
  canonical_of_padded canonicalInput1767 canonicalOutput1767 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput1768 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![1, -1, 2, -2], ![0, 3, -2, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput1768 : ExponentCode := normalNode7108

theorem canonicalSound1768 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1768.moment H = canonicalOutput1768.moment H :=
  canonical_of_padded canonicalInput1768 canonicalOutput1768 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput1769 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![1, -1, 2, -2], ![0, 3, -1, -2], ![1, 0, -2, 1]]⟩

def canonicalOutput1769 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code183

theorem canonicalSound1769 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1769.moment H = canonicalOutput1769.moment H :=
  canonical_of_padded canonicalInput1769 canonicalOutput1769 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1770 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![1, 0, 1, -2], ![0, 1, -2, 1], ![1, 1, 0, -2]]⟩

def canonicalOutput1770 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node409⟩

theorem canonicalSound1770 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1770.moment H = canonicalOutput1770.moment H :=
  canonical_of_padded canonicalInput1770 canonicalOutput1770 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1771 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![1, 0, 2, -3], ![0, 1, -3, 2], ![1, 1, 0, -2]]⟩

def canonicalOutput1771 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code167

theorem canonicalSound1771 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1771.moment H = canonicalOutput1771.moment H :=
  canonical_of_padded canonicalInput1771 canonicalOutput1771 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1772 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![1, 0, 2, -3], ![0, 1, -2, 1], ![1, 1, -1, -1]]⟩

def canonicalOutput1772 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code175

theorem canonicalSound1772 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1772.moment H = canonicalOutput1772.moment H :=
  canonical_of_padded canonicalInput1772 canonicalOutput1772 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1773 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![1, 0, 2, -3], ![0, 3, -2, -1], ![1, -1, -1, 1]]⟩

def canonicalOutput1773 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code182

theorem canonicalSound1773 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1773.moment H = canonicalOutput1773.moment H :=
  canonical_of_padded canonicalInput1773 canonicalOutput1773 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1774 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![1, 1, -3, 1], ![0, 1, 1, -2], ![1, 0, 1, -2]]⟩

def canonicalOutput1774 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code179

theorem canonicalSound1774 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1774.moment H = canonicalOutput1774.moment H :=
  canonical_of_padded canonicalInput1774 canonicalOutput1774 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1775 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![1, 1, -3, 1], ![0, 1, 2, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput1775 : ExponentCode := normalNode6132

theorem canonicalSound1775 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1775.moment H = canonicalOutput1775.moment H :=
  canonical_of_padded canonicalInput1775 canonicalOutput1775 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput1776 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![1, 1, -3, 1], ![0, 1, 3, -4], ![1, 0, -1, 0]]⟩

def canonicalOutput1776 : ExponentCode := normalNode6126

theorem canonicalSound1776 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1776.moment H = canonicalOutput1776.moment H :=
  canonical_of_padded canonicalInput1776 canonicalOutput1776 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput1777 : ExponentCode := ⟨4, 4, ![![-2, -2, 1, 3], ![1, 1, -3, 1], ![0, 2, 0, -2], ![1, -1, 2, -2]]⟩

def canonicalOutput1777 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code177

theorem canonicalSound1777 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1777.moment H = canonicalOutput1777.moment H :=
  canonical_of_padded canonicalInput1777 canonicalOutput1777 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput1778 : ExponentCode := ⟨3, 4, ![![-2, -2, 2, 2], ![-2, 2, 2, -2], ![4, 0, -4, 0]]⟩

def canonicalOutput1778 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code10

theorem canonicalSound1778 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1778.moment H = canonicalOutput1778.moment H :=
  canonical_of_padded canonicalInput1778 canonicalOutput1778 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput1779 : ExponentCode := ⟨3, 4, ![![-2, -2, 2, 2], ![-2, 3, 1, -2], ![4, -1, -3, 0]]⟩

def canonicalOutput1779 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code11

theorem canonicalSound1779 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1779.moment H = canonicalOutput1779.moment H :=
  canonical_of_padded canonicalInput1779 canonicalOutput1779 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput1780 : ExponentCode := ⟨3, 4, ![![-2, -2, 2, 2], ![-2, 4, -2, 0], ![4, -2, 0, -2]]⟩

def canonicalOutput1780 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code12

theorem canonicalSound1780 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1780.moment H = canonicalOutput1780.moment H :=
  canonical_of_padded canonicalInput1780 canonicalOutput1780 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation161, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput1781 : ExponentCode := ⟨3, 4, ![![-2, -2, 2, 2], ![-2, 4, -1, -1], ![4, -2, -1, -1]]⟩

def canonicalOutput1781 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code15

theorem canonicalSound1781 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1781.moment H = canonicalOutput1781.moment H :=
  canonical_of_padded canonicalInput1781 canonicalOutput1781 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput1782 : ExponentCode := ⟨3, 4, ![![-2, -2, 2, 2], ![-2, 4, 0, -2], ![4, -2, -2, 0]]⟩

def canonicalOutput1782 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code12

theorem canonicalSound1782 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1782.moment H = canonicalOutput1782.moment H :=
  canonical_of_padded canonicalInput1782 canonicalOutput1782 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput1783 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![-1, 1, -1, 1], ![0, 1, -1, 0], ![1, 0, 1, -2], ![2, 0, -1, -1]]⟩

def canonicalOutput1783 : ExponentCode := normalNode934

theorem canonicalSound1783 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1783.moment H = canonicalOutput1783.moment H :=
  canonical_of_padded canonicalInput1783 canonicalOutput1783 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput1784 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![-1, 1, -1, 1], ![0, 1, -1, 0], ![1, 1, 0, -2], ![2, -1, 0, -1]]⟩

def canonicalOutput1784 : ExponentCode := normalNode934

theorem canonicalSound1784 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1784.moment H = canonicalOutput1784.moment H :=
  canonical_of_padded canonicalInput1784 canonicalOutput1784 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput1785 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![-1, 1, -1, 1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![2, 0, -1, -1]]⟩

def canonicalOutput1785 : ExponentCode := normalNode5801

theorem canonicalSound1785 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1785.moment H = canonicalOutput1785.moment H :=
  canonical_of_padded canonicalInput1785 canonicalOutput1785 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput1786 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![-1, 1, -1, 1], ![0, 1, 0, -1], ![1, 0, 1, -2], ![2, 0, -2, 0]]⟩

def canonicalOutput1786 : ExponentCode := normalNode935

theorem canonicalSound1786 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1786.moment H = canonicalOutput1786.moment H :=
  canonical_of_padded canonicalInput1786 canonicalOutput1786 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput1787 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![-1, 1, -1, 1], ![0, 1, 0, -1], ![1, 1, 0, -2], ![2, -1, -1, 0]]⟩

def canonicalOutput1787 : ExponentCode := normalNode940

theorem canonicalSound1787 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1787.moment H = canonicalOutput1787.moment H :=
  canonical_of_padded canonicalInput1787 canonicalOutput1787 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation158, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput1788 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![-1, 1, -1, 1], ![0, 2, -2, 0], ![3, -1, 1, -3]]⟩

def canonicalOutput1788 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code566

theorem canonicalSound1788 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1788.moment H = canonicalOutput1788.moment H :=
  canonical_of_padded canonicalInput1788 canonicalOutput1788 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput1789 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![-1, 1, -1, 1], ![0, 2, -1, -1], ![1, 0, -1, 0], ![2, -1, 1, -2]]⟩

def canonicalOutput1789 : ExponentCode := normalNode735

theorem canonicalSound1789 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1789.moment H = canonicalOutput1789.moment H :=
  canonical_of_padded canonicalInput1789 canonicalOutput1789 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation153, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput1790 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![-1, 1, -1, 1], ![0, 2, -1, -1], ![1, 0, 0, -1], ![2, -1, 0, -1]]⟩

def canonicalOutput1790 : ExponentCode := normalNode926

theorem canonicalSound1790 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1790.moment H = canonicalOutput1790.moment H :=
  canonical_of_padded canonicalInput1790 canonicalOutput1790 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput1791 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![-1, 1, -1, 1], ![0, 2, -1, -1], ![1, 0, 1, -2], ![2, -1, -1, 0]]⟩

def canonicalOutput1791 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code184

theorem canonicalSound1791 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1791.moment H = canonicalOutput1791.moment H :=
  canonical_of_padded canonicalInput1791 canonicalOutput1791 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation155, canonicalPermutation9⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

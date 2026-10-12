import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes00
import NoFourMUBs.Step2.SOS.MomentCodes01
import NoFourMUBs.Step2.SOS.MomentCodes02
import NoFourMUBs.Step2.SOS.MomentCodes03
import NoFourMUBs.Step2.SOS.MomentCodes08
import NoFourMUBs.Step2.SOS.MomentCodes09
import NoFourMUBs.Step2.SOS.MomentCodes10
import NoFourMUBs.Step2.SOS.MomentCodes17
import NoFourMUBs.Step2.SOS.MomentCodes19
import NoFourMUBs.Step2.SOS.MomentCodes20
import NoFourMUBs.Step2.SOS.MomentCodes21
import NoFourMUBs.Step2.SOS.NormalizationNodes002
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes11
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes30
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes36
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput1792 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![-1, 1, -1, 1], ![0, 2, 0, -2], ![1, 0, -1, 0], ![2, -1, 0, -1]]⟩

def canonicalOutput1792 : ExponentCode := normalNode935

theorem canonicalSound1792 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1792.moment H = canonicalOutput1792.moment H :=
  canonical_of_padded canonicalInput1792 canonicalOutput1792 (by decide) (by decide)
    ⟨false, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput1793 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![-1, 1, -1, 1], ![0, 2, 0, -2], ![1, 0, 0, -1], ![2, -1, -1, 0]]⟩

def canonicalOutput1793 : ExponentCode := normalNode942

theorem canonicalSound1793 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1793.moment H = canonicalOutput1793.moment H :=
  canonical_of_padded canonicalInput1793 canonicalOutput1793 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput1794 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![-1, 1, -1, 1], ![1, -1, 1, -1], ![2, 2, -2, -2]]⟩

def canonicalOutput1794 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1398

theorem canonicalSound1794 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1794.moment H = canonicalOutput1794.moment H :=
  canonical_of_padded canonicalInput1794 canonicalOutput1794 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput1795 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![-1, 1, -1, 1], ![1, 0, 0, -1], ![2, 1, -1, -2]]⟩

def canonicalOutput1795 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1331⟩

theorem canonicalSound1795 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1795.moment H = canonicalOutput1795.moment H :=
  canonical_of_padded canonicalInput1795 canonicalOutput1795 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput1796 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![-1, 1, -1, 1], ![1, 0, 1, -2], ![2, 1, -2, -1]]⟩

def canonicalOutput1796 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1143

theorem canonicalSound1796 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1796.moment H = canonicalOutput1796.moment H :=
  canonical_of_padded canonicalInput1796 canonicalOutput1796 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput1797 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![-1, 1, -1, 1], ![1, 1, -2, 0], ![2, 0, 1, -3]]⟩

def canonicalOutput1797 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code597

theorem canonicalSound1797 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1797.moment H = canonicalOutput1797.moment H :=
  canonical_of_padded canonicalInput1797 canonicalOutput1797 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput1798 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![-1, 1, -1, 1], ![1, 1, -1, -1], ![2, 0, 0, -2]]⟩

def canonicalOutput1798 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node497⟩

theorem canonicalSound1798 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1798.moment H = canonicalOutput1798.moment H :=
  canonical_of_padded canonicalInput1798 canonicalOutput1798 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput1799 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![-1, 1, -1, 1], ![1, 2, -2, -1], ![2, -1, 1, -2]]⟩

def canonicalOutput1799 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1313

theorem canonicalSound1799 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1799.moment H = canonicalOutput1799.moment H :=
  canonical_of_padded canonicalInput1799 canonicalOutput1799 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput1800 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![-1, 1, 0, 0], ![0, 2, -1, -1], ![1, 0, -1, 0], ![2, -1, 0, -1]]⟩

def canonicalOutput1800 : ExponentCode := normalNode893

theorem canonicalSound1800 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1800.moment H = canonicalOutput1800.moment H :=
  canonical_of_padded canonicalInput1800 canonicalOutput1800 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation154, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput1801 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![-1, 1, 0, 0], ![0, 2, -1, -1], ![1, 0, 0, -1], ![2, -1, -1, 0]]⟩

def canonicalOutput1801 : ExponentCode := normalNode893

theorem canonicalSound1801 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1801.moment H = canonicalOutput1801.moment H :=
  canonical_of_padded canonicalInput1801 canonicalOutput1801 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation154, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput1802 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![-1, 2, -2, 1], ![0, 1, 0, -1], ![1, -1, 1, -1], ![2, 0, -1, -1]]⟩

def canonicalOutput1802 : ExponentCode := normalNode735

theorem canonicalSound1802 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1802.moment H = canonicalOutput1802.moment H :=
  canonical_of_padded canonicalInput1802 canonicalOutput1802 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput1803 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![-1, 2, -2, 1], ![0, 1, 1, -2], ![1, 0, -1, 0], ![2, -1, 0, -1]]⟩

def canonicalOutput1803 : ExponentCode := normalNode742

theorem canonicalSound1803 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1803.moment H = canonicalOutput1803.moment H :=
  canonical_of_padded canonicalInput1803 canonicalOutput1803 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation154, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput1804 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![-1, 2, -2, 1], ![0, 1, 1, -2], ![3, -1, -1, -1]]⟩

def canonicalOutput1804 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code645

theorem canonicalSound1804 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1804.moment H = canonicalOutput1804.moment H :=
  canonical_of_padded canonicalInput1804 canonicalOutput1804 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput1805 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![-1, 2, -2, 1], ![1, -1, 1, -1], ![2, 1, -1, -2]]⟩

def canonicalOutput1805 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1313

theorem canonicalSound1805 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1805.moment H = canonicalOutput1805.moment H :=
  canonical_of_padded canonicalInput1805 canonicalOutput1805 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput1806 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![-1, 2, -2, 1], ![1, 0, 0, -1], ![2, 0, 0, -2]]⟩

def canonicalOutput1806 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node825⟩

theorem canonicalSound1806 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1806.moment H = canonicalOutput1806.moment H :=
  canonical_of_padded canonicalInput1806 canonicalOutput1806 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput1807 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![-1, 2, -2, 1], ![1, 0, 1, -2], ![2, 0, -1, -1]]⟩

def canonicalOutput1807 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code579

theorem canonicalSound1807 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1807.moment H = canonicalOutput1807.moment H :=
  canonical_of_padded canonicalInput1807 canonicalOutput1807 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation151, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput1808 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![-1, 2, -2, 1], ![1, 1, -1, -1], ![2, -1, 1, -2]]⟩

def canonicalOutput1808 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1305

theorem canonicalSound1808 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1808.moment H = canonicalOutput1808.moment H :=
  canonical_of_padded canonicalInput1808 canonicalOutput1808 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput1809 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![-1, 2, -2, 1], ![1, 1, 0, -2], ![2, -1, 0, -1]]⟩

def canonicalOutput1809 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code579

theorem canonicalSound1809 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1809.moment H = canonicalOutput1809.moment H :=
  canonical_of_padded canonicalInput1809 canonicalOutput1809 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput1810 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![-1, 2, -2, 1], ![1, 1, 1, -3], ![2, -1, -1, 0]]⟩

def canonicalOutput1810 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code645

theorem canonicalSound1810 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1810.moment H = canonicalOutput1810.moment H :=
  canonical_of_padded canonicalInput1810 canonicalOutput1810 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation155, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput1811 : ExponentCode := ⟨3, 4, ![![-2, -2, 2, 2], ![-1, 2, -2, 1], ![3, 0, 0, -3]]⟩

def canonicalOutput1811 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node101⟩

theorem canonicalSound1811 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1811.moment H = canonicalOutput1811.moment H :=
  canonical_of_padded canonicalInput1811 canonicalOutput1811 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput1812 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![-1, 2, -1, 0], ![1, -1, 1, -1], ![2, 1, -2, -1]]⟩

def canonicalOutput1812 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1143

theorem canonicalSound1812 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1812.moment H = canonicalOutput1812.moment H :=
  canonical_of_padded canonicalInput1812 canonicalOutput1812 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput1813 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![-1, 2, -1, 0], ![1, 1, -2, 0], ![2, -1, 1, -2]]⟩

def canonicalOutput1813 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code579

theorem canonicalSound1813 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1813.moment H = canonicalOutput1813.moment H :=
  canonical_of_padded canonicalInput1813 canonicalOutput1813 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput1814 : ExponentCode := ⟨3, 4, ![![-2, -2, 2, 2], ![-1, 2, 2, -3], ![3, 0, -4, 1]]⟩

def canonicalOutput1814 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code11

theorem canonicalSound1814 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1814.moment H = canonicalOutput1814.moment H :=
  canonical_of_padded canonicalInput1814 canonicalOutput1814 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput1815 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![-1, 3, -3, 1], ![1, 0, 0, -1], ![2, -1, 1, -2]]⟩

def canonicalOutput1815 : ExponentCode := normalNode6954

theorem canonicalSound1815 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1815.moment H = canonicalOutput1815.moment H :=
  canonical_of_padded canonicalInput1815 canonicalOutput1815 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput1816 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![-1, 3, -3, 1], ![1, 0, 1, -2], ![2, -1, 0, -1]]⟩

def canonicalOutput1816 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code569

theorem canonicalSound1816 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1816.moment H = canonicalOutput1816.moment H :=
  canonical_of_padded canonicalInput1816 canonicalOutput1816 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput1817 : ExponentCode := ⟨3, 4, ![![-2, -2, 2, 2], ![-1, 3, -3, 1], ![3, -1, 1, -3]]⟩

def canonicalOutput1817 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code68

theorem canonicalSound1817 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1817.moment H = canonicalOutput1817.moment H :=
  canonical_of_padded canonicalInput1817 canonicalOutput1817 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput1818 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![-1, 3, -2, 0], ![1, 0, 1, -2], ![2, -1, -1, 0]]⟩

def canonicalOutput1818 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code639

theorem canonicalSound1818 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1818.moment H = canonicalOutput1818.moment H :=
  canonical_of_padded canonicalInput1818 canonicalOutput1818 (by decide) (by decide)
    ⟨true, true, canonicalPermutation1, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput1819 : ExponentCode := ⟨3, 4, ![![-2, -2, 2, 2], ![-1, 3, -1, -1], ![3, -1, -1, -1]]⟩

def canonicalOutput1819 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node114⟩

theorem canonicalSound1819 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1819.moment H = canonicalOutput1819.moment H :=
  canonical_of_padded canonicalInput1819 canonicalOutput1819 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput1820 : ExponentCode := ⟨3, 4, ![![-2, -2, 2, 2], ![-1, 3, 0, -2], ![3, -1, -2, 0]]⟩

def canonicalOutput1820 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node110⟩

theorem canonicalSound1820 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1820.moment H = canonicalOutput1820.moment H :=
  canonical_of_padded canonicalInput1820 canonicalOutput1820 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput1821 : ExponentCode := ⟨3, 4, ![![-2, -2, 2, 2], ![-1, 4, -3, 0], ![3, -2, 1, -2]]⟩

def canonicalOutput1821 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code11

theorem canonicalSound1821 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1821.moment H = canonicalOutput1821.moment H :=
  canonical_of_padded canonicalInput1821 canonicalOutput1821 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput1822 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, -1, -1, 2], ![0, 1, -1, 0], ![2, 2, 0, -4]]⟩

def canonicalOutput1822 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1055⟩

theorem canonicalSound1822 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1822.moment H = canonicalOutput1822.moment H :=
  canonical_of_padded canonicalInput1822 canonicalOutput1822 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput1823 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, -1, -1, 2], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 2, 0, -3]]⟩

def canonicalOutput1823 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2333⟩

theorem canonicalSound1823 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1823.moment H = canonicalOutput1823.moment H :=
  canonical_of_padded canonicalInput1823 canonicalOutput1823 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput1824 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, -1, -1, 2], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 2, -1, -2]]⟩

def canonicalOutput1824 : ExponentCode := normalNode5767

theorem canonicalSound1824 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1824.moment H = canonicalOutput1824.moment H :=
  canonical_of_padded canonicalInput1824 canonicalOutput1824 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput1825 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, -1, -1, 2], ![0, 1, 0, -1], ![1, 1, 1, -3], ![1, 1, -2, 0]]⟩

def canonicalOutput1825 : ExponentCode := normalNode756

theorem canonicalSound1825 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1825.moment H = canonicalOutput1825.moment H :=
  canonical_of_padded canonicalInput1825 canonicalOutput1825 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1826 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, -1, -1, 2], ![0, 1, 1, -2], ![2, 2, -2, -2]]⟩

def canonicalOutput1826 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1257

theorem canonicalSound1826 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1826.moment H = canonicalOutput1826.moment H :=
  canonical_of_padded canonicalInput1826 canonicalOutput1826 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput1827 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, -1, -1, 2], ![0, 2, -2, 0], ![2, 1, 1, -4]]⟩

def canonicalOutput1827 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code583

theorem canonicalSound1827 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1827.moment H = canonicalOutput1827.moment H :=
  canonical_of_padded canonicalInput1827 canonicalOutput1827 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput1828 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, -1, -1, 2], ![0, 2, 0, -2], ![1, 0, -1, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput1828 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2335⟩

theorem canonicalSound1828 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1828.moment H = canonicalOutput1828.moment H :=
  canonical_of_padded canonicalInput1828 canonicalOutput1828 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput1829 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, -1, -1, 2], ![0, 2, 0, -2], ![1, 1, -2, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput1829 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code189

theorem canonicalSound1829 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1829.moment H = canonicalOutput1829.moment H :=
  canonical_of_padded canonicalInput1829 canonicalOutput1829 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1830 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, -1, -1, 2], ![0, 2, 1, -3], ![1, 1, -1, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput1830 : ExponentCode := normalNode758

theorem canonicalSound1830 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1830.moment H = canonicalOutput1830.moment H :=
  canonical_of_padded canonicalInput1830 canonicalOutput1830 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1831 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, -1, -1, 2], ![0, 3, -2, -1], ![1, 0, 1, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput1831 : ExponentCode := normalNode759

theorem canonicalSound1831 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1831.moment H = canonicalOutput1831.moment H :=
  canonical_of_padded canonicalInput1831 canonicalOutput1831 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1832 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, -1, -1, 2], ![0, 3, -1, -2], ![1, 0, 0, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput1832 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2332⟩

theorem canonicalSound1832 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1832.moment H = canonicalOutput1832.moment H :=
  canonical_of_padded canonicalInput1832 canonicalOutput1832 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput1833 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, -1, -1, 2], ![0, 3, -1, -2], ![2, 0, 0, -2]]⟩

def canonicalOutput1833 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node610⟩

theorem canonicalSound1833 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1833.moment H = canonicalOutput1833.moment H :=
  canonical_of_padded canonicalInput1833 canonicalOutput1833 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput1834 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, -1, -1, 2], ![0, 3, 0, -3], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput1834 : ExponentCode := normalNode5770

theorem canonicalSound1834 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1834.moment H = canonicalOutput1834.moment H :=
  canonical_of_padded canonicalInput1834 canonicalOutput1834 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput1835 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, -1, -1, 2], ![0, 3, 1, -4], ![2, 0, -2, 0]]⟩

def canonicalOutput1835 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code567

theorem canonicalSound1835 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1835.moment H = canonicalOutput1835.moment H :=
  canonical_of_padded canonicalInput1835 canonicalOutput1835 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput1836 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, -1, -1, 2], ![1, 0, -1, 0], ![1, 3, 0, -4]]⟩

def canonicalOutput1836 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1014⟩

theorem canonicalSound1836 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1836.moment H = canonicalOutput1836.moment H :=
  canonical_of_padded canonicalInput1836 canonicalOutput1836 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput1837 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, -1, -1, 2], ![1, 0, 0, -1], ![1, 3, -1, -3]]⟩

def canonicalOutput1837 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1274⟩

theorem canonicalSound1837 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1837.moment H = canonicalOutput1837.moment H :=
  canonical_of_padded canonicalInput1837 canonicalOutput1837 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput1838 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, -1, -1, 2], ![1, 0, 1, -2], ![1, 3, -2, -2]]⟩

def canonicalOutput1838 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1253

theorem canonicalSound1838 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1838.moment H = canonicalOutput1838.moment H :=
  canonical_of_padded canonicalInput1838 canonicalOutput1838 (by decide) (by decide)
    ⟨true, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput1839 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, -1, -1, 2], ![1, 1, -2, 0], ![1, 2, 1, -4]]⟩

def canonicalOutput1839 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code628

theorem canonicalSound1839 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1839.moment H = canonicalOutput1839.moment H :=
  canonical_of_padded canonicalInput1839 canonicalOutput1839 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput1840 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, -1, -1, 2], ![1, 1, 0, -2], ![1, 2, -1, -2]]⟩

def canonicalOutput1840 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node718⟩

theorem canonicalSound1840 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1840.moment H = canonicalOutput1840.moment H :=
  canonical_of_padded canonicalInput1840 canonicalOutput1840 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput1841 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, -1, -1, 2], ![1, 2, -2, -1], ![1, 1, 1, -3]]⟩

def canonicalOutput1841 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code192

theorem canonicalSound1841 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1841.moment H = canonicalOutput1841.moment H :=
  canonical_of_padded canonicalInput1841 canonicalOutput1841 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1842 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, -1, -1, 2], ![1, 2, 0, -3], ![1, 1, -1, -1]]⟩

def canonicalOutput1842 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node714⟩

theorem canonicalSound1842 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1842.moment H = canonicalOutput1842.moment H :=
  canonical_of_padded canonicalInput1842 canonicalOutput1842 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput1843 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, -1, -1, 2], ![1, 3, -2, -2], ![1, 0, 1, -2]]⟩

def canonicalOutput1843 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1253

theorem canonicalSound1843 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1843.moment H = canonicalOutput1843.moment H :=
  canonical_of_padded canonicalInput1843 canonicalOutput1843 (by decide) (by decide)
    ⟨true, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput1844 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, -1, -1, 2], ![1, 3, 0, -4], ![1, 0, -1, 0]]⟩

def canonicalOutput1844 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1014⟩

theorem canonicalSound1844 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1844.moment H = canonicalOutput1844.moment H :=
  canonical_of_padded canonicalInput1844 canonicalOutput1844 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput1845 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, -1, 0, 1], ![0, 0, -1, 1], ![1, 0, -1, 0], ![1, 3, 0, -4]]⟩

def canonicalOutput1845 : ExponentCode := normalNode5783

theorem canonicalSound1845 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1845.moment H = canonicalOutput1845.moment H :=
  canonical_of_padded canonicalInput1845 canonicalOutput1845 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput1846 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, -1, 0, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 2, -1, -2]]⟩

def canonicalOutput1846 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2342⟩

theorem canonicalSound1846 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1846.moment H = canonicalOutput1846.moment H :=
  canonical_of_padded canonicalInput1846 canonicalOutput1846 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput1847 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, -1, 0, 1], ![0, 3, -2, -1], ![1, 0, 0, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput1847 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1956⟩

theorem canonicalSound1847 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1847.moment H = canonicalOutput1847.moment H :=
  canonical_of_padded canonicalInput1847 canonicalOutput1847 (by decide) (by decide)
    ⟨false, false, canonicalPermutation28, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput1848 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, -1, 0, 1], ![0, 3, -1, -2], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput1848 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2336⟩

theorem canonicalSound1848 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1848.moment H = canonicalOutput1848.moment H :=
  canonical_of_padded canonicalInput1848 canonicalOutput1848 (by decide) (by decide)
    ⟨false, true, canonicalPermutation0, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput1849 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, -1, 0, 1], ![1, 0, -2, 1], ![1, 3, 0, -4]]⟩

def canonicalOutput1849 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node895⟩

theorem canonicalSound1849 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1849.moment H = canonicalOutput1849.moment H :=
  canonical_of_padded canonicalInput1849 canonicalOutput1849 (by decide) (by decide)
    ⟨true, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput1850 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, -1, 0, 1], ![1, 0, -1, 0], ![1, 3, -1, -3]]⟩

def canonicalOutput1850 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1205⟩

theorem canonicalSound1850 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1850.moment H = canonicalOutput1850.moment H :=
  canonical_of_padded canonicalInput1850 canonicalOutput1850 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput1851 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, -1, 0, 1], ![1, 0, 0, -1], ![1, 3, -2, -2]]⟩

def canonicalOutput1851 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1219⟩

theorem canonicalSound1851 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1851.moment H = canonicalOutput1851.moment H :=
  canonical_of_padded canonicalInput1851 canonicalOutput1851 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput1852 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, -1, 1, 0], ![0, 0, -1, 1], ![1, 0, -1, 0], ![1, 3, -1, -3]]⟩

def canonicalOutput1852 : ExponentCode := normalNode776

theorem canonicalSound1852 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1852.moment H = canonicalOutput1852.moment H :=
  canonical_of_padded canonicalInput1852 canonicalOutput1852 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput1853 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, -1, 1, 0], ![0, 0, -1, 1], ![1, 0, 0, -1], ![1, 3, -2, -2]]⟩

def canonicalOutput1853 : ExponentCode := normalNode775

theorem canonicalSound1853 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1853.moment H = canonicalOutput1853.moment H :=
  canonical_of_padded canonicalInput1853 canonicalOutput1853 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput1854 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, -1, 1, 0], ![0, 1, -1, 0], ![0, 1, -1, 0], ![2, 1, -1, -2]]⟩

def canonicalOutput1854 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2340⟩

theorem canonicalSound1854 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1854.moment H = canonicalOutput1854.moment H :=
  canonical_of_padded canonicalInput1854 canonicalOutput1854 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput1855 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, -1, 1, 0], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 2, -2, -1]]⟩

def canonicalOutput1855 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2342⟩

theorem canonicalSound1855 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1855.moment H = canonicalOutput1855.moment H :=
  canonical_of_padded canonicalInput1855 canonicalOutput1855 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

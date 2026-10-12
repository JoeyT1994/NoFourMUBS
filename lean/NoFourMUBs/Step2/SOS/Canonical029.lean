import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes00
import NoFourMUBs.Step2.SOS.MomentCodes03
import NoFourMUBs.Step2.SOS.MomentCodes08
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes23
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes30
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes31
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes32
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes36
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes6
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput1856 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, -1, 1, 0], ![0, 1, 0, -1], ![0, 1, 0, -1], ![2, 1, -3, 0]]⟩

def canonicalOutput1856 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1956⟩

theorem canonicalSound1856 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1856.moment H = canonicalOutput1856.moment H :=
  canonical_of_padded canonicalInput1856 canonicalOutput1856 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation199, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput1857 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, -1, 1, 0], ![0, 1, 0, -1], ![0, 2, -1, -1], ![2, 0, -2, 0]]⟩

def canonicalOutput1857 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2035⟩

theorem canonicalSound1857 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1857.moment H = canonicalOutput1857.moment H :=
  canonical_of_padded canonicalInput1857 canonicalOutput1857 (by decide) (by decide)
    ⟨false, true, canonicalPermutation13, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput1858 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, -1, 1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 2, -2, -1]]⟩

def canonicalOutput1858 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2338⟩

theorem canonicalSound1858 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1858.moment H = canonicalOutput1858.moment H :=
  canonical_of_padded canonicalInput1858 canonicalOutput1858 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput1859 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, -1, 1, 0], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 2, -3, 0]]⟩

def canonicalOutput1859 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2336⟩

theorem canonicalSound1859 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1859.moment H = canonicalOutput1859.moment H :=
  canonical_of_padded canonicalInput1859 canonicalOutput1859 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput1860 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, -1, 1, 0], ![0, 1, 0, -1], ![1, 1, -3, 1], ![1, 1, 0, -2]]⟩

def canonicalOutput1860 : ExponentCode := normalNode782

theorem canonicalSound1860 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1860.moment H = canonicalOutput1860.moment H :=
  canonical_of_padded canonicalInput1860 canonicalOutput1860 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput1861 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, -1, 1, 0], ![0, 1, 0, -1], ![1, 1, -2, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput1861 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2337⟩

theorem canonicalSound1861 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1861.moment H = canonicalOutput1861.moment H :=
  canonical_of_padded canonicalInput1861 canonicalOutput1861 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput1862 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, -1, 1, 0], ![0, 2, -3, 1], ![1, 0, 0, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput1862 : ExponentCode := normalNode788

theorem canonicalSound1862 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1862.moment H = canonicalOutput1862.moment H :=
  canonical_of_padded canonicalInput1862 canonicalOutput1862 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput1863 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, -1, 1, 0], ![0, 2, 0, -2], ![1, 0, 0, -1], ![1, 1, -3, 1]]⟩

def canonicalOutput1863 : ExponentCode := normalNode787

theorem canonicalSound1863 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1863.moment H = canonicalOutput1863.moment H :=
  canonical_of_padded canonicalInput1863 canonicalOutput1863 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput1864 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, -1, 1, 0], ![0, 3, -2, -1], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput1864 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2336⟩

theorem canonicalSound1864 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1864.moment H = canonicalOutput1864.moment H :=
  canonical_of_padded canonicalInput1864 canonicalOutput1864 (by decide) (by decide)
    ⟨false, true, canonicalPermutation3, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput1865 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, -1, 1, 0], ![0, 3, -1, -2], ![1, 0, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput1865 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1956⟩

theorem canonicalSound1865 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1865.moment H = canonicalOutput1865.moment H :=
  canonical_of_padded canonicalInput1865 canonicalOutput1865 (by decide) (by decide)
    ⟨false, false, canonicalPermutation28, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput1866 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, -1, 1, 0], ![1, 0, -2, 1], ![1, 3, -1, -3]]⟩

def canonicalOutput1866 : ExponentCode := normalNode9979

theorem canonicalSound1866 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1866.moment H = canonicalOutput1866.moment H :=
  canonical_of_padded canonicalInput1866 canonicalOutput1866 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput1867 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, -1, 1, 0], ![1, 0, -1, 0], ![1, 3, -2, -2]]⟩

def canonicalOutput1867 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1219⟩

theorem canonicalSound1867 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1867.moment H = canonicalOutput1867.moment H :=
  canonical_of_padded canonicalInput1867 canonicalOutput1867 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput1868 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, -1, 1, 0], ![1, 0, 0, -1], ![1, 3, -3, -1]]⟩

def canonicalOutput1868 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1205⟩

theorem canonicalSound1868 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1868.moment H = canonicalOutput1868.moment H :=
  canonical_of_padded canonicalInput1868 canonicalOutput1868 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput1869 : ExponentCode := ⟨3, 4, ![![-2, -2, 2, 2], ![0, -1, 3, -2], ![2, 3, -5, 0]]⟩

def canonicalOutput1869 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code24

theorem canonicalSound1869 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1869.moment H = canonicalOutput1869.moment H :=
  canonical_of_padded canonicalInput1869 canonicalOutput1869 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput1870 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 0, -2, 2], ![0, 0, 2, -2], ![0, 1, 0, -1], ![2, 1, -2, -1]]⟩

def canonicalOutput1870 : ExponentCode := normalNode803

theorem canonicalSound1870 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1870.moment H = canonicalOutput1870.moment H :=
  canonical_of_padded canonicalInput1870 canonicalOutput1870 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput1871 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 0, -2, 2], ![0, 1, -1, 0], ![1, 1, -1, -1], ![1, 0, 2, -3]]⟩

def canonicalOutput1871 : ExponentCode := normalNode818

theorem canonicalSound1871 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1871.moment H = canonicalOutput1871.moment H :=
  canonical_of_padded canonicalInput1871 canonicalOutput1871 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1872 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 0, -2, 2], ![0, 1, -1, 0], ![2, 1, 1, -4]]⟩

def canonicalOutput1872 : ExponentCode := normalNode7050

theorem canonicalSound1872 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1872.moment H = canonicalOutput1872.moment H :=
  canonical_of_padded canonicalInput1872 canonicalOutput1872 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput1873 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 0, -2, 2], ![0, 1, 0, -1], ![0, 1, -1, 0], ![2, 0, 1, -3]]⟩

def canonicalOutput1873 : ExponentCode := normalNode809

theorem canonicalSound1873 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1873.moment H = canonicalOutput1873.moment H :=
  canonical_of_padded canonicalInput1873 canonicalOutput1873 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1874 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 0, -2, 2], ![0, 1, 0, -1], ![0, 2, 0, -2], ![2, -1, 0, -1]]⟩

def canonicalOutput1874 : ExponentCode := normalNode4074

theorem canonicalSound1874 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1874.moment H = canonicalOutput1874.moment H :=
  canonical_of_padded canonicalInput1874 canonicalOutput1874 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation172, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput1875 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 0, -2, 2], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput1875 : ExponentCode := normalNode816

theorem canonicalSound1875 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1875.moment H = canonicalOutput1875.moment H :=
  canonical_of_padded canonicalInput1875 canonicalOutput1875 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput1876 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 0, -2, 2], ![0, 1, 0, -1], ![1, 1, -2, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput1876 : ExponentCode := normalNode824

theorem canonicalSound1876 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1876.moment H = canonicalOutput1876.moment H :=
  canonical_of_padded canonicalInput1876 canonicalOutput1876 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1877 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 0, -2, 2], ![0, 1, 1, -2], ![1, 0, -1, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput1877 : ExponentCode := normalNode817

theorem canonicalSound1877 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1877.moment H = canonicalOutput1877.moment H :=
  canonical_of_padded canonicalInput1877 canonicalOutput1877 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput1878 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 0, -2, 2], ![0, 1, 1, -2], ![1, 0, 0, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput1878 : ExponentCode := normalNode823

theorem canonicalSound1878 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1878.moment H = canonicalOutput1878.moment H :=
  canonical_of_padded canonicalInput1878 canonicalOutput1878 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput1879 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 0, -2, 2], ![0, 1, 1, -2], ![1, 1, -2, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput1879 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code196

theorem canonicalSound1879 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1879.moment H = canonicalOutput1879.moment H :=
  canonical_of_padded canonicalInput1879 canonicalOutput1879 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1880 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 0, -2, 2], ![0, 2, -2, 0], ![1, 0, 0, -1], ![1, 0, 2, -3]]⟩

def canonicalOutput1880 : ExponentCode := normalNode820

theorem canonicalSound1880 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1880.moment H = canonicalOutput1880.moment H :=
  canonical_of_padded canonicalInput1880 canonicalOutput1880 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput1881 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 0, -2, 2], ![0, 2, -1, -1], ![0, 1, 0, -1], ![2, -1, 1, -2]]⟩

def canonicalOutput1881 : ExponentCode := normalNode821

theorem canonicalSound1881 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1881.moment H = canonicalOutput1881.moment H :=
  canonical_of_padded canonicalInput1881 canonicalOutput1881 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1882 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 0, -2, 2], ![0, 2, -1, -1], ![0, 1, 1, -2], ![2, -1, 0, -1]]⟩

def canonicalOutput1882 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code194

theorem canonicalSound1882 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1882.moment H = canonicalOutput1882.moment H :=
  canonical_of_padded canonicalInput1882 canonicalOutput1882 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1883 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 0, -2, 2], ![0, 2, -1, -1], ![1, 0, -1, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput1883 : ExponentCode := normalNode812

theorem canonicalSound1883 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1883.moment H = canonicalOutput1883.moment H :=
  canonical_of_padded canonicalInput1883 canonicalOutput1883 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput1884 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 0, -2, 2], ![0, 2, 0, -2], ![0, 1, 1, -2], ![2, -1, -1, 0]]⟩

def canonicalOutput1884 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code195

theorem canonicalSound1884 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1884.moment H = canonicalOutput1884.moment H :=
  canonical_of_padded canonicalInput1884 canonicalOutput1884 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1885 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 0, -2, 2], ![0, 2, 0, -2], ![1, 0, -1, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput1885 : ExponentCode := normalNode811

theorem canonicalSound1885 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1885.moment H = canonicalOutput1885.moment H :=
  canonical_of_padded canonicalInput1885 canonicalOutput1885 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput1886 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 0, -2, 2], ![0, 2, 2, -4], ![2, 0, -2, 0]]⟩

def canonicalOutput1886 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code199

theorem canonicalSound1886 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1886.moment H = canonicalOutput1886.moment H :=
  canonical_of_padded canonicalInput1886 canonicalOutput1886 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput1887 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 0, -2, 2], ![0, 3, 1, -4], ![2, -1, -1, 0]]⟩

def canonicalOutput1887 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code568

theorem canonicalSound1887 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1887.moment H = canonicalOutput1887.moment H :=
  canonical_of_padded canonicalInput1887 canonicalOutput1887 (by decide) (by decide)
    ⟨true, false, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput1888 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 0, -2, 2], ![1, -1, 0, 0], ![1, 3, 0, -4]]⟩

def canonicalOutput1888 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1192⟩

theorem canonicalSound1888 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1888.moment H = canonicalOutput1888.moment H :=
  canonical_of_padded canonicalInput1888 canonicalOutput1888 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation159, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput1889 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 0, -2, 2], ![1, 0, -1, 0], ![1, 2, 1, -4]]⟩

def canonicalOutput1889 : ExponentCode := normalNode7050

theorem canonicalSound1889 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1889.moment H = canonicalOutput1889.moment H :=
  canonical_of_padded canonicalInput1889 canonicalOutput1889 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput1890 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 0, -2, 2], ![1, 0, 1, -2], ![1, 2, -1, -2]]⟩

def canonicalOutput1890 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node410⟩

theorem canonicalSound1890 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1890.moment H = canonicalOutput1890.moment H :=
  canonical_of_padded canonicalInput1890 canonicalOutput1890 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput1891 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 0, -2, 2], ![1, 0, 2, -3], ![1, 2, -2, -1]]⟩

def canonicalOutput1891 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code198

theorem canonicalSound1891 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1891.moment H = canonicalOutput1891.moment H :=
  canonical_of_padded canonicalInput1891 canonicalOutput1891 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput1892 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 0, -2, 2], ![1, 1, 1, -3], ![1, 1, -1, -1]]⟩

def canonicalOutput1892 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code204

theorem canonicalSound1892 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1892.moment H = canonicalOutput1892.moment H :=
  canonical_of_padded canonicalInput1892 canonicalOutput1892 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1893 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 0, -2, 2], ![1, 1, 2, -4], ![1, 1, -2, 0]]⟩

def canonicalOutput1893 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code203

theorem canonicalSound1893 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1893.moment H = canonicalOutput1893.moment H :=
  canonical_of_padded canonicalInput1893 canonicalOutput1893 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1894 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 0, -2, 2], ![1, 2, 1, -4], ![1, 0, -1, 0]]⟩

def canonicalOutput1894 : ExponentCode := normalNode7050

theorem canonicalSound1894 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1894.moment H = canonicalOutput1894.moment H :=
  canonical_of_padded canonicalInput1894 canonicalOutput1894 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput1895 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 0, -1, 1], ![0, -1, 0, 1], ![1, 0, -1, 0], ![1, 3, 0, -4]]⟩

def canonicalOutput1895 : ExponentCode := normalNode5783

theorem canonicalSound1895 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1895.moment H = canonicalOutput1895.moment H :=
  canonical_of_padded canonicalInput1895 canonicalOutput1895 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput1896 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 3, 0, -4]]⟩

def canonicalOutput1896 : ExponentCode := normalNode5775

theorem canonicalSound1896 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1896.moment H = canonicalOutput1896.moment H :=
  canonical_of_padded canonicalInput1896 canonicalOutput1896 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput1897 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, 0, -1, 0], ![1, 2, 1, -4]]⟩

def canonicalOutput1897 : ExponentCode := normalNode835

theorem canonicalSound1897 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1897.moment H = canonicalOutput1897.moment H :=
  canonical_of_padded canonicalInput1897 canonicalOutput1897 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput1898 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 1, -1, 0], ![2, 1, 0, -3]]⟩

def canonicalOutput1898 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1052⟩

theorem canonicalSound1898 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1898.moment H = canonicalOutput1898.moment H :=
  canonical_of_padded canonicalInput1898 canonicalOutput1898 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, canonicalPermutation35⟩ (by decide +kernel) hH

def canonicalInput1899 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 1, 0, -1], ![2, 1, -1, -2]]⟩

def canonicalOutput1899 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1253⟩

theorem canonicalSound1899 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1899.moment H = canonicalOutput1899.moment H :=
  canonical_of_padded canonicalInput1899 canonicalOutput1899 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, canonicalPermutation35⟩ (by decide +kernel) hH

def canonicalInput1900 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 1, 1, -2], ![2, 1, -2, -1]]⟩

def canonicalOutput1900 : ExponentCode := normalNode11072

theorem canonicalSound1900 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1900.moment H = canonicalOutput1900.moment H :=
  canonical_of_padded canonicalInput1900 canonicalOutput1900 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput1901 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![2, 1, -2, -1]]⟩

def canonicalOutput1901 : ExponentCode := normalNode849

theorem canonicalSound1901 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1901.moment H = canonicalOutput1901.moment H :=
  canonical_of_padded canonicalInput1901 canonicalOutput1901 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput1902 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 2, 0, -2], ![2, 0, -2, 0]]⟩

def canonicalOutput1902 : ExponentCode := normalNode852

theorem canonicalSound1902 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1902.moment H = canonicalOutput1902.moment H :=
  canonical_of_padded canonicalInput1902 canonicalOutput1902 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput1903 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 2, 1, -3], ![2, 0, -3, 1]]⟩

def canonicalOutput1903 : ExponentCode := normalNode851

theorem canonicalSound1903 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1903.moment H = canonicalOutput1903.moment H :=
  canonical_of_padded canonicalInput1903 canonicalOutput1903 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput1904 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 0, -1, 1], ![0, 0, 1, -1], ![1, 0, -2, 1], ![1, 2, 0, -3]]⟩

def canonicalOutput1904 : ExponentCode := normalNode846

theorem canonicalSound1904 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1904.moment H = canonicalOutput1904.moment H :=
  canonical_of_padded canonicalInput1904 canonicalOutput1904 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput1905 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 0, -1, 1], ![0, 0, 1, -1], ![1, 0, -1, 0], ![1, 2, -1, -2]]⟩

def canonicalOutput1905 : ExponentCode := normalNode849

theorem canonicalSound1905 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1905.moment H = canonicalOutput1905.moment H :=
  canonical_of_padded canonicalInput1905 canonicalOutput1905 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput1906 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 0, -1, 1], ![0, 0, 2, -2], ![0, 2, 0, -2], ![2, 0, -3, 1]]⟩

def canonicalOutput1906 : ExponentCode := normalNode802

theorem canonicalSound1906 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1906.moment H = canonicalOutput1906.moment H :=
  canonical_of_padded canonicalInput1906 canonicalOutput1906 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput1907 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 0, -1, 1], ![0, 0, 2, -2], ![1, 0, -2, 1], ![1, 2, -1, -2]]⟩

def canonicalOutput1907 : ExponentCode := normalNode801

theorem canonicalSound1907 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1907.moment H = canonicalOutput1907.moment H :=
  canonical_of_padded canonicalInput1907 canonicalOutput1907 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput1908 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 0, -1, 1], ![0, 1, -2, 1], ![2, 1, 1, -4]]⟩

def canonicalOutput1908 : ExponentCode := normalNode7049

theorem canonicalSound1908 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1908.moment H = canonicalOutput1908.moment H :=
  canonical_of_padded canonicalInput1908 canonicalOutput1908 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput1909 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 0, -1, 1], ![2, 1, 1, -4]]⟩

def canonicalOutput1909 : ExponentCode := normalNode835

theorem canonicalSound1909 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1909.moment H = canonicalOutput1909.moment H :=
  canonical_of_padded canonicalInput1909 canonicalOutput1909 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1910 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, -2, 1], ![2, 0, 2, -4]]⟩

def canonicalOutput1910 : ExponentCode := normalNode859

theorem canonicalSound1910 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1910.moment H = canonicalOutput1910.moment H :=
  canonical_of_padded canonicalInput1910 canonicalOutput1910 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1911 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 2, 0, -2], ![2, -1, 0, -1]]⟩

def canonicalOutput1911 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2077⟩

theorem canonicalSound1911 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1911.moment H = canonicalOutput1911.moment H :=
  canonical_of_padded canonicalInput1911 canonicalOutput1911 (by decide) (by decide)
    ⟨false, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput1912 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 2, 0, -3]]⟩

def canonicalOutput1912 : ExponentCode := normalNode5778

theorem canonicalSound1912 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1912.moment H = canonicalOutput1912.moment H :=
  canonical_of_padded canonicalInput1912 canonicalOutput1912 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput1913 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, 0, -2, 1], ![1, 1, 2, -4]]⟩

def canonicalOutput1913 : ExponentCode := normalNode867

theorem canonicalSound1913 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1913.moment H = canonicalOutput1913.moment H :=
  canonical_of_padded canonicalInput1913 canonicalOutput1913 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput1914 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 0, -1, 1], ![0, 1, -1, 0], ![2, 1, 0, -3]]⟩

def canonicalOutput1914 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1052⟩

theorem canonicalSound1914 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1914.moment H = canonicalOutput1914.moment H :=
  canonical_of_padded canonicalInput1914 canonicalOutput1914 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput1915 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 0, 1, -1], ![2, 1, -2, -1]]⟩

def canonicalOutput1915 : ExponentCode := normalNode849

theorem canonicalSound1915 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1915.moment H = canonicalOutput1915.moment H :=
  canonical_of_padded canonicalInput1915 canonicalOutput1915 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput1916 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, -1, 0], ![2, 0, 0, -2]]⟩

def canonicalOutput1916 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1518⟩

theorem canonicalSound1916 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1916.moment H = canonicalOutput1916.moment H :=
  canonical_of_padded canonicalInput1916 canonicalOutput1916 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1917 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 2, -1, -1], ![2, -1, 0, -1]]⟩

def canonicalOutput1917 : ExponentCode := normalNode4459

theorem canonicalSound1917 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1917.moment H = canonicalOutput1917.moment H :=
  canonical_of_padded canonicalInput1917 canonicalOutput1917 (by decide) (by decide)
    ⟨false, true, canonicalPermutation20, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput1918 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 0, -1, 1], ![0, 1, 0, -1], ![2, 1, -1, -2]]⟩

def canonicalOutput1918 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1253⟩

theorem canonicalSound1918 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1918.moment H = canonicalOutput1918.moment H :=
  canonical_of_padded canonicalInput1918 canonicalOutput1918 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput1919 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 0, -1, 1], ![0, 1, 1, -2], ![1, 0, -2, 1], ![1, 1, 0, -2]]⟩

def canonicalOutput1919 : ExponentCode := normalNode869

theorem canonicalSound1919 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1919.moment H = canonicalOutput1919.moment H :=
  canonical_of_padded canonicalInput1919 canonicalOutput1919 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

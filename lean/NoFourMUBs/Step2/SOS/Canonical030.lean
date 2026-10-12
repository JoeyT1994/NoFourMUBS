import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes23
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput1920 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 0, -1, 1], ![0, 1, 1, -2], ![1, 0, -1, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput1920 : ExponentCode := normalNode888

theorem canonicalSound1920 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1920.moment H = canonicalOutput1920.moment H :=
  canonical_of_padded canonicalInput1920 canonicalOutput1920 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput1921 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 0, -1, 1], ![0, 1, 1, -2], ![2, 1, -2, -1]]⟩

def canonicalOutput1921 : ExponentCode := normalNode11072

theorem canonicalSound1921 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1921.moment H = canonicalOutput1921.moment H :=
  canonical_of_padded canonicalInput1921 canonicalOutput1921 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput1922 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 0, -1, 1], ![0, 2, -2, 0], ![1, 0, 0, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput1922 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1522⟩

theorem canonicalSound1922 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1922.moment H = canonicalOutput1922.moment H :=
  canonical_of_padded canonicalInput1922 canonicalOutput1922 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput1923 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 0, -1, 1], ![0, 2, -2, 0], ![2, 0, 1, -3]]⟩

def canonicalOutput1923 : ExponentCode := normalNode7051

theorem canonicalSound1923 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1923.moment H = canonicalOutput1923.moment H :=
  canonical_of_padded canonicalInput1923 canonicalOutput1923 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput1924 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 0, -1, 1], ![0, 2, -1, -1], ![1, 0, -1, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput1924 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1519⟩

theorem canonicalSound1924 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1924.moment H = canonicalOutput1924.moment H :=
  canonical_of_padded canonicalInput1924 canonicalOutput1924 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput1925 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 0, -1, 1], ![0, 2, 1, -3], ![1, 0, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput1925 : ExponentCode := normalNode874

theorem canonicalSound1925 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1925.moment H = canonicalOutput1925.moment H :=
  canonical_of_padded canonicalInput1925 canonicalOutput1925 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput1926 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 0, -1, 1], ![0, 2, 1, -3], ![2, 0, -2, 0]]⟩

def canonicalOutput1926 : ExponentCode := normalNode7051

theorem canonicalSound1926 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1926.moment H = canonicalOutput1926.moment H :=
  canonical_of_padded canonicalInput1926 canonicalOutput1926 (by decide) (by decide)
    ⟨true, false, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput1927 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 0, -1, 1], ![0, 3, 0, -3], ![1, -1, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput1927 : ExponentCode := normalNode5793

theorem canonicalSound1927 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1927.moment H = canonicalOutput1927.moment H :=
  canonical_of_padded canonicalInput1927 canonicalOutput1927 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput1928 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 0, -1, 1], ![0, 3, 1, -4], ![1, 0, -1, 0], ![1, -1, -1, 1]]⟩

def canonicalOutput1928 : ExponentCode := normalNode906

theorem canonicalSound1928 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1928.moment H = canonicalOutput1928.moment H :=
  canonical_of_padded canonicalInput1928 canonicalOutput1928 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1929 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 0, -1, 1], ![1, -1, -1, 1], ![1, 3, 0, -4]]⟩

def canonicalOutput1929 : ExponentCode := normalNode7419

theorem canonicalSound1929 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1929.moment H = canonicalOutput1929.moment H :=
  canonical_of_padded canonicalInput1929 canonicalOutput1929 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput1930 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 0, -1, 1], ![1, -1, 1, -1], ![1, 3, -2, -2]]⟩

def canonicalOutput1930 : ExponentCode := normalNode11041

theorem canonicalSound1930 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1930.moment H = canonicalOutput1930.moment H :=
  canonical_of_padded canonicalInput1930 canonicalOutput1930 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput1931 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 0, -1, 1], ![1, 0, -2, 1], ![1, 2, 1, -4]]⟩

def canonicalOutput1931 : ExponentCode := normalNode7049

theorem canonicalSound1931 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1931.moment H = canonicalOutput1931.moment H :=
  canonical_of_padded canonicalInput1931 canonicalOutput1931 (by decide) (by decide)
    ⟨true, false, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput1932 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 0, -1, 1], ![1, 0, 1, -2], ![1, 2, -2, -1]]⟩

def canonicalOutput1932 : ExponentCode := normalNode11072

theorem canonicalSound1932 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1932.moment H = canonicalOutput1932.moment H :=
  canonical_of_padded canonicalInput1932 canonicalOutput1932 (by decide) (by decide)
    ⟨true, false, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput1933 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 0, -1, 1], ![1, 1, -3, 1], ![1, 1, 2, -4]]⟩

def canonicalOutput1933 : ExponentCode := normalNode6247

theorem canonicalSound1933 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1933.moment H = canonicalOutput1933.moment H :=
  canonical_of_padded canonicalInput1933 canonicalOutput1933 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput1934 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 0, -1, 1], ![1, 1, -2, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput1934 : ExponentCode := normalNode7077

theorem canonicalSound1934 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1934.moment H = canonicalOutput1934.moment H :=
  canonical_of_padded canonicalInput1934 canonicalOutput1934 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput1935 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 0, -1, 1], ![1, 1, 0, -2], ![1, 1, -1, -1]]⟩

def canonicalOutput1935 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1084⟩

theorem canonicalSound1935 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1935.moment H = canonicalOutput1935.moment H :=
  canonical_of_padded canonicalInput1935 canonicalOutput1935 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput1936 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 0, 0, 0], ![0, 1, -2, 1], ![0, 1, -1, 0], ![2, 0, 1, -3]]⟩

def canonicalOutput1936 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node841⟩

theorem canonicalSound1936 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1936.moment H = canonicalOutput1936.moment H :=
  canonical_of_padded canonicalInput1936 canonicalOutput1936 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, canonicalPermutation40⟩ (by decide +kernel) hH

def canonicalInput1937 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 0, 0, 0], ![0, 1, -2, 1], ![0, 1, 0, -1], ![2, 0, 0, -2]]⟩

def canonicalOutput1937 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node831⟩

theorem canonicalSound1937 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1937.moment H = canonicalOutput1937.moment H :=
  canonical_of_padded canonicalInput1937 canonicalOutput1937 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, canonicalPermutation29⟩ (by decide +kernel) hH

def canonicalInput1938 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 0, 0, 0], ![0, 1, -2, 1], ![1, 0, -1, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput1938 : ExponentCode := normalNode7063

theorem canonicalSound1938 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1938.moment H = canonicalOutput1938.moment H :=
  canonical_of_padded canonicalInput1938 canonicalOutput1938 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, canonicalPermutation40⟩ (by decide +kernel) hH

def canonicalInput1939 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 0, 0, 0], ![0, 1, -2, 1], ![1, 0, 0, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput1939 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node828⟩

theorem canonicalSound1939 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1939.moment H = canonicalOutput1939.moment H :=
  canonical_of_padded canonicalInput1939 canonicalOutput1939 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation29⟩ (by decide +kernel) hH

def canonicalInput1940 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 0, 0, 0], ![0, 1, -2, 1], ![2, 1, 0, -3]]⟩

def canonicalOutput1940 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node212⟩

theorem canonicalSound1940 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1940.moment H = canonicalOutput1940.moment H :=
  canonical_of_padded canonicalInput1940 canonicalOutput1940 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput1941 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 0, 0, 0], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput1941 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1033⟩

theorem canonicalSound1941 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1941.moment H = canonicalOutput1941.moment H :=
  canonical_of_padded canonicalInput1941 canonicalOutput1941 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput1942 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 0, 0, 0], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput1942 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1237⟩

theorem canonicalSound1942 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1942.moment H = canonicalOutput1942.moment H :=
  canonical_of_padded canonicalInput1942 canonicalOutput1942 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput1943 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 0, 0, 0], ![0, 1, -1, 0], ![2, 1, -1, -2]]⟩

def canonicalOutput1943 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node279⟩

theorem canonicalSound1943 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1943.moment H = canonicalOutput1943.moment H :=
  canonical_of_padded canonicalInput1943 canonicalOutput1943 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput1944 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 0, 0, 0], ![0, 1, 0, -1], ![1, -1, -1, 1], ![1, 2, -1, -2]]⟩

def canonicalOutput1944 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1331⟩

theorem canonicalSound1944 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1944.moment H = canonicalOutput1944.moment H :=
  canonical_of_padded canonicalInput1944 canonicalOutput1944 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput1945 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 0, 0, 0], ![0, 1, 0, -1], ![1, 0, 1, -2], ![1, 1, -3, 1]]⟩

def canonicalOutput1945 : ExponentCode := normalNode7063

theorem canonicalSound1945 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1945.moment H = canonicalOutput1945.moment H :=
  canonical_of_padded canonicalInput1945 canonicalOutput1945 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput1946 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 0, 0, 0], ![0, 1, 1, -2], ![1, 0, -1, 0], ![1, 1, -2, 0]]⟩

def canonicalOutput1946 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node828⟩

theorem canonicalSound1946 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1946.moment H = canonicalOutput1946.moment H :=
  canonical_of_padded canonicalInput1946 canonicalOutput1946 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, canonicalPermutation29⟩ (by decide +kernel) hH

def canonicalInput1947 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 0, 0, 0], ![0, 2, -3, 1], ![2, 0, 1, -3]]⟩

def canonicalOutput1947 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node110⟩

theorem canonicalSound1947 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1947.moment H = canonicalOutput1947.moment H :=
  canonical_of_padded canonicalInput1947 canonicalOutput1947 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput1948 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 0, 0, 0], ![0, 2, -2, 0], ![2, 0, 0, -2]]⟩

def canonicalOutput1948 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node197⟩

theorem canonicalSound1948 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1948.moment H = canonicalOutput1948.moment H :=
  canonical_of_padded canonicalInput1948 canonicalOutput1948 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput1949 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 0, 0, 0], ![0, 2, -1, -1], ![2, 0, -1, -1]]⟩

def canonicalOutput1949 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node202⟩

theorem canonicalSound1949 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1949.moment H = canonicalOutput1949.moment H :=
  canonical_of_padded canonicalInput1949 canonicalOutput1949 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput1950 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 0, 0, 0], ![0, 2, 1, -3], ![1, 0, -2, 1], ![1, 0, -1, 0]]⟩

def canonicalOutput1950 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node841⟩

theorem canonicalSound1950 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1950.moment H = canonicalOutput1950.moment H :=
  canonical_of_padded canonicalInput1950 canonicalOutput1950 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation24⟩ (by decide +kernel) hH

def canonicalInput1951 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 0, 0, 0], ![0, 3, -2, -1], ![1, -1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput1951 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1052⟩

theorem canonicalSound1951 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1951.moment H = canonicalOutput1951.moment H :=
  canonical_of_padded canonicalInput1951 canonicalOutput1951 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation153, canonicalPermutation24⟩ (by decide +kernel) hH

def canonicalInput1952 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 0, 0, 0], ![0, 3, -1, -2], ![1, -1, -1, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput1952 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1073⟩

theorem canonicalSound1952 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1952.moment H = canonicalOutput1952.moment H :=
  canonical_of_padded canonicalInput1952 canonicalOutput1952 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation151, canonicalPermutation24⟩ (by decide +kernel) hH

def canonicalInput1953 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 0, 0, 0], ![1, -1, 0, 0], ![1, 3, -2, -2]]⟩

def canonicalOutput1953 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node274⟩

theorem canonicalSound1953 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1953.moment H = canonicalOutput1953.moment H :=
  canonical_of_padded canonicalInput1953 canonicalOutput1953 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput1954 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 0, 0, 0], ![1, 1, -2, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput1954 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node202⟩

theorem canonicalSound1954 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1954.moment H = canonicalOutput1954.moment H :=
  canonical_of_padded canonicalInput1954 canonicalOutput1954 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput1955 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 0, 1, -1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![2, 1, -1, -2]]⟩

def canonicalOutput1955 : ExponentCode := normalNode849

theorem canonicalSound1955 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1955.moment H = canonicalOutput1955.moment H :=
  canonical_of_padded canonicalInput1955 canonicalOutput1955 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1956 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 0, 1, -1], ![0, 0, -1, 1], ![1, 0, 0, -1], ![1, 2, -2, -1]]⟩

def canonicalOutput1956 : ExponentCode := normalNode849

theorem canonicalSound1956 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1956.moment H = canonicalOutput1956.moment H :=
  canonical_of_padded canonicalInput1956 canonicalOutput1956 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput1957 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 0, 1, -1], ![0, 0, 0, 0], ![0, 1, 0, -1], ![2, 1, -3, 0]]⟩

def canonicalOutput1957 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1052⟩

theorem canonicalSound1957 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1957.moment H = canonicalOutput1957.moment H :=
  canonical_of_padded canonicalInput1957 canonicalOutput1957 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, canonicalPermutation35⟩ (by decide +kernel) hH

def canonicalInput1958 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 0, 1, -1], ![0, 0, 0, 0], ![0, 2, -1, -1], ![2, 0, -2, 0]]⟩

def canonicalOutput1958 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1059⟩

theorem canonicalSound1958 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1958.moment H = canonicalOutput1958.moment H :=
  canonical_of_padded canonicalInput1958 canonicalOutput1958 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput1959 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 0, 1, -1], ![0, 0, 0, 0], ![1, 0, -1, 0], ![1, 2, -2, -1]]⟩

def canonicalOutput1959 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1253⟩

theorem canonicalSound1959 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1959.moment H = canonicalOutput1959.moment H :=
  canonical_of_padded canonicalInput1959 canonicalOutput1959 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation152, canonicalPermutation35⟩ (by decide +kernel) hH

def canonicalInput1960 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 0, 1, -1], ![0, 0, 0, 0], ![1, 0, 0, -1], ![1, 2, -3, 0]]⟩

def canonicalOutput1960 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1052⟩

theorem canonicalSound1960 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1960.moment H = canonicalOutput1960.moment H :=
  canonical_of_padded canonicalInput1960 canonicalOutput1960 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation35⟩ (by decide +kernel) hH

def canonicalInput1961 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 0, 1, -1], ![0, 0, 0, 0], ![1, 1, -2, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput1961 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1084⟩

theorem canonicalSound1961 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1961.moment H = canonicalOutput1961.moment H :=
  canonical_of_padded canonicalInput1961 canonicalOutput1961 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput1962 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![2, 1, -4, 1]]⟩

def canonicalOutput1962 : ExponentCode := normalNode835

theorem canonicalSound1962 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1962.moment H = canonicalOutput1962.moment H :=
  canonical_of_padded canonicalInput1962 canonicalOutput1962 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput1963 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 0, 1, -1], ![0, 1, -3, 2], ![0, 1, -1, 0], ![2, 0, 1, -3]]⟩

def canonicalOutput1963 : ExponentCode := normalNode889

theorem canonicalSound1963 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1963.moment H = canonicalOutput1963.moment H :=
  canonical_of_padded canonicalInput1963 canonicalOutput1963 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput1964 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 0, 1, -1], ![0, 1, -3, 2], ![1, 0, -1, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput1964 : ExponentCode := normalNode894

theorem canonicalSound1964 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1964.moment H = canonicalOutput1964.moment H :=
  canonical_of_padded canonicalInput1964 canonicalOutput1964 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput1965 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 0, 1, -1], ![0, 1, -3, 2], ![2, 1, 0, -3]]⟩

def canonicalOutput1965 : ExponentCode := normalNode6252

theorem canonicalSound1965 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1965.moment H = canonicalOutput1965.moment H :=
  canonical_of_padded canonicalInput1965 canonicalOutput1965 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput1966 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 0, 1, -1], ![0, 1, -2, 1], ![0, 1, -2, 1], ![2, 0, 1, -3]]⟩

def canonicalOutput1966 : ExponentCode := normalNode895

theorem canonicalSound1966 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1966.moment H = canonicalOutput1966.moment H :=
  canonical_of_padded canonicalInput1966 canonicalOutput1966 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput1967 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 0, 1, -1], ![0, 1, -2, 1], ![0, 2, 0, -2], ![2, -1, -1, 0]]⟩

def canonicalOutput1967 : ExponentCode := normalNode896

theorem canonicalSound1967 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1967.moment H = canonicalOutput1967.moment H :=
  canonical_of_padded canonicalInput1967 canonicalOutput1967 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput1968 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 0, 1, -1], ![0, 1, -2, 1], ![1, 0, -2, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput1968 : ExponentCode := normalNode899

theorem canonicalSound1968 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1968.moment H = canonicalOutput1968.moment H :=
  canonical_of_padded canonicalInput1968 canonicalOutput1968 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput1969 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 0, 1, -1], ![0, 1, -2, 1], ![1, 0, -1, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput1969 : ExponentCode := normalNode893

theorem canonicalSound1969 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1969.moment H = canonicalOutput1969.moment H :=
  canonical_of_padded canonicalInput1969 canonicalOutput1969 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput1970 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 0, 1, -1], ![0, 1, -2, 1], ![1, 0, 0, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput1970 : ExponentCode := normalNode888

theorem canonicalSound1970 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1970.moment H = canonicalOutput1970.moment H :=
  canonical_of_padded canonicalInput1970 canonicalOutput1970 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput1971 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 0, 1, -1], ![0, 1, -2, 1], ![2, 1, -1, -2]]⟩

def canonicalOutput1971 : ExponentCode := normalNode11072

theorem canonicalSound1971 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1971.moment H = canonicalOutput1971.moment H :=
  canonical_of_padded canonicalInput1971 canonicalOutput1971 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput1972 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 0, -1, 1], ![2, 1, -1, -2]]⟩

def canonicalOutput1972 : ExponentCode := normalNode849

theorem canonicalSound1972 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1972.moment H = canonicalOutput1972.moment H :=
  canonical_of_padded canonicalInput1972 canonicalOutput1972 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput1973 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -1, -1, 1], ![1, 2, -1, -2]]⟩

def canonicalOutput1973 : ExponentCode := normalNode891

theorem canonicalSound1973 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1973.moment H = canonicalOutput1973.moment H :=
  canonical_of_padded canonicalInput1973 canonicalOutput1973 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput1974 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 2, -2, -1]]⟩

def canonicalOutput1974 : ExponentCode := normalNode5790

theorem canonicalSound1974 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1974.moment H = canonicalOutput1974.moment H :=
  canonical_of_padded canonicalInput1974 canonicalOutput1974 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput1975 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, 0, -2, 1], ![1, 1, 0, -2]]⟩

def canonicalOutput1975 : ExponentCode := normalNode893

theorem canonicalSound1975 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1975.moment H = canonicalOutput1975.moment H :=
  canonical_of_padded canonicalInput1975 canonicalOutput1975 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput1976 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput1976 : ExponentCode := normalNode892

theorem canonicalSound1976 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1976.moment H = canonicalOutput1976.moment H :=
  canonical_of_padded canonicalInput1976 canonicalOutput1976 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput1977 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 1, -2, 0]]⟩

def canonicalOutput1977 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1520⟩

theorem canonicalSound1977 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1977.moment H = canonicalOutput1977.moment H :=
  canonical_of_padded canonicalInput1977 canonicalOutput1977 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput1978 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 0, 1, -1], ![0, 1, -1, 0], ![2, 1, -2, -1]]⟩

def canonicalOutput1978 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1253⟩

theorem canonicalSound1978 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1978.moment H = canonicalOutput1978.moment H :=
  canonical_of_padded canonicalInput1978 canonicalOutput1978 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput1979 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, 0, 0, 0], ![2, 1, -3, 0]]⟩

def canonicalOutput1979 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1052⟩

theorem canonicalSound1979 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1979.moment H = canonicalOutput1979.moment H :=
  canonical_of_padded canonicalInput1979 canonicalOutput1979 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation193⟩ (by decide +kernel) hH

def canonicalInput1980 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, 1, -1, 0], ![2, 0, -2, 0]]⟩

def canonicalOutput1980 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1518⟩

theorem canonicalSound1980 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1980.moment H = canonicalOutput1980.moment H :=
  canonical_of_padded canonicalInput1980 canonicalOutput1980 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput1981 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![2, 0, -3, 1]]⟩

def canonicalOutput1981 : ExponentCode := normalNode874

theorem canonicalSound1981 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1981.moment H = canonicalOutput1981.moment H :=
  canonical_of_padded canonicalInput1981 canonicalOutput1981 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput1982 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, 2, -3, 1], ![2, -1, 0, -1]]⟩

def canonicalOutput1982 : ExponentCode := normalNode884

theorem canonicalSound1982 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1982.moment H = canonicalOutput1982.moment H :=
  canonical_of_padded canonicalInput1982 canonicalOutput1982 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput1983 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, 2, -1, -1], ![2, -1, -2, 1]]⟩

def canonicalOutput1983 : ExponentCode := normalNode881

theorem canonicalSound1983 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1983.moment H = canonicalOutput1983.moment H :=
  canonical_of_padded canonicalInput1983 canonicalOutput1983 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization

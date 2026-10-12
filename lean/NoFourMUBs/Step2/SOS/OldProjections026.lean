import NoFourMUBs.Step2.SOS.NormalizationContext
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Sound28
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Sound29
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Sound30

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def oldProjection1853 : Integer.Sparse (Fin 1613) := [(0, 2), (38, 120), (42, -40), (81, 120), (90, -80), (94, -15), (243, -40), (697, 120), (698, -280), (700, -280), (701, -40), (704, -80), (1059, -120), (1226, -40), (1227, -40), (1251, 15)]

theorem oldProjectionSound1853 {H : CMatrix} (hH : IsHadamard H) :
    (240 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1853 =
      Integer.Sparse.eval oldProjection1853 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 240 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1853 oldProjection1853
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1853 hH))

def oldProjection1858 : Integer.Sparse (Fin 1613) := [(0, 4), (19, 80), (20, -25), (243, -160), (682, 240), (698, -160), (704, -160), (1226, -160), (1251, 5)]

theorem oldProjectionSound1858 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1858 =
      Integer.Sparse.eval oldProjection1858 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 480 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1858 oldProjection1858
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1858 hH))

def oldProjection1865 : Integer.Sparse (Fin 1613) := [(0, 3), (19, 20), (76, 240), (88, -80), (90, -80), (94, 15), (241, -160), (243, -240), (682, 240), (698, -480), (704, -80), (1221, 240), (1226, -320), (1227, -160), (1251, 20)]

theorem oldProjectionSound1865 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1865 =
      Integer.Sparse.eval oldProjection1865 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 480 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1865 oldProjection1865
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1865 hH))

def oldProjection1867 : Integer.Sparse (Fin 1613) := [(0, 3), (19, 80), (20, -15), (81, 240), (94, -25), (229, 240), (243, -80), (682, 480), (683, 480), (698, -320), (700, -160), (704, -320), (1226, -80), (1251, -25), (1321, 480)]

theorem oldProjectionSound1867 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1867 =
      Integer.Sparse.eval oldProjection1867 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 480 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1867 oldProjection1867
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1867 hH))

def oldProjection1868 : Integer.Sparse (Fin 1613) := [(76, 6), (81, 12), (90, -2), (94, -1), (682, 12), (697, 12), (698, -14), (700, -4), (704, -2), (1059, -4), (1221, 6), (1226, -4), (1227, -4), (1251, 2), (1389, 12)]

theorem oldProjectionSound1868 {H : CMatrix} (hH : IsHadamard H) :
    (12 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1868 =
      Integer.Sparse.eval oldProjection1868 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 12 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1868 oldProjection1868
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1868 hH))

def oldProjection1869 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 100), (20, -10), (42, -320), (90, -160), (91, -160), (94, 15), (243, -640), (244, -80), (686, 480), (698, -240), (700, -480), (701, -160), (704, -320), (1225, -160), (1226, -160), (1251, -40)]

theorem oldProjectionSound1869 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1869 =
      Integer.Sparse.eval oldProjection1869 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 480 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1869 oldProjection1869
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1869 hH))

def oldProjection1873 : Integer.Sparse (Fin 1613) := [(0, 1), (3, 20), (19, -80), (94, -10), (104, -160), (241, -320), (690, 240), (698, -160), (1251, -95)]

theorem oldProjectionSound1873 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1873 =
      Integer.Sparse.eval oldProjection1873 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 480 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1873 oldProjection1873
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1873 hH))

def oldProjection1875 : Integer.Sparse (Fin 1613) := [(0, 2), (3, 60), (4, -5), (19, 120), (20, -15), (94, -45), (104, -160), (241, -80), (243, -160), (246, -160), (698, -160), (703, -160), (704, -160), (1251, -25)]

theorem oldProjectionSound1875 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1875 =
      Integer.Sparse.eval oldProjection1875 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 480 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1875 oldProjection1875
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1875 hH))

def oldProjection1876 : Integer.Sparse (Fin 1613) := [(3, 4), (19, 16), (20, -3), (94, -10), (104, -16), (108, -16), (241, -16), (247, -32), (694, 48), (698, -32), (704, -32), (1251, 5)]

theorem oldProjectionSound1876 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1876 =
      Integer.Sparse.eval oldProjection1876 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 96 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1876 oldProjection1876
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1876 hH))

def oldProjection1878 : Integer.Sparse (Fin 1613) := [(0, 1), (3, 10), (19, 80), (20, -15), (94, -20), (104, -40), (105, -40), (241, -80), (243, -160), (691, 120), (698, -160), (700, -200), (704, -160), (1251, -20)]

theorem oldProjectionSound1878 {H : CMatrix} (hH : IsHadamard H) :
    (240 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1878 =
      Integer.Sparse.eval oldProjection1878 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 240 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1878 oldProjection1878
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1878 hH))

def oldProjection1879 : Integer.Sparse (Fin 1613) := [(0, 1), (3, 40), (4, -5), (19, 200), (20, -20), (94, -70), (104, -80), (106, -80), (243, -160), (244, -320), (246, -160), (692, 240), (698, -80), (700, -320), (701, -400), (703, -160), (704, -480), (1251, -60)]

theorem oldProjectionSound1879 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1879 =
      Integer.Sparse.eval oldProjection1879 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 480 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1879 oldProjection1879
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1879 hH))

def oldProjection1887 : Integer.Sparse (Fin 1613) := [(0, 2), (19, 50), (20, -5), (94, -25), (243, -80), (244, -40), (698, -160), (700, -240), (701, -80), (704, -160), (1059, -40), (1251, -20)]

theorem oldProjectionSound1887 {H : CMatrix} (hH : IsHadamard H) :
    (240 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1887 =
      Integer.Sparse.eval oldProjection1887 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 240 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1887 oldProjection1887
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1887 hH))

def oldProjection1888 : Integer.Sparse (Fin 1613) := [(0, 3), (94, -5), (695, 360), (698, -480), (700, -640), (701, -120), (1059, -480), (1251, 60)]

theorem oldProjectionSound1888 {H : CMatrix} (hH : IsHadamard H) :
    (240 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1888 =
      Integer.Sparse.eval oldProjection1888 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 240 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1888 oldProjection1888
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1888 hH))

def oldProjection1901 : Integer.Sparse (Fin 1613) := [(127, -9), (228, 3), (241, -2), (243, -2), (288, -9), (299, -9), (698, -2)]

theorem oldProjectionSound1901 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1901 =
      Integer.Sparse.eval oldProjection1901 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 18 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1901 oldProjection1901
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1901 hH))

def oldProjection1903 : Integer.Sparse (Fin 1613) := [(0, 1), (19, -20), (94, -10), (238, 240), (241, -160), (243, -80), (247, -80), (698, -160), (729, -720), (1057, 240), (1058, 240), (1223, 240), (1226, -80), (1251, 25)]

theorem oldProjectionSound1903 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1903 =
      Integer.Sparse.eval oldProjection1903 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1903 oldProjection1903
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1903 hH))

def oldProjection1904 : Integer.Sparse (Fin 1613) := [(19, 8), (94, -3), (104, -16), (238, 48), (240, 48), (243, -16), (698, -16), (1251, 1)]

theorem oldProjectionSound1904 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1904 =
      Integer.Sparse.eval oldProjection1904 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1904 oldProjection1904
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1904 hH))

def oldProjection1905 : Integer.Sparse (Fin 1613) := [(0, 3), (19, 100), (20, -10), (94, -75), (228, 240), (231, 240), (241, -160), (243, -160), (247, -160), (698, -160), (704, -80), (1251, -60), (1323, 240)]

theorem oldProjectionSound1905 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1905 =
      Integer.Sparse.eval oldProjection1905 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1905 oldProjection1905
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1905 hH))

def oldProjection1906 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 20), (94, -10), (247, 40), (294, -360), (333, -360), (751, -360), (1251, -15)]

theorem oldProjectionSound1906 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1906 =
      Integer.Sparse.eval oldProjection1906 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1906 oldProjection1906
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1906 hH))

def oldProjection1910 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 40), (94, -20), (127, -720), (228, 240), (241, -320), (243, -240), (247, -80), (309, -720), (698, -240), (1251, -5)]

theorem oldProjectionSound1910 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1910 =
      Integer.Sparse.eval oldProjection1910 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1910 oldProjection1910
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1910 hH))

def oldProjection1911 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 80), (94, -30), (228, 240), (241, -320), (243, -80), (247, -240), (548, -720), (549, -720), (698, -80), (1251, -15)]

theorem oldProjectionSound1911 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1911 =
      Integer.Sparse.eval oldProjection1911 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1911 oldProjection1911
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1911 hH))

def oldProjection1912 : Integer.Sparse (Fin 1613) := [(0, 2), (19, 60), (94, -45), (228, 720), (241, -240), (243, -160), (247, -160), (327, -720), (698, -240), (704, -80), (1251, -55)]

theorem oldProjectionSound1912 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1912 =
      Integer.Sparse.eval oldProjection1912 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1912 oldProjection1912
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1912 hH))

def oldProjection1913 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 40), (94, -15), (228, 480), (241, -80), (247, -160), (333, -720), (698, -80), (729, -720), (1223, 240), (1226, -80), (1227, -80), (1251, -20)]

theorem oldProjectionSound1913 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1913 =
      Integer.Sparse.eval oldProjection1913 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1913 oldProjection1913
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1913 hH))

def oldProjection1914 : Integer.Sparse (Fin 1613) := [(0, 1), (548, -720), (698, -160), (729, -720), (751, -720), (1219, 240), (1226, -80), (1227, -160), (1251, 15)]

theorem oldProjectionSound1914 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1914 =
      Integer.Sparse.eval oldProjection1914 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1914 oldProjection1914
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1914 hH))

def oldProjection1916 : Integer.Sparse (Fin 1613) := [(19, 16), (20, -3), (88, -48), (94, 6), (231, 48), (241, -32), (243, -64), (698, -16), (1226, -64), (1251, 1), (1323, 48)]

theorem oldProjectionSound1916 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1916 =
      Integer.Sparse.eval oldProjection1916 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1916 oldProjection1916
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1916 hH))

def oldProjection1917 : Integer.Sparse (Fin 1613) := [(19, 8), (20, -1), (88, -32), (231, 48), (241, -16), (243, -80), (698, -16), (732, -144), (1057, 48), (1225, -16), (1226, -16), (1251, 1)]

theorem oldProjectionSound1917 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1917 =
      Integer.Sparse.eval oldProjection1917 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1917 oldProjection1917
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1917 hH))

def oldProjection1918 : Integer.Sparse (Fin 1613) := [(0, 1), (38, 240), (238, 480), (307, -720), (698, -240), (700, -160), (1057, 240), (1058, 480), (1059, -240), (1251, 15)]

theorem oldProjectionSound1918 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1918 =
      Integer.Sparse.eval oldProjection1918 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1918 oldProjection1918
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1918 hH))

def oldProjection1920 : Integer.Sparse (Fin 1613) := [(0, 1), (3, 20), (20, -5), (93, -60), (94, -40), (238, 480), (240, 240), (241, -80), (247, -80), (1057, 240), (1058, 240), (1250, -120), (1251, -20)]

theorem oldProjectionSound1920 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1920 =
      Integer.Sparse.eval oldProjection1920 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1920 oldProjection1920
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1920 hH))

def oldProjection1921 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 60), (37, 240), (38, 480), (94, -25), (238, 240), (240, 240), (241, -240), (243, -80), (247, -160), (697, 480), (698, -160), (700, -80), (1059, -80), (1251, -10)]

theorem oldProjectionSound1921 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1921 =
      Integer.Sparse.eval oldProjection1921 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1921 oldProjection1921
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1921 hH))

def oldProjection1923 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 60), (20, -5), (38, 240), (81, 240), (94, -30), (231, 240), (241, -80), (243, -80), (247, -80), (327, -720), (697, 240), (698, -80), (1251, -30), (1323, 240), (1389, 240)]

theorem oldProjectionSound1923 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1923 =
      Integer.Sparse.eval oldProjection1923 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1923 oldProjection1923
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1923 hH))

def oldProjection1926 : Integer.Sparse (Fin 1613) := [(0, 1), (38, 240), (81, 240), (231, 240), (238, 240), (243, -80), (333, -720), (698, -240), (700, -80), (1057, 240), (1058, 240), (1059, -80), (1226, -80), (1227, -80), (1251, 15)]

theorem oldProjectionSound1926 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1926 =
      Integer.Sparse.eval oldProjection1926 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1926 oldProjection1926
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1926 hH))

def oldProjection1930 : Integer.Sparse (Fin 1613) := [(19, 3), (37, 12), (38, 12), (94, -1), (104, -4), (241, -4), (243, -4), (247, -4), (307, -36), (690, 12), (697, 12), (698, -4)]

theorem oldProjectionSound1930 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1930 =
      Integer.Sparse.eval oldProjection1930 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 72 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1930 oldProjection1930
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1930 hH))

def oldProjection1933 : Integer.Sparse (Fin 1613) := [(19, 4), (20, -1), (94, 2), (738, -36), (1057, 12), (1225, -8), (1226, -8), (1251, -1)]

theorem oldProjectionSound1933 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1933 =
      Integer.Sparse.eval oldProjection1933 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 72 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1933 oldProjection1933
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1933 hH))

def oldProjection1934 : Integer.Sparse (Fin 1613) := [(0, 1), (3, 20), (19, 60), (20, -15), (93, -60), (94, -20), (231, 480), (241, -80), (242, 240), (243, -160), (247, -80), (698, -80), (1057, 240), (1226, -80), (1251, -10), (1323, 240)]

theorem oldProjectionSound1934 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1934 =
      Integer.Sparse.eval oldProjection1934 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1934 oldProjection1934
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1934 hH))

def oldProjection1935 : Integer.Sparse (Fin 1613) := [(3, 4), (20, -1), (93, -6), (94, 3), (243, -24), (1057, 24), (1225, -8), (1226, -8), (1251, -2)]

theorem oldProjectionSound1935 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1935 =
      Integer.Sparse.eval oldProjection1935 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1935 oldProjection1935
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1935 hH))

def oldProjection1936 : Integer.Sparse (Fin 1613) := [(0, 3), (19, 60), (20, -5), (94, -45), (108, -160), (241, -80), (247, -80), (751, -720), (1251, -35), (1319, 240)]

theorem oldProjectionSound1936 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1936 =
      Integer.Sparse.eval oldProjection1936 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1936 oldProjection1936
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1936 hH))

def oldProjection1937 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 200), (20, -10), (94, -75), (108, -80), (238, 240), (240, 240), (241, -400), (243, -80), (247, -240), (698, -80), (1251, -70)]

theorem oldProjectionSound1937 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1937 =
      Integer.Sparse.eval oldProjection1937 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1937 oldProjection1937
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1937 hH))

def oldProjection1938 : Integer.Sparse (Fin 1613) := [(19, 16), (20, -3), (37, 24), (38, 24), (94, -4), (108, -8), (241, -16), (243, -16), (247, -16), (704, -8), (1251, -5)]

theorem oldProjectionSound1938 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1938 =
      Integer.Sparse.eval oldProjection1938 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1938 oldProjection1938
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1938 hH))

def oldProjection1939 : Integer.Sparse (Fin 1613) := [(3, 2), (19, -10), (20, 7), (94, 5), (243, -16), (244, -16), (1045, 24), (1053, 24), (1251, -2)]

theorem oldProjectionSound1939 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1939 =
      Integer.Sparse.eval oldProjection1939 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1939 oldProjection1939
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1939 hH))

def oldProjection1942 : Integer.Sparse (Fin 1613) := [(94, -5), (549, -72), (565, -72), (698, -24), (1226, -8), (1227, -8), (1251, 3)]

theorem oldProjectionSound1942 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1942 =
      Integer.Sparse.eval oldProjection1942 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1942 oldProjection1942
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1942 hH))

def oldProjection1943 : Integer.Sparse (Fin 1613) := [(0, 3), (81, 480), (94, -15), (697, 240), (698, -80), (775, -720), (807, -720), (1058, 240), (1227, -80), (1251, 10)]

theorem oldProjectionSound1943 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1943 =
      Integer.Sparse.eval oldProjection1943 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1943 oldProjection1943
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1943 hH))

def oldProjection1944 : Integer.Sparse (Fin 1613) := [(0, -1), (94, -5), (565, -720), (698, -80), (775, -720), (808, -720), (1055, 240), (1227, -80), (1251, 40)]

theorem oldProjectionSound1944 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1944 =
      Integer.Sparse.eval oldProjection1944 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1944 oldProjection1944
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1944 hH))

def oldProjection1945 : Integer.Sparse (Fin 1613) := [(0, 1), (76, 720), (94, -30), (241, -80), (691, 240), (697, 240), (698, -160), (700, -80), (704, -80), (800, -720), (1251, -15), (1323, 240)]

theorem oldProjectionSound1945 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1945 =
      Integer.Sparse.eval oldProjection1945 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1945 oldProjection1945
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1945 hH))

def oldProjection1946 : Integer.Sparse (Fin 1613) := [(0, 3), (76, 240), (90, -240), (94, -15), (243, -80), (698, -320), (700, -160), (1226, -320), (1251, 10), (1323, 240)]

theorem oldProjectionSound1946 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1946 =
      Integer.Sparse.eval oldProjection1946 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1946 oldProjection1946
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1946 hH))

def oldProjection1947 : Integer.Sparse (Fin 1613) := [(0, 1), (90, -80), (94, -10), (243, -80), (642, -720), (698, -240), (700, -320), (704, -80), (1117, -720), (1226, -80), (1251, -35)]

theorem oldProjectionSound1947 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1947 =
      Integer.Sparse.eval oldProjection1947 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1947 oldProjection1947
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1947 hH))

def oldProjection1948 : Integer.Sparse (Fin 1613) := [(0, 2), (76, 240), (90, -240), (94, -35), (697, 240), (698, -480), (700, -240), (704, -160), (1059, -80), (1226, -80), (1251, -25)]

theorem oldProjectionSound1948 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1948 =
      Integer.Sparse.eval oldProjection1948 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1948 oldProjection1948
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1948 hH))

def oldProjection1949 : Integer.Sparse (Fin 1613) := [(0, 1), (76, 240), (90, -160), (94, -25), (241, -80), (243, -80), (691, 240), (698, -160), (700, -240), (704, -80), (781, -720), (1226, -80), (1251, 10)]

theorem oldProjectionSound1949 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1949 =
      Integer.Sparse.eval oldProjection1949 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1949 oldProjection1949
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1949 hH))

def oldProjection1950 : Integer.Sparse (Fin 1613) := [(94, -1), (642, -144), (698, -48), (782, -144), (809, -144), (1226, -48), (1227, -32), (1251, 3)]

theorem oldProjectionSound1950 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1950 =
      Integer.Sparse.eval oldProjection1950 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1950 oldProjection1950
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1950 hH))

def oldProjection1951 : Integer.Sparse (Fin 1613) := [(0, 1), (76, 240), (90, -160), (94, -5), (243, -80), (698, -400), (700, -80), (782, -720), (1058, 240), (1226, -80), (1227, -80), (1251, -10)]

theorem oldProjectionSound1951 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1951 =
      Integer.Sparse.eval oldProjection1951 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1951 oldProjection1951
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1951 hH))

def oldProjection1953 : Integer.Sparse (Fin 1613) := [(0, 1), (19, -20), (20, -5), (94, -30), (243, -80), (698, -160), (700, -80), (704, -160), (798, -720), (1061, 240), (1214, 240), (1219, 240), (1223, 240), (1251, -30)]

theorem oldProjectionSound1953 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1953 =
      Integer.Sparse.eval oldProjection1953 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1953 oldProjection1953
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1953 hH))

def oldProjection1956 : Integer.Sparse (Fin 1613) := [(0, 4), (19, 80), (93, -60), (94, -15), (691, 240), (1050, 240), (1058, 480), (1250, -180), (1251, -15)]

theorem oldProjectionSound1956 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1956 =
      Integer.Sparse.eval oldProjection1956 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1956 oldProjection1956
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1956 hH))

def oldProjection1957 : Integer.Sparse (Fin 1613) := [(0, 3), (94, -25), (243, -80), (691, 240), (698, -400), (700, -160), (704, -80), (808, -720), (1050, 240), (1058, 240), (1059, -160), (1226, -80), (1227, -80)]

theorem oldProjectionSound1957 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1957 =
      Integer.Sparse.eval oldProjection1957 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1957 oldProjection1957
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1957 hH))

def oldProjection1958 : Integer.Sparse (Fin 1613) := [(434, -1), (808, -2), (869, -1)]

theorem oldProjectionSound1958 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1958 =
      Integer.Sparse.eval oldProjection1958 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 2 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1958 oldProjection1958
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1958 hH))

def oldProjection1960 : Integer.Sparse (Fin 1613) := [(0, 1), (94, -15), (241, -80), (690, 120), (697, 240), (698, -80), (700, -40), (789, -360), (1059, -40), (1251, 20)]

theorem oldProjectionSound1960 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1960 =
      Integer.Sparse.eval oldProjection1960 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1960 oldProjection1960
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1960 hH))

def oldProjection1961 : Integer.Sparse (Fin 1613) := [(0, 1), (94, -10), (478, -360), (489, -360), (559, -360), (698, 40), (1251, 5)]

theorem oldProjectionSound1961 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1961 =
      Integer.Sparse.eval oldProjection1961 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1961 oldProjection1961
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1961 hH))

def oldProjection1962 : Integer.Sparse (Fin 1613) := [(0, 1), (94, -10), (559, -720), (666, -720), (697, 240), (698, -160), (700, -80), (803, -720), (1059, -80), (1251, 5)]

theorem oldProjectionSound1962 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1962 =
      Integer.Sparse.eval oldProjection1962 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1962 oldProjection1962
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1962 hH))

def oldProjection1963 : Integer.Sparse (Fin 1613) := [(0, 1), (559, -360), (698, -80), (789, -360), (806, -360), (1050, 120), (1059, -80), (1251, 15)]

theorem oldProjectionSound1963 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1963 =
      Integer.Sparse.eval oldProjection1963 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1963 oldProjection1963
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1963 hH))

def oldProjection1964 : Integer.Sparse (Fin 1613) := [(0, 1), (94, -5), (697, 120), (698, -160), (700, -80), (789, -360), (808, -360), (1058, 120), (1059, -120), (1251, 10)]

theorem oldProjectionSound1964 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1964 =
      Integer.Sparse.eval oldProjection1964 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1964 oldProjection1964
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1964 hH))

def oldProjection1965 : Integer.Sparse (Fin 1613) := [(94, -1), (427, -144), (433, -144), (559, -144), (698, -16), (1052, 48), (1221, 48), (1226, -16), (1251, 3)]

theorem oldProjectionSound1965 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1965 =
      Integer.Sparse.eval oldProjection1965 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1965 oldProjection1965
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1965 hH))

def oldProjection1966 : Integer.Sparse (Fin 1613) := [(94, 1), (243, -16), (698, -16), (700, -24), (791, -72), (1044, 24), (1052, 48), (1059, -8), (1251, -3)]

theorem oldProjectionSound1966 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1966 =
      Integer.Sparse.eval oldProjection1966 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1966 oldProjection1966
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1966 hH))

def oldProjection1967 : Integer.Sparse (Fin 1613) := [(94, -1), (243, -16), (691, 24), (698, -16), (704, -16), (791, -72), (1251, -5)]

theorem oldProjectionSound1967 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1967 =
      Integer.Sparse.eval oldProjection1967 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1967 oldProjection1967
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1967 hH))

def oldProjection1968 : Integer.Sparse (Fin 1613) := [(0, 3), (19, 40), (76, 240), (94, -50), (104, -80), (241, -80), (247, -80), (691, 240), (694, 240), (697, 240), (698, -80), (700, -80), (704, -160), (800, -720), (1251, -45)]

theorem oldProjectionSound1968 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1968 =
      Integer.Sparse.eval oldProjection1968 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1968 oldProjection1968
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1968 hH))

def oldProjection1969 : Integer.Sparse (Fin 1613) := [(0, 2), (19, 100), (20, -5), (94, -95), (104, -160), (243, -80), (691, 240), (694, 240), (698, -160), (700, -240), (704, -240), (1251, -100)]

theorem oldProjectionSound1969 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1969 =
      Integer.Sparse.eval oldProjection1969 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1969 oldProjection1969
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1969 hH))

def oldProjection1971 : Integer.Sparse (Fin 1613) := [(0, 1), (94, -10), (247, -40), (694, 120), (697, 480), (698, -40), (704, -40), (794, -360), (1251, -15), (1323, 120), (1389, 120)]

theorem oldProjectionSound1971 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1971 =
      Integer.Sparse.eval oldProjection1971 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1971 oldProjection1971
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1971 hH))

def oldProjection1973 : Integer.Sparse (Fin 1613) := [(19, 20), (20, -4), (94, -13), (104, -16), (700, -16), (701, -16), (704, 48), (796, -144), (1251, -9)]

theorem oldProjectionSound1973 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1973 =
      Integer.Sparse.eval oldProjection1973 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1973 oldProjection1973
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1973 hH))

end NoFourMUBs.Step2.SOS.Normalization

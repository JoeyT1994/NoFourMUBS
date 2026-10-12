import NoFourMUBs.Step2.SOS.NormalizationContext
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Sound27
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Sound28

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def oldProjection1785 : Integer.Sparse (Fin 1613) := [(0, -13), (94, -25), (698, -240), (1059, -80), (1221, 240), (1227, -160), (1251, -40)]

theorem oldProjectionSound1785 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1785 =
      Integer.Sparse.eval oldProjection1785 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1785 oldProjection1785
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1785 hH))

def oldProjection1786 : Integer.Sparse (Fin 1613) := [(0, -11), (94, -15), (698, -400), (1059, -320), (1227, -160), (1251, 120)]

theorem oldProjectionSound1786 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1786 =
      Integer.Sparse.eval oldProjection1786 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1786 oldProjection1786
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1786 hH))

def oldProjection1787 : Integer.Sparse (Fin 1613) := [(0, 7), (81, 480), (90, -80), (94, -5), (698, -640), (700, -160), (1059, -400), (1221, 240), (1226, -80), (1227, -160), (1251, 120)]

theorem oldProjectionSound1787 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1787 =
      Integer.Sparse.eval oldProjection1787 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1787 oldProjection1787
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1787 hH))

def oldProjection1788 : Integer.Sparse (Fin 1613) := [(0, 1), (81, 120), (88, -40), (90, -40), (94, -10), (228, 240), (241, -40), (243, -80), (698, -320), (1226, -240), (1227, -160), (1251, 5)]

theorem oldProjectionSound1788 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1788 =
      Integer.Sparse.eval oldProjection1788 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1788 oldProjection1788
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1788 hH))

def oldProjection1789 : Integer.Sparse (Fin 1613) := [(0, -1), (94, -11), (698, -80), (1226, -16), (1227, -64), (1251, 10), (1389, 48)]

theorem oldProjectionSound1789 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1789 =
      Integer.Sparse.eval oldProjection1789 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1789 oldProjection1789
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1789 hH))

def oldProjection1790 : Integer.Sparse (Fin 1613) := [(0, -39), (94, -50), (1251, 125), (1389, 240)]

theorem oldProjectionSound1790 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1790 =
      Integer.Sparse.eval oldProjection1790 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1790 oldProjection1790
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1790 hH))

def oldProjection1791 : Integer.Sparse (Fin 1613) := [(0, -1), (81, 480), (94, -15), (698, -400), (1059, -240), (1221, 240), (1227, -160), (1251, 30)]

theorem oldProjectionSound1791 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1791 =
      Integer.Sparse.eval oldProjection1791 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1791 oldProjection1791
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1791 hH))

def oldProjection1792 : Integer.Sparse (Fin 1613) := [(0, -5), (94, -8), (617, -144), (698, -16), (1227, -16), (1251, 21), (1389, 48)]

theorem oldProjectionSound1792 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1792 =
      Integer.Sparse.eval oldProjection1792 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1792 oldProjection1792
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1792 hH))

def oldProjection1793 : Integer.Sparse (Fin 1613) := [(0, -3), (94, -6), (698, -64), (1059, -16), (1227, -64), (1251, 21), (1389, 48)]

theorem oldProjectionSound1793 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1793 =
      Integer.Sparse.eval oldProjection1793 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1793 oldProjection1793
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1793 hH))

def oldProjection1794 : Integer.Sparse (Fin 1613) := [(0, 1), (81, 240), (90, -80), (94, -20), (618, -720), (698, -480), (1226, -240), (1227, -320), (1251, 35), (1389, 240)]

theorem oldProjectionSound1794 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1794 =
      Integer.Sparse.eval oldProjection1794 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1794 oldProjection1794
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1794 hH))

def oldProjection1795 : Integer.Sparse (Fin 1613) := [(0, 3), (610, -720), (617, -720), (623, -720), (698, -240), (1059, -80), (1227, -160), (1251, 45)]

theorem oldProjectionSound1795 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1795 =
      Integer.Sparse.eval oldProjection1795 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1795 oldProjection1795
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1795 hH))

def oldProjection1796 : Integer.Sparse (Fin 1613) := [(0, 3), (90, -240), (94, -5), (618, -720), (698, -720), (700, -80), (1059, -80), (1226, -400), (1227, -320), (1251, 60)]

theorem oldProjectionSound1796 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1796 =
      Integer.Sparse.eval oldProjection1796 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1796 oldProjection1796
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1796 hH))

def oldProjection1797 : Integer.Sparse (Fin 1613) := [(0, 2), (76, 240), (81, 240), (90, -160), (94, -5), (565, -720), (698, -480), (700, -80), (1059, -80), (1221, 240), (1226, -240), (1227, -160), (1251, 45)]

theorem oldProjectionSound1797 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1797 =
      Integer.Sparse.eval oldProjection1797 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1797 oldProjection1797
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1797 hH))

def oldProjection1798 : Integer.Sparse (Fin 1613) := [(0, 2), (76, 240), (81, 480), (94, -45), (565, -720), (698, -160), (1221, 240), (1251, 5), (1389, 240)]

theorem oldProjectionSound1798 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1798 =
      Integer.Sparse.eval oldProjection1798 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1798 oldProjection1798
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1798 hH))

def oldProjection1799 : Integer.Sparse (Fin 1613) := [(0, 1), (602, -360), (603, -360), (635, -360), (698, -80), (1059, -40), (1221, 120), (1227, -40), (1251, 15)]

theorem oldProjectionSound1799 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1799 =
      Integer.Sparse.eval oldProjection1799 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1799 oldProjection1799
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1799 hH))

def oldProjection1800 : Integer.Sparse (Fin 1613) := [(0, -7), (94, -20), (698, -320), (1059, -160), (1221, 480), (1227, -160), (1251, 115), (1389, 240)]

theorem oldProjectionSound1800 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1800 =
      Integer.Sparse.eval oldProjection1800 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1800 oldProjection1800
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1800 hH))

def oldProjection1801 : Integer.Sparse (Fin 1613) := [(0, -8), (94, -25), (635, -720), (698, -320), (1059, -80), (1227, -240), (1251, 115), (1389, 240)]

theorem oldProjectionSound1801 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1801 =
      Integer.Sparse.eval oldProjection1801 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1801 oldProjection1801
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1801 hH))

def oldProjection1802 : Integer.Sparse (Fin 1613) := [(0, 1), (81, 240), (94, -15), (228, 120), (638, -360), (698, -160), (1059, -80), (1221, 120), (1251, 20)]

theorem oldProjectionSound1802 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1802 =
      Integer.Sparse.eval oldProjection1802 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1802 oldProjection1802
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1802 hH))

def oldProjection1803 : Integer.Sparse (Fin 1613) := [(0, 1), (81, 240), (94, -55), (698, -320), (1059, -160), (1221, 240), (1251, 60), (1389, 240)]

theorem oldProjectionSound1803 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1803 =
      Integer.Sparse.eval oldProjection1803 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1803 oldProjection1803
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1803 hH))

def oldProjection1804 : Integer.Sparse (Fin 1613) := [(0, 2), (81, 240), (94, -15), (602, -720), (698, -400), (1059, -160), (1221, 240), (1226, -160), (1227, -160), (1251, 35)]

theorem oldProjectionSound1804 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1804 =
      Integer.Sparse.eval oldProjection1804 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1804 oldProjection1804
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1804 hH))

def oldProjection1807 : Integer.Sparse (Fin 1613) := [(76, 48), (81, 48), (88, -32), (90, -32), (94, -1), (231, 48), (241, -16), (243, -32), (642, -144), (698, -64), (700, -16), (1226, -64), (1227, -16), (1251, 3)]

theorem oldProjectionSound1807 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1807 =
      Integer.Sparse.eval oldProjection1807 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1807 oldProjection1807
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1807 hH))

def oldProjection1808 : Integer.Sparse (Fin 1613) := [(0, 1), (81, 80), (559, -240), (602, -240), (698, -80), (1050, 80), (1059, -80), (1221, 80), (1251, 15)]

theorem oldProjectionSound1808 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1808 =
      Integer.Sparse.eval oldProjection1808 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 480 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1808 oldProjection1808
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1808 hH))

def oldProjection1809 : Integer.Sparse (Fin 1613) := [(0, 3), (81, 240), (603, -720), (674, -720), (698, -240), (1059, -160), (1221, 480), (1227, -80), (1251, 45)]

theorem oldProjectionSound1809 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1809 =
      Integer.Sparse.eval oldProjection1809 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1809 oldProjection1809
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1809 hH))

def oldProjection1810 : Integer.Sparse (Fin 1613) := [(0, 3), (81, 240), (90, -80), (586, -720), (698, -240), (700, -240), (1059, -80), (1227, -80), (1251, 45)]

theorem oldProjectionSound1810 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1810 =
      Integer.Sparse.eval oldProjection1810 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1810 oldProjection1810
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1810 hH))

def oldProjection1811 : Integer.Sparse (Fin 1613) := [(0, 3), (81, 120), (590, -360), (617, -360), (698, -160), (1059, -160), (1227, -40), (1251, 45)]

theorem oldProjectionSound1811 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1811 =
      Integer.Sparse.eval oldProjection1811 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1811 oldProjection1811
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1811 hH))

def oldProjection1812 : Integer.Sparse (Fin 1613) := [(0, 3), (590, -360), (623, -360), (698, -200), (700, -40), (1059, -120), (1227, -120), (1251, 45)]

theorem oldProjectionSound1812 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1812 =
      Integer.Sparse.eval oldProjection1812 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1812 oldProjection1812
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1812 hH))

def oldProjection1813 : Integer.Sparse (Fin 1613) := [(0, 1), (81, 120), (90, -160), (94, -5), (698, -280), (700, -160), (1059, -120), (1226, -160), (1227, -40), (1251, 30)]

theorem oldProjectionSound1813 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1813 =
      Integer.Sparse.eval oldProjection1813 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1813 oldProjection1813
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1813 hH))

def oldProjection1814 : Integer.Sparse (Fin 1613) := [(0, 1), (76, 120), (81, 120), (90, -80), (94, -10), (559, -360), (698, -120), (700, -120), (1059, -80), (1226, -40), (1251, 5)]

theorem oldProjectionSound1814 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1814 =
      Integer.Sparse.eval oldProjection1814 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1814 oldProjection1814
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1814 hH))

def oldProjection1815 : Integer.Sparse (Fin 1613) := [(0, 1), (590, -180), (603, -180), (674, -180), (698, -40), (1059, -60), (1251, 15)]

theorem oldProjectionSound1815 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1815 =
      Integer.Sparse.eval oldProjection1815 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 360 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1815 oldProjection1815
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1815 hH))

def oldProjection1816 : Integer.Sparse (Fin 1613) := [(0, 3), (586, -720), (590, -720), (635, -720), (698, -240), (1059, -80), (1227, -160), (1251, 45)]

theorem oldProjectionSound1816 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1816 =
      Integer.Sparse.eval oldProjection1816 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1816 oldProjection1816
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1816 hH))

def oldProjection1817 : Integer.Sparse (Fin 1613) := [(0, 2), (76, 240), (90, -240), (94, -35), (241, -80), (698, -560), (700, -80), (1226, -480), (1227, -160), (1251, 55)]

theorem oldProjectionSound1817 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1817 =
      Integer.Sparse.eval oldProjection1817 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1817 oldProjection1817
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1817 hH))

def oldProjection1818 : Integer.Sparse (Fin 1613) := [(94, -1), (698, -64), (1059, -8), (1221, 24), (1226, -32), (1227, -32), (1251, 11)]

theorem oldProjectionSound1818 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1818 =
      Integer.Sparse.eval oldProjection1818 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1818 oldProjection1818
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1818 hH))

def oldProjection1819 : Integer.Sparse (Fin 1613) := [(0, -14), (94, -5), (610, -720), (698, -240), (1221, 240), (1226, -80), (1227, -320), (1251, 125), (1389, 240)]

theorem oldProjectionSound1819 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1819 =
      Integer.Sparse.eval oldProjection1819 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1819 oldProjection1819
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1819 hH))

def oldProjection1820 : Integer.Sparse (Fin 1613) := [(0, -1), (94, -5), (602, -720), (698, -480), (1059, -80), (1226, -240), (1227, -240), (1251, 80)]

theorem oldProjectionSound1820 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1820 =
      Integer.Sparse.eval oldProjection1820 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1820 oldProjection1820
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1820 hH))

def oldProjection1821 : Integer.Sparse (Fin 1613) := [(0, 2), (90, -240), (94, -25), (603, -720), (698, -400), (700, -80), (1226, -400), (1227, -160), (1251, 25)]

theorem oldProjectionSound1821 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1821 =
      Integer.Sparse.eval oldProjection1821 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1821 oldProjection1821
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1821 hH))

def oldProjection1822 : Integer.Sparse (Fin 1613) := [(0, 1), (90, -20), (94, -10), (603, -180), (698, -20), (1226, -60), (1227, -40), (1251, 5)]

theorem oldProjectionSound1822 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1822 =
      Integer.Sparse.eval oldProjection1822 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 360 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1822 oldProjection1822
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1822 hH))

def oldProjection1823 : Integer.Sparse (Fin 1613) := [(0, -3), (94, -10), (1221, 120), (1251, 25), (1389, 240)]

theorem oldProjectionSound1823 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1823 =
      Integer.Sparse.eval oldProjection1823 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1823 oldProjection1823
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1823 hH))

def oldProjection1824 : Integer.Sparse (Fin 1613) := [(0, -6), (94, -25), (635, -720), (698, -320), (1226, -80), (1227, -80), (1251, 25)]

theorem oldProjectionSound1824 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1824 =
      Integer.Sparse.eval oldProjection1824 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1824 oldProjection1824
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1824 hH))

def oldProjection1825 : Integer.Sparse (Fin 1613) := [(0, -8), (94, -5), (698, -80), (1227, -160), (1251, 55), (1389, 240)]

theorem oldProjectionSound1825 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1825 =
      Integer.Sparse.eval oldProjection1825 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1825 oldProjection1825
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1825 hH))

def oldProjection1826 : Integer.Sparse (Fin 1613) := [(0, -2), (94, -5), (617, -180), (698, -100), (1059, -60), (1226, -20), (1227, -40), (1251, 35)]

theorem oldProjectionSound1826 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1826 =
      Integer.Sparse.eval oldProjection1826 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 360 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1826 oldProjection1826
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1826 hH))

def oldProjection1827 : Integer.Sparse (Fin 1613) := [(0, 7), (81, 240), (90, -80), (94, -60), (623, -720), (698, -480), (700, -160), (1059, -80), (1226, -80), (1227, -80), (1251, 5)]

theorem oldProjectionSound1827 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1827 =
      Integer.Sparse.eval oldProjection1827 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1827 oldProjection1827
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1827 hH))

def oldProjection1828 : Integer.Sparse (Fin 1613) := [(0, 2), (81, 240), (90, -320), (94, -25), (698, -560), (700, -240), (1059, -80), (1226, -400), (1227, -160), (1251, 25)]

theorem oldProjectionSound1828 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1828 =
      Integer.Sparse.eval oldProjection1828 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1828 oldProjection1828
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1828 hH))

def oldProjection1829 : Integer.Sparse (Fin 1613) := [(0, -1), (602, -180), (698, -60), (1226, -20), (1251, 15), (1389, 60)]

theorem oldProjectionSound1829 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1829 =
      Integer.Sparse.eval oldProjection1829 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 360 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1829 oldProjection1829
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1829 hH))

def oldProjection1830 : Integer.Sparse (Fin 1613) := [(0, -3), (81, 48), (94, -7), (617, -144), (698, -48), (1059, -16), (1227, -32), (1251, 16)]

theorem oldProjectionSound1830 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1830 =
      Integer.Sparse.eval oldProjection1830 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1830 oldProjection1830
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1830 hH))

def oldProjection1831 : Integer.Sparse (Fin 1613) := [(0, 1), (81, 240), (94, -5), (698, -640), (1059, -160), (1226, -240), (1227, -320), (1251, 110)]

theorem oldProjectionSound1831 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1831 =
      Integer.Sparse.eval oldProjection1831 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1831 oldProjection1831
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1831 hH))

def oldProjection1832 : Integer.Sparse (Fin 1613) := [(94, -1), (241, -16), (462, -144), (666, -144), (668, -144), (698, -16), (1050, 48), (1055, 48), (1251, 3)]

theorem oldProjectionSound1832 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1832 =
      Integer.Sparse.eval oldProjection1832 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1832 oldProjection1832
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1832 hH))

def oldProjection1833 : Integer.Sparse (Fin 1613) := [(0, 1), (94, -5), (666, -180), (697, 60), (698, -80), (700, -20), (1059, -20), (1251, 10)]

theorem oldProjectionSound1833 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1833 =
      Integer.Sparse.eval oldProjection1833 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 360 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1833 oldProjection1833
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1833 hH))

def oldProjection1834 : Integer.Sparse (Fin 1613) := [(0, -3), (94, -10), (669, -720), (697, 240), (698, -320), (700, -80), (1059, -160), (1227, -240), (1251, 105), (1389, 240)]

theorem oldProjectionSound1834 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1834 =
      Integer.Sparse.eval oldProjection1834 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1834 oldProjection1834
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1834 hH))

def oldProjection1835 : Integer.Sparse (Fin 1613) := [(0, -1), (94, -25), (668, -720), (697, 240), (698, -240), (1059, -160), (1227, -80), (1251, 20)]

theorem oldProjectionSound1835 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1835 =
      Integer.Sparse.eval oldProjection1835 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1835 oldProjection1835
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1835 hH))

def oldProjection1836 : Integer.Sparse (Fin 1613) := [(0, -9), (81, 240), (94, -25), (669, -720), (697, 240), (698, -240), (1059, -160), (1227, -80), (1251, 100)]

theorem oldProjectionSound1836 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1836 =
      Integer.Sparse.eval oldProjection1836 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1836 oldProjection1836
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1836 hH))

def oldProjection1837 : Integer.Sparse (Fin 1613) := [(0, -1), (666, -720), (697, 240), (698, -240), (1227, -160), (1251, 65), (1389, 480)]

theorem oldProjectionSound1837 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1837 =
      Integer.Sparse.eval oldProjection1837 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1837 oldProjection1837
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1837 hH))

def oldProjection1838 : Integer.Sparse (Fin 1613) := [(0, -1), (81, 240), (94, -15), (668, -720), (697, 240), (698, -160), (1059, -80), (1221, 240), (1227, -80), (1251, 30), (1389, 240)]

theorem oldProjectionSound1838 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1838 =
      Integer.Sparse.eval oldProjection1838 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1838 oldProjection1838
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1838 hH))

def oldProjection1839 : Integer.Sparse (Fin 1613) := [(0, 3), (94, -15), (241, -80), (666, -720), (698, -400), (1050, 240), (1055, 240), (1059, -160), (1227, -160), (1251, 50)]

theorem oldProjectionSound1839 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1839 =
      Integer.Sparse.eval oldProjection1839 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1839 oldProjection1839
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1839 hH))

def oldProjection1840 : Integer.Sparse (Fin 1613) := [(0, -1), (94, -20), (241, -80), (668, -720), (698, -240), (1050, 240), (1055, 240), (1059, -80), (1221, 240), (1227, -80), (1251, 45)]

theorem oldProjectionSound1840 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1840 =
      Integer.Sparse.eval oldProjection1840 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1840 oldProjection1840
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1840 hH))

def oldProjection1841 : Integer.Sparse (Fin 1613) := [(0, -19), (94, -35), (247, -80), (669, -720), (698, -80), (1055, 240), (1227, -80), (1251, 60), (1388, 240)]

theorem oldProjectionSound1841 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1841 =
      Integer.Sparse.eval oldProjection1841 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1841 oldProjection1841
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1841 hH))

def oldProjection1842 : Integer.Sparse (Fin 1613) := [(94, -1), (698, -112), (700, -16), (1055, 48), (1058, 48), (1059, -64), (1227, -64), (1251, 35)]

theorem oldProjectionSound1842 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1842 =
      Integer.Sparse.eval oldProjection1842 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1842 oldProjection1842
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1842 hH))

def oldProjection1843 : Integer.Sparse (Fin 1613) := [(0, 1), (674, -90), (698, -50), (700, -10), (1059, -10), (1251, 15)]

theorem oldProjectionSound1843 {H : CMatrix} (hH : IsHadamard H) :
    (180 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1843 =
      Integer.Sparse.eval oldProjection1843 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 180 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1843 oldProjection1843
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1843 hH))

def oldProjection1844 : Integer.Sparse (Fin 1613) := [(0, 9), (81, 240), (698, -640), (700, -240), (1059, -320), (1227, -240), (1251, 135)]

theorem oldProjectionSound1844 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1844 =
      Integer.Sparse.eval oldProjection1844 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1844 oldProjection1844
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1844 hH))

def oldProjection1845 : Integer.Sparse (Fin 1613) := [(0, 1), (81, 48), (674, -144), (698, -80), (700, -32), (1059, -32), (1221, 48), (1227, -16), (1251, 15)]

theorem oldProjectionSound1845 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1845 =
      Integer.Sparse.eval oldProjection1845 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1845 oldProjection1845
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1845 hH))

def oldProjection1846 : Integer.Sparse (Fin 1613) := [(0, 7), (674, -720), (698, -320), (1059, -240), (1221, 240), (1227, -320), (1251, 105)]

theorem oldProjectionSound1846 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1846 =
      Integer.Sparse.eval oldProjection1846 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1846 oldProjection1846
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1846 hH))

def oldProjection1847 : Integer.Sparse (Fin 1613) := [(0, -2), (81, 48), (94, -5), (698, -64), (1059, -16), (1227, -64), (1251, 25), (1389, 96)]

theorem oldProjectionSound1847 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1847 =
      Integer.Sparse.eval oldProjection1847 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1847 oldProjection1847
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1847 hH))

def oldProjection1848 : Integer.Sparse (Fin 1613) := [(0, -2), (81, 240), (94, -15), (698, -320), (1059, -160), (1221, 480), (1227, -160), (1251, 135), (1389, 480)]

theorem oldProjectionSound1848 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1848 =
      Integer.Sparse.eval oldProjection1848 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1848 oldProjection1848
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1848 hH))

def oldProjection1850 : Integer.Sparse (Fin 1613) := [(0, 4), (19, 80), (20, -5), (45, 240), (94, -85), (104, -80), (241, -80), (243, -160), (694, 240), (697, 240), (698, -320), (700, -320), (701, -80), (703, -80), (704, -320), (1059, -80), (1251, -40)]

theorem oldProjectionSound1850 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1850 =
      Integer.Sparse.eval oldProjection1850 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 480 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1850 oldProjection1850
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1850 hH))

def oldProjection1851 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 8), (23, 48), (38, 48), (81, 48), (94, -13), (228, 48), (241, -32), (243, -32), (247, -16), (678, -96), (697, 48), (698, -64), (700, -16), (704, -32), (1059, -16), (1226, -16), (1227, -16), (1251, -2)]

theorem oldProjectionSound1851 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1851 =
      Integer.Sparse.eval oldProjection1851 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 96 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1851 oldProjection1851
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1851 hH))

end NoFourMUBs.Step2.SOS.Normalization

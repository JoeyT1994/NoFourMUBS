import NoFourMUBs.Step2.SOS.NormalizationContext
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Sound26
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Sound27

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def oldProjection1717 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 20), (20, -5), (58, 480), (94, 25), (243, -80), (698, -240), (700, -400), (704, -160), (1052, 240), (1251, 5)]

theorem oldProjectionSound1717 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1717 =
      Integer.Sparse.eval oldProjection1717 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1717 oldProjection1717
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1717 hH))

def oldProjection1718 : Integer.Sparse (Fin 1613) := [(0, 1), (81, 120), (94, -5), (698, -100), (700, -20), (1059, -20), (1226, -40), (1227, -20)]

theorem oldProjectionSound1718 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1718 =
      Integer.Sparse.eval oldProjection1718 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 360 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1718 oldProjection1718
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1718 hH))

def oldProjection1719 : Integer.Sparse (Fin 1613) := [(0, 3), (94, -65), (489, -720), (698, -80), (1251, 40)]

theorem oldProjectionSound1719 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1719 =
      Integer.Sparse.eval oldProjection1719 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1719 oldProjection1719
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1719 hH))

def oldProjection1720 : Integer.Sparse (Fin 1613) := [(0, 1), (94, 10), (698, -80), (700, -160), (1059, -40), (1251, 5)]

theorem oldProjectionSound1720 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1720 =
      Integer.Sparse.eval oldProjection1720 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 360 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1720 oldProjection1720
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1720 hH))

def oldProjection1722 : Integer.Sparse (Fin 1613) := [(19, 24), (20, -3), (38, 48), (42, -16), (94, -11), (243, -16), (247, -16), (498, -144), (698, -16), (700, -32), (701, -32), (704, -80), (1251, -12)]

theorem oldProjectionSound1722 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1722 =
      Integer.Sparse.eval oldProjection1722 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1722 oldProjection1722
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1722 hH))

def oldProjection1723 : Integer.Sparse (Fin 1613) := [(19, 12), (20, -2), (38, 48), (42, -64), (94, -7), (241, -16), (243, -80), (698, -32), (700, -48), (701, -48), (704, -64), (1251, -5)]

theorem oldProjectionSound1723 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1723 =
      Integer.Sparse.eval oldProjection1723 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1723 oldProjection1723
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1723 hH))

def oldProjection1724 : Integer.Sparse (Fin 1613) := [(0, 3), (81, 240), (94, -20), (243, -80), (508, -720), (700, -160), (704, -80), (1059, -160), (1227, -80), (1251, 25)]

theorem oldProjectionSound1724 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1724 =
      Integer.Sparse.eval oldProjection1724 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1724 oldProjection1724
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1724 hH))

def oldProjection1725 : Integer.Sparse (Fin 1613) := [(19, 8), (88, -8), (94, -3), (241, -8), (243, -24), (247, -16), (543, -72), (698, -16), (1251, 1)]

theorem oldProjectionSound1725 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1725 =
      Integer.Sparse.eval oldProjection1725 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1725 oldProjection1725
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1725 hH))

def oldProjection1726 : Integer.Sparse (Fin 1613) := [(0, 3), (94, -15), (241, -80), (541, -720), (698, -160), (1050, 720), (1055, 240), (1058, 240), (1059, -80), (1250, -60), (1251, -10)]

theorem oldProjectionSound1726 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1726 =
      Integer.Sparse.eval oldProjection1726 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1726 oldProjection1726
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1726 hH))

def oldProjection1727 : Integer.Sparse (Fin 1613) := [(0, 2), (19, 100), (88, -80), (94, -45), (228, 240), (241, -400), (243, -240), (247, -240), (548, -720), (698, -160), (1226, -80), (1251, -15)]

theorem oldProjectionSound1727 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1727 =
      Integer.Sparse.eval oldProjection1727 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1727 oldProjection1727
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1727 hH))

def oldProjection1728 : Integer.Sparse (Fin 1613) := [(0, 3), (19, 40), (94, -65), (241, -240), (243, -80), (247, -80), (549, -720), (698, -400), (1226, -80), (1227, -80), (1251, 40)]

theorem oldProjectionSound1728 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1728 =
      Integer.Sparse.eval oldProjection1728 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1728 oldProjection1728
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1728 hH))

def oldProjection1729 : Integer.Sparse (Fin 1613) := [(0, -2), (94, -15), (484, -720), (541, -720), (698, -160), (1059, -80), (1221, 240), (1251, 95), (1389, 240)]

theorem oldProjectionSound1729 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1729 =
      Integer.Sparse.eval oldProjection1729 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1729 oldProjection1729
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1729 hH))

def oldProjection1730 : Integer.Sparse (Fin 1613) := [(0, -1), (19, 40), (94, -35), (228, 240), (241, -80), (247, -160), (549, -720), (698, -240), (1226, -160), (1227, -160), (1251, 10)]

theorem oldProjectionSound1730 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1730 =
      Integer.Sparse.eval oldProjection1730 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1730 oldProjection1730
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1730 hH))

def oldProjection1731 : Integer.Sparse (Fin 1613) := [(0, -1), (94, -5), (546, -180), (549, -180), (698, -40), (1227, -60), (1251, 10), (1389, 60)]

theorem oldProjectionSound1731 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1731 =
      Integer.Sparse.eval oldProjection1731 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 360 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1731 oldProjection1731
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1731 hH))

def oldProjection1732 : Integer.Sparse (Fin 1613) := [(0, -8), (94, -5), (541, -720), (549, -720), (617, -720), (1251, 55), (1389, 240)]

theorem oldProjectionSound1732 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1732 =
      Integer.Sparse.eval oldProjection1732 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1732 oldProjection1732
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1732 hH))

def oldProjection1733 : Integer.Sparse (Fin 1613) := [(0, -1), (478, -720), (546, -720), (635, -720), (698, -80), (1227, -160), (1251, 25), (1389, 240)]

theorem oldProjectionSound1733 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1733 =
      Integer.Sparse.eval oldProjection1733 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1733 oldProjection1733
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1733 hH))

def oldProjection1734 : Integer.Sparse (Fin 1613) := [(0, -1), (94, -15), (241, -80), (546, -720), (638, -720), (698, -80), (1050, 240), (1055, 480), (1250, -60), (1251, 50)]

theorem oldProjectionSound1734 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1734 =
      Integer.Sparse.eval oldProjection1734 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1734 oldProjection1734
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1734 hH))

def oldProjection1735 : Integer.Sparse (Fin 1613) := [(0, 2), (19, 100), (94, -35), (228, 480), (231, 240), (241, -240), (247, -160), (545, -720), (1251, -45)]

theorem oldProjectionSound1735 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1735 =
      Integer.Sparse.eval oldProjection1735 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1735 oldProjection1735
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1735 hH))

def oldProjection1736 : Integer.Sparse (Fin 1613) := [(0, -1), (19, 20), (94, -20), (247, -80), (549, -360), (698, -80), (1219, 120), (1226, -40), (1227, -80), (1251, 5)]

theorem oldProjectionSound1736 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1736 =
      Integer.Sparse.eval oldProjection1736 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1736 oldProjection1736
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1736 hH))

def oldProjection1737 : Integer.Sparse (Fin 1613) := [(0, -3), (19, 20), (94, -20), (697, 240), (698, -80), (1059, -80), (1250, -120), (1251, -5)]

theorem oldProjectionSound1737 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1737 =
      Integer.Sparse.eval oldProjection1737 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1737 oldProjection1737
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1737 hH))

def oldProjection1738 : Integer.Sparse (Fin 1613) := [(0, -3), (19, 10), (94, -30), (697, 120), (698, -40), (1227, -40), (1250, -60), (1251, 55), (1389, 240)]

theorem oldProjectionSound1738 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1738 =
      Integer.Sparse.eval oldProjection1738 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1738 oldProjection1738
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1738 hH))

def oldProjection1739 : Integer.Sparse (Fin 1613) := [(0, -2), (19, 20), (94, -15), (698, -400), (1219, 240), (1226, -160), (1227, -240), (1251, 35)]

theorem oldProjectionSound1739 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1739 =
      Integer.Sparse.eval oldProjection1739 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1739 oldProjection1739
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1739 hH))

def oldProjection1740 : Integer.Sparse (Fin 1613) := [(0, -17), (94, -45), (247, -80), (617, -720), (697, 240), (698, -80), (1059, -80), (1251, 80)]

theorem oldProjectionSound1740 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1740 =
      Integer.Sparse.eval oldProjection1740 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1740 oldProjection1740
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1740 hH))

def oldProjection1741 : Integer.Sparse (Fin 1613) := [(0, -1), (94, -5), (241, -20), (635, -180), (697, 60), (698, -80), (1227, -60), (1251, 10), (1389, 60)]

theorem oldProjectionSound1741 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1741 =
      Integer.Sparse.eval oldProjection1741 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 360 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1741 oldProjection1741
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1741 hH))

def oldProjection1742 : Integer.Sparse (Fin 1613) := [(0, 2), (94, -15), (241, -160), (698, -400), (1050, 240), (1055, 240), (1221, 240), (1226, -80), (1227, -160), (1251, -45)]

theorem oldProjectionSound1742 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1742 =
      Integer.Sparse.eval oldProjection1742 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1742 oldProjection1742
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1742 hH))

def oldProjection1743 : Integer.Sparse (Fin 1613) := [(0, 1), (94, -30), (241, -160), (698, -320), (1050, 240), (1055, 240), (1059, -240), (1227, -80), (1251, 145)]

theorem oldProjectionSound1743 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1743 =
      Integer.Sparse.eval oldProjection1743 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1743 oldProjection1743
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1743 hH))

def oldProjection1744 : Integer.Sparse (Fin 1613) := [(0, 3), (94, -10), (698, -400), (1050, 240), (1058, 240), (1059, -160), (1221, 240), (1226, -160), (1227, -80), (1251, -45)]

theorem oldProjectionSound1744 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1744 =
      Integer.Sparse.eval oldProjection1744 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1744 oldProjection1744
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1744 hH))

def oldProjection1745 : Integer.Sparse (Fin 1613) := [(0, -11), (610, -720), (698, -240), (1055, 240), (1058, 240), (1226, -80), (1227, -240), (1251, 115)]

theorem oldProjectionSound1745 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1745 =
      Integer.Sparse.eval oldProjection1745 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1745 oldProjection1745
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1745 hH))

def oldProjection1746 : Integer.Sparse (Fin 1613) := [(0, -1), (94, 5), (1050, 120), (1221, 120), (1250, -30), (1251, 80)]

theorem oldProjectionSound1746 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1746 =
      Integer.Sparse.eval oldProjection1746 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1746 oldProjection1746
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1746 hH))

def oldProjection1747 : Integer.Sparse (Fin 1613) := [(0, -2), (94, -15), (698, -80), (1055, 240), (1227, -80), (1250, -60), (1251, -45)]

theorem oldProjectionSound1747 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1747 =
      Integer.Sparse.eval oldProjection1747 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1747 oldProjection1747
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1747 hH))

def oldProjection1748 : Integer.Sparse (Fin 1613) := [(0, 1), (94, -2), (1250, -12), (1251, 1), (1388, 48), (1389, 48)]

theorem oldProjectionSound1748 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1748 =
      Integer.Sparse.eval oldProjection1748 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1748 oldProjection1748
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1748 hH))

def oldProjection1749 : Integer.Sparse (Fin 1613) := [(0, -1), (94, -7), (698, -48), (1050, 48), (1059, -48), (1250, -12), (1251, 2)]

theorem oldProjectionSound1749 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1749 =
      Integer.Sparse.eval oldProjection1749 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1749 oldProjection1749
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1749 hH))

def oldProjection1750 : Integer.Sparse (Fin 1613) := [(0, -16), (94, -25), (1250, -30), (1251, 65), (1388, 120)]

theorem oldProjectionSound1750 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1750 =
      Integer.Sparse.eval oldProjection1750 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1750 oldProjection1750
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1750 hH))

def oldProjection1751 : Integer.Sparse (Fin 1613) := [(0, -4), (94, -15), (698, -80), (1055, 120), (1227, -120), (1250, -30), (1251, 75), (1389, 120)]

theorem oldProjectionSound1751 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1751 =
      Integer.Sparse.eval oldProjection1751 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1751 oldProjection1751
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1751 hH))

def oldProjection1752 : Integer.Sparse (Fin 1613) := [(0, -1), (94, -10), (1050, 120), (1221, 240), (1250, -30), (1251, 5), (1389, 240)]

theorem oldProjectionSound1752 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1752 =
      Integer.Sparse.eval oldProjection1752 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1752 oldProjection1752
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1752 hH))

def oldProjection1753 : Integer.Sparse (Fin 1613) := [(94, -3), (602, -144), (698, -80), (1050, 48), (1058, 48), (1059, -48), (1226, -16), (1227, -32), (1251, 17)]

theorem oldProjectionSound1753 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1753 =
      Integer.Sparse.eval oldProjection1753 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1753 oldProjection1753
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1753 hH))

def oldProjection1754 : Integer.Sparse (Fin 1613) := [(19, 2), (88, -16), (94, -1), (228, 12), (241, -16), (243, -32), (698, -16), (1226, -12), (1251, 1)]

theorem oldProjectionSound1754 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1754 =
      Integer.Sparse.eval oldProjection1754 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 72 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1754 oldProjection1754
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1754 hH))

def oldProjection1755 : Integer.Sparse (Fin 1613) := [(0, 1), (94, -15), (241, -240), (243, -80), (465, -720), (596, -720), (698, -400), (1055, 240), (1226, -80), (1227, -80), (1251, 60)]

theorem oldProjectionSound1755 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1755 =
      Integer.Sparse.eval oldProjection1755 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1755 oldProjection1755
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1755 hH))

def oldProjection1756 : Integer.Sparse (Fin 1613) := [(0, 3), (94, -10), (241, -80), (243, -80), (578, -720), (1059, -80), (1221, 240), (1226, -160), (1227, -160), (1251, 75)]

theorem oldProjectionSound1756 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1756 =
      Integer.Sparse.eval oldProjection1756 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1756 oldProjection1756
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1756 hH))

def oldProjection1757 : Integer.Sparse (Fin 1613) := [(0, 3), (508, -720), (602, -720), (698, -240), (1050, 240), (1058, 240), (1059, -160), (1221, 240), (1227, -80), (1251, 45)]

theorem oldProjectionSound1757 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1757 =
      Integer.Sparse.eval oldProjection1757 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1757 oldProjection1757
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1757 hH))

def oldProjection1758 : Integer.Sparse (Fin 1613) := [(0, 2), (94, -15), (228, 240), (241, -240), (243, -240), (698, -560), (1226, -400), (1227, -320), (1251, 75)]

theorem oldProjectionSound1758 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1758 =
      Integer.Sparse.eval oldProjection1758 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1758 oldProjection1758
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1758 hH))

def oldProjection1759 : Integer.Sparse (Fin 1613) := [(0, 1), (465, -180), (610, -180), (698, -80), (1055, 60), (1058, 60), (1059, -20), (1227, -60), (1251, 15)]

theorem oldProjectionSound1759 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1759 =
      Integer.Sparse.eval oldProjection1759 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 360 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1759 oldProjection1759
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1759 hH))

def oldProjection1760 : Integer.Sparse (Fin 1613) := [(0, 1), (578, -360), (638, -360), (698, -80), (1050, 120), (1055, 120), (1058, 240), (1059, -40), (1227, -40), (1251, 15)]

theorem oldProjectionSound1760 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1760 =
      Integer.Sparse.eval oldProjection1760 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1760 oldProjection1760
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1760 hH))

def oldProjection1761 : Integer.Sparse (Fin 1613) := [(0, 1), (465, -180), (578, -180), (602, -180), (698, -40), (1059, -60), (1251, 15)]

theorem oldProjectionSound1761 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1761 =
      Integer.Sparse.eval oldProjection1761 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 360 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1761 oldProjection1761
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1761 hH))

def oldProjection1763 : Integer.Sparse (Fin 1613) := [(19, 8), (88, -32), (94, -3), (228, 48), (231, 48), (241, -32), (243, -64), (247, -16), (543, -144), (698, -32), (1226, -16), (1251, 1)]

theorem oldProjectionSound1763 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1763 =
      Integer.Sparse.eval oldProjection1763 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1763 oldProjection1763
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1763 hH))

def oldProjection1764 : Integer.Sparse (Fin 1613) := [(19, 2), (88, -24), (94, -1), (241, -16), (243, -48), (609, -72), (698, -40), (704, -16), (1226, -40), (1227, -16), (1251, 1)]

theorem oldProjectionSound1764 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1764 =
      Integer.Sparse.eval oldProjection1764 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1764 oldProjection1764
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1764 hH))

def oldProjection1765 : Integer.Sparse (Fin 1613) := [(0, 2), (19, 20), (76, 480), (94, 5), (241, -160), (698, -320), (1052, 240), (1221, 240), (1226, -160), (1251, -5)]

theorem oldProjectionSound1765 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1765 =
      Integer.Sparse.eval oldProjection1765 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1765 oldProjection1765
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1765 hH))

def oldProjection1766 : Integer.Sparse (Fin 1613) := [(0, 2), (94, -25), (602, -720), (698, -160), (1059, -240), (1227, -80), (1251, 65)]

theorem oldProjectionSound1766 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1766 =
      Integer.Sparse.eval oldProjection1766 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1766 oldProjection1766
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1766 hH))

def oldProjection1767 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 20), (88, -40), (94, -25), (228, 120), (241, -40), (243, -120), (609, -360), (698, -200), (704, -120), (1226, -80), (1227, -40), (1251, -10)]

theorem oldProjectionSound1767 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1767 =
      Integer.Sparse.eval oldProjection1767 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1767 oldProjection1767
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1767 hH))

def oldProjection1768 : Integer.Sparse (Fin 1613) := [(0, 1), (698, -480), (1226, -320), (1227, -240), (1251, 55)]

theorem oldProjectionSound1768 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1768 =
      Integer.Sparse.eval oldProjection1768 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1768 oldProjection1768
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1768 hH))

def oldProjection1769 : Integer.Sparse (Fin 1613) := [(0, 2), (81, 240), (94, -25), (698, -560), (700, -80), (1059, -480), (1227, -80), (1251, 185)]

theorem oldProjectionSound1769 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1769 =
      Integer.Sparse.eval oldProjection1769 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1769 oldProjection1769
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1769 hH))

def oldProjection1770 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 20), (94, -55), (228, 240), (698, -560), (704, -80), (1226, -240), (1227, -320), (1251, 40)]

theorem oldProjectionSound1770 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1770 =
      Integer.Sparse.eval oldProjection1770 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1770 oldProjection1770
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1770 hH))

def oldProjection1771 : Integer.Sparse (Fin 1613) := [(0, -11), (94, -25), (698, -80), (1227, -80), (1251, 70), (1389, 240)]

theorem oldProjectionSound1771 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1771 =
      Integer.Sparse.eval oldProjection1771 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1771 oldProjection1771
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1771 hH))

def oldProjection1772 : Integer.Sparse (Fin 1613) := [(0, -6), (94, -55), (617, -720), (698, -320), (1059, -80), (1227, -160), (1251, 75)]

theorem oldProjectionSound1772 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1772 =
      Integer.Sparse.eval oldProjection1772 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1772 oldProjection1772
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1772 hH))

def oldProjection1773 : Integer.Sparse (Fin 1613) := [(0, -1), (94, -20), (635, -360), (698, -200), (1059, -40), (1221, 120), (1226, -40), (1227, -80), (1251, 45)]

theorem oldProjectionSound1773 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1773 =
      Integer.Sparse.eval oldProjection1773 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1773 oldProjection1773
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1773 hH))

def oldProjection1774 : Integer.Sparse (Fin 1613) := [(0, -11), (94, -30), (698, -320), (1221, 240), (1226, -80), (1227, -320), (1251, 125), (1389, 480)]

theorem oldProjectionSound1774 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1774 =
      Integer.Sparse.eval oldProjection1774 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1774 oldProjection1774
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1774 hH))

def oldProjection1775 : Integer.Sparse (Fin 1613) := [(0, 1), (94, -30), (241, -80), (635, -720), (638, -720), (697, 240), (698, -320), (1059, -80), (1251, 65)]

theorem oldProjectionSound1775 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1775 =
      Integer.Sparse.eval oldProjection1775 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1775 oldProjection1775
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1775 hH))

def oldProjection1776 : Integer.Sparse (Fin 1613) := [(0, 1), (94, -30), (602, -720), (698, -80), (1059, -80), (1227, -160), (1251, 25), (1389, 240)]

theorem oldProjectionSound1776 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1776 =
      Integer.Sparse.eval oldProjection1776 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1776 oldProjection1776
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1776 hH))

def oldProjection1777 : Integer.Sparse (Fin 1613) := [(0, 3), (19, 80), (38, 240), (81, 240), (94, -60), (228, 240), (231, 240), (241, -80), (247, -160), (548, -720), (698, -80), (704, -80), (1251, -55)]

theorem oldProjectionSound1777 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1777 =
      Integer.Sparse.eval oldProjection1777 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1777 oldProjection1777
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1777 hH))

def oldProjection1779 : Integer.Sparse (Fin 1613) := [(88, -48), (90, -48), (94, -1), (241, -16), (243, -48), (596, -144), (698, -96), (700, -16), (1226, -112), (1227, -32), (1251, 3)]

theorem oldProjectionSound1779 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1779 =
      Integer.Sparse.eval oldProjection1779 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1779 oldProjection1779
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1779 hH))

def oldProjection1780 : Integer.Sparse (Fin 1613) := [(0, 1), (76, 48), (81, 48), (94, -5), (241, -16), (698, -96), (1059, -16), (1221, 96), (1226, -32), (1227, -32), (1251, -2)]

theorem oldProjectionSound1780 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1780 =
      Integer.Sparse.eval oldProjection1780 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1780 oldProjection1780
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1780 hH))

def oldProjection1781 : Integer.Sparse (Fin 1613) := [(0, 1), (94, -10), (602, -720), (698, -400), (1059, -240), (1221, 240), (1226, -80), (1227, -160), (1251, 85)]

theorem oldProjectionSound1781 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1781 =
      Integer.Sparse.eval oldProjection1781 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1781 oldProjection1781
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1781 hH))

def oldProjection1782 : Integer.Sparse (Fin 1613) := [(0, 1), (602, -360), (603, -180), (698, -40), (1059, -60), (1251, 15)]

theorem oldProjectionSound1782 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1782 =
      Integer.Sparse.eval oldProjection1782 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 360 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1782 oldProjection1782
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1782 hH))

def oldProjection1784 : Integer.Sparse (Fin 1613) := [(94, -1), (610, -36), (698, -24), (1059, -4), (1226, -12), (1227, -16), (1251, 3)]

theorem oldProjectionSound1784 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1784 =
      Integer.Sparse.eval oldProjection1784 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 72 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1784 oldProjection1784
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1784 hH))

end NoFourMUBs.Step2.SOS.Normalization

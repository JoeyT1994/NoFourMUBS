import NoFourMUBs.Step2.SOS.NormalizationContext
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Sound25
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Sound26

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def oldProjection1645 : Integer.Sparse (Fin 1613) := [(0, -1), (418, -360), (433, -360), (484, -360), (1221, 120), (1251, 25), (1389, 120)]

theorem oldProjectionSound1645 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1645 =
      Integer.Sparse.eval oldProjection1645 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1645 oldProjection1645
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1645 hH))

def oldProjection1646 : Integer.Sparse (Fin 1613) := [(0, 1), (94, 25), (241, -40), (423, -360), (698, -120), (1058, 120), (1226, -80), (1251, -20)]

theorem oldProjectionSound1646 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1646 =
      Integer.Sparse.eval oldProjection1646 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1646 oldProjection1646
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1646 hH))

def oldProjection1647 : Integer.Sparse (Fin 1613) := [(0, 1), (94, -5), (426, -720), (698, -160), (700, -80), (1058, 240), (1059, -160), (1226, -80), (1227, -80), (1251, 30)]

theorem oldProjectionSound1647 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1647 =
      Integer.Sparse.eval oldProjection1647 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1647 oldProjection1647
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1647 hH))

def oldProjection1648 : Integer.Sparse (Fin 1613) := [(94, -3), (433, -72), (698, -32), (1058, 24), (1226, -16), (1227, -8), (1251, 5)]

theorem oldProjectionSound1648 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1648 =
      Integer.Sparse.eval oldProjection1648 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1648 oldProjection1648
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1648 hH))

def oldProjection1649 : Integer.Sparse (Fin 1613) := [(0, -7), (81, 240), (94, -25), (434, -720), (698, -240), (1058, 240), (1226, -80), (1227, -160), (1251, 50)]

theorem oldProjectionSound1649 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1649 =
      Integer.Sparse.eval oldProjection1649 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1649 oldProjection1649
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1649 hH))

def oldProjection1650 : Integer.Sparse (Fin 1613) := [(0, 1), (427, -180), (698, -80), (700, -80), (1058, 60), (1251, 15)]

theorem oldProjectionSound1650 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1650 =
      Integer.Sparse.eval oldProjection1650 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 360 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1650 oldProjection1650
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1650 hH))

def oldProjection1651 : Integer.Sparse (Fin 1613) := [(0, 3), (430, -720), (433, -720), (697, 240), (698, -240), (1052, 240), (1059, -160), (1221, 240), (1227, -80), (1251, 45)]

theorem oldProjectionSound1651 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1651 =
      Integer.Sparse.eval oldProjection1651 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1651 oldProjection1651
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1651 hH))

def oldProjection1652 : Integer.Sparse (Fin 1613) := [(0, 1), (94, -35), (434, -720), (698, -400), (700, -80), (1058, 240), (1059, -160), (1226, -80), (1227, -160), (1251, 80)]

theorem oldProjectionSound1652 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1652 =
      Integer.Sparse.eval oldProjection1652 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1652 oldProjection1652
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1652 hH))

def oldProjection1653 : Integer.Sparse (Fin 1613) := [(0, -1), (81, 240), (94, -10), (433, -720), (698, -400), (700, -160), (1058, 240), (1059, -320), (1227, -80), (1251, 95)]

theorem oldProjectionSound1653 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1653 =
      Integer.Sparse.eval oldProjection1653 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1653 oldProjection1653
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1653 hH))

def oldProjection1654 : Integer.Sparse (Fin 1613) := [(0, 1), (81, 480), (423, -720), (698, -320), (1052, 240), (1058, 240), (1059, -160), (1227, -160), (1251, 15)]

theorem oldProjectionSound1654 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1654 =
      Integer.Sparse.eval oldProjection1654 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1654 oldProjection1654
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1654 hH))

def oldProjection1655 : Integer.Sparse (Fin 1613) := [(81, 12), (94, -1), (426, -36), (698, -20), (1058, 12), (1226, -12), (1227, -4), (1251, 1)]

theorem oldProjectionSound1655 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1655 =
      Integer.Sparse.eval oldProjection1655 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 72 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1655 oldProjection1655
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1655 hH))

def oldProjection1656 : Integer.Sparse (Fin 1613) := [(0, 1), (427, -360), (430, -360), (508, -360), (698, -80), (1059, -40), (1221, 120), (1227, -40), (1251, 15)]

theorem oldProjectionSound1656 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1656 =
      Integer.Sparse.eval oldProjection1656 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1656 oldProjection1656
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1656 hH))

def oldProjection1657 : Integer.Sparse (Fin 1613) := [(0, 1), (94, -10), (427, -180), (1058, 60), (1226, -40), (1227, -40), (1251, 5)]

theorem oldProjectionSound1657 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1657 =
      Integer.Sparse.eval oldProjection1657 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 360 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1657 oldProjection1657
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1657 hH))

def oldProjection1658 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 20), (309, -720), (455, -720), (465, -720), (698, -80), (704, -80), (1251, -5)]

theorem oldProjectionSound1658 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1658 =
      Integer.Sparse.eval oldProjection1658 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1658 oldProjection1658
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1658 hH))

def oldProjection1661 : Integer.Sparse (Fin 1613) := [(94, -1), (241, -16), (455, -72), (484, -72), (691, 24), (694, 24), (698, -16), (1050, 24), (1055, 24), (1251, 3)]

theorem oldProjectionSound1661 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1661 =
      Integer.Sparse.eval oldProjection1661 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1661 oldProjection1661
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1661 hH))

def oldProjection1663 : Integer.Sparse (Fin 1613) := [(0, 1), (94, -15), (241, -80), (309, -720), (454, -720), (505, -720), (697, 240), (698, -160), (1251, 20)]

theorem oldProjectionSound1663 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1663 =
      Integer.Sparse.eval oldProjection1663 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1663 oldProjection1663
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1663 hH))

def oldProjection1665 : Integer.Sparse (Fin 1613) := [(0, 2), (19, 20), (81, 240), (94, 5), (228, 240), (704, -80), (1251, 35), (1389, 240)]

theorem oldProjectionSound1665 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1665 =
      Integer.Sparse.eval oldProjection1665 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1665 oldProjection1665
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1665 hH))

def oldProjection1666 : Integer.Sparse (Fin 1613) := [(0, 3), (81, 240), (94, 5), (228, 240), (241, -160), (243, -160), (465, -720), (698, -400), (700, -160), (1059, -160), (1251, 30)]

theorem oldProjectionSound1666 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1666 =
      Integer.Sparse.eval oldProjection1666 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1666 oldProjection1666
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1666 hH))

def oldProjection1667 : Integer.Sparse (Fin 1613) := [(3, 2), (19, 2), (20, -1), (40, 48), (104, -16), (241, -16), (243, -16), (692, 24), (704, -16), (1052, 24), (1251, 1)]

theorem oldProjectionSound1667 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1667 =
      Integer.Sparse.eval oldProjection1667 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1667 oldProjection1667
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1667 hH))

def oldProjection1668 : Integer.Sparse (Fin 1613) := [(0, 2), (19, 20), (94, -45), (241, -80), (243, -240), (479, -720), (698, -240), (700, -320), (704, -160), (1059, -80), (1251, -15)]

theorem oldProjectionSound1668 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1668 =
      Integer.Sparse.eval oldProjection1668 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1668 oldProjection1668
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1668 hH))

def oldProjection1669 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 8), (94, -18), (243, -16), (492, -144), (698, -64), (700, -64), (704, -48), (1059, -16), (1251, -11)]

theorem oldProjectionSound1669 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1669 =
      Integer.Sparse.eval oldProjection1669 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1669 oldProjection1669
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1669 hH))

def oldProjection1670 : Integer.Sparse (Fin 1613) := [(0, 2), (81, 240), (94, -25), (228, 240), (241, -160), (243, -160), (508, -720), (698, -240), (1226, -160), (1227, -80), (1251, 25)]

theorem oldProjectionSound1670 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1670 =
      Integer.Sparse.eval oldProjection1670 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1670 oldProjection1670
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1670 hH))

def oldProjection1671 : Integer.Sparse (Fin 1613) := [(0, 3), (19, 40), (94, -25), (243, -80), (505, -720), (698, -80), (700, -80), (704, -240)]

theorem oldProjectionSound1671 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1671 =
      Integer.Sparse.eval oldProjection1671 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1671 oldProjection1671
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1671 hH))

def oldProjection1672 : Integer.Sparse (Fin 1613) := [(0, 3), (94, -10), (427, -720), (698, -160), (1052, 240), (1059, -80), (1221, 480), (1226, -160), (1227, -160), (1251, 75)]

theorem oldProjectionSound1672 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1672 =
      Integer.Sparse.eval oldProjection1672 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1672 oldProjection1672
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1672 hH))

def oldProjection1673 : Integer.Sparse (Fin 1613) := [(0, 7), (19, 20), (94, -20), (465, -720), (698, -240), (704, -80), (1251, 25), (1389, 240)]

theorem oldProjectionSound1673 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1673 =
      Integer.Sparse.eval oldProjection1673 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1673 oldProjection1673
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1673 hH))

def oldProjection1674 : Integer.Sparse (Fin 1613) := [(0, 4), (81, 240), (94, -15), (698, -160), (700, -80), (1059, -80), (1251, 25), (1389, 240)]

theorem oldProjectionSound1674 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1674 =
      Integer.Sparse.eval oldProjection1674 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1674 oldProjection1674
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1674 hH))

def oldProjection1675 : Integer.Sparse (Fin 1613) := [(19, 16), (40, 48), (76, 48), (94, 1), (104, -16), (241, -64), (243, -32), (698, -48), (704, -16), (1052, 96), (1226, -16), (1251, 13)]

theorem oldProjectionSound1675 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1675 =
      Integer.Sparse.eval oldProjection1675 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1675 oldProjection1675
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1675 hH))

def oldProjection1676 : Integer.Sparse (Fin 1613) := [(0, 2), (19, 20), (94, 5), (241, -160), (243, -80), (478, -720), (698, -320), (1052, 240), (1221, 240), (1226, -160), (1227, -80), (1251, 35)]

theorem oldProjectionSound1676 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1676 =
      Integer.Sparse.eval oldProjection1676 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1676 oldProjection1676
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1676 hH))

def oldProjection1678 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 10), (94, 15), (241, -40), (243, -120), (483, -360), (698, -200), (704, -80), (1226, -120), (1227, -80), (1251, 20)]

theorem oldProjectionSound1678 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1678 =
      Integer.Sparse.eval oldProjection1678 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1678 oldProjection1678
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1678 hH))

def oldProjection1679 : Integer.Sparse (Fin 1613) := [(94, -3), (483, -144), (484, -144), (610, -144), (698, -16), (1251, 1)]

theorem oldProjectionSound1679 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1679 =
      Integer.Sparse.eval oldProjection1679 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1679 oldProjection1679
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1679 hH))

def oldProjection1680 : Integer.Sparse (Fin 1613) := [(0, 4), (19, 20), (94, 65), (698, -160), (1052, 240), (1221, 240), (1226, -160), (1251, -75)]

theorem oldProjectionSound1680 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1680 =
      Integer.Sparse.eval oldProjection1680 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1680 oldProjection1680
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1680 hH))

def oldProjection1681 : Integer.Sparse (Fin 1613) := [(0, 9), (94, -60), (698, -400), (700, -400), (1059, -400), (1251, 75)]

theorem oldProjectionSound1681 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1681 =
      Integer.Sparse.eval oldProjection1681 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1681 oldProjection1681
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1681 hH))

def oldProjection1682 : Integer.Sparse (Fin 1613) := [(0, 6), (19, 60), (94, -25), (243, -80), (698, -400), (704, -320), (1226, -80), (1227, -80), (1251, 25)]

theorem oldProjectionSound1682 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1682 =
      Integer.Sparse.eval oldProjection1682 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1682 oldProjection1682
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1682 hH))

def oldProjection1683 : Integer.Sparse (Fin 1613) := [(0, -1), (81, 60), (94, -20), (698, -60), (1251, 15), (1389, 60)]

theorem oldProjectionSound1683 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1683 =
      Integer.Sparse.eval oldProjection1683 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 360 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1683 oldProjection1683
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1683 hH))

def oldProjection1684 : Integer.Sparse (Fin 1613) := [(0, 1), (38, 48), (81, 48), (94, -4), (486, -144), (698, -80), (700, -64), (1059, -64), (1227, -16), (1251, 11)]

theorem oldProjectionSound1684 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1684 =
      Integer.Sparse.eval oldProjection1684 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1684 oldProjection1684
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1684 hH))

def oldProjection1685 : Integer.Sparse (Fin 1613) := [(0, 1), (81, 240), (94, -40), (489, -720), (698, -320), (700, -80), (1059, -80), (1227, -160), (1251, 55), (1389, 240)]

theorem oldProjectionSound1685 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1685 =
      Integer.Sparse.eval oldProjection1685 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1685 oldProjection1685
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1685 hH))

def oldProjection1686 : Integer.Sparse (Fin 1613) := [(0, 2), (94, -15), (489, -180), (698, -120), (700, -80), (1059, -40), (1227, -40), (1251, 5)]

theorem oldProjectionSound1686 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1686 =
      Integer.Sparse.eval oldProjection1686 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 360 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1686 oldProjection1686
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1686 hH))

def oldProjection1687 : Integer.Sparse (Fin 1613) := [(0, 1), (94, -8), (433, -144), (698, -80), (700, -48), (1052, 48), (1059, -32), (1221, 48), (1226, -16), (1227, -16), (1251, 7)]

theorem oldProjectionSound1687 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1687 =
      Integer.Sparse.eval oldProjection1687 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1687 oldProjection1687
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1687 hH))

def oldProjection1688 : Integer.Sparse (Fin 1613) := [(0, -1), (81, 120), (94, -10), (433, -360), (698, -120), (1052, 120), (1059, -40), (1221, 120), (1226, -40), (1227, -40), (1251, 35), (1389, 120)]

theorem oldProjectionSound1688 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1688 =
      Integer.Sparse.eval oldProjection1688 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1688 oldProjection1688
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1688 hH))

def oldProjection1689 : Integer.Sparse (Fin 1613) := [(0, 4), (94, -45), (241, -80), (505, -720), (635, -720), (697, 240), (698, -320), (1226, -80), (1251, 35)]

theorem oldProjectionSound1689 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1689 =
      Integer.Sparse.eval oldProjection1689 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1689 oldProjection1689
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1689 hH))

def oldProjection1690 : Integer.Sparse (Fin 1613) := [(81, 48), (94, -9), (698, -64), (1226, -48), (1227, -64), (1251, 11), (1389, 48)]

theorem oldProjectionSound1690 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1690 =
      Integer.Sparse.eval oldProjection1690 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1690 oldProjection1690
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1690 hH))

def oldProjection1691 : Integer.Sparse (Fin 1613) := [(0, 1), (94, -10), (505, -360), (508, -360), (602, -360), (698, 40), (1251, 5)]

theorem oldProjectionSound1691 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1691 =
      Integer.Sparse.eval oldProjection1691 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1691 oldProjection1691
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1691 hH))

def oldProjection1693 : Integer.Sparse (Fin 1613) := [(0, 2), (94, -5), (241, -80), (427, -720), (479, -720), (698, -240), (1050, 480), (1052, 240), (1059, -160), (1251, 45)]

theorem oldProjectionSound1693 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1693 =
      Integer.Sparse.eval oldProjection1693 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1693 oldProjection1693
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1693 hH))

def oldProjection1694 : Integer.Sparse (Fin 1613) := [(0, 2), (94, -5), (241, -80), (484, -720), (697, 480), (698, -240), (1050, 240), (1052, 720), (1059, -160), (1251, 45)]

theorem oldProjectionSound1694 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1694 =
      Integer.Sparse.eval oldProjection1694 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1694 oldProjection1694
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1694 hH))

def oldProjection1695 : Integer.Sparse (Fin 1613) := [(0, 4), (94, -45), (241, -80), (427, -720), (698, 240), (700, -80), (1059, -80), (1251, 35)]

theorem oldProjectionSound1695 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1695 =
      Integer.Sparse.eval oldProjection1695 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1695 oldProjection1695
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1695 hH))

def oldProjection1696 : Integer.Sparse (Fin 1613) := [(0, 2), (94, -15), (461, -360), (698, -80), (700, -200), (1059, -40), (1251, 15)]

theorem oldProjectionSound1696 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1696 =
      Integer.Sparse.eval oldProjection1696 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1696 oldProjection1696
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1696 hH))

def oldProjection1697 : Integer.Sparse (Fin 1613) := [(0, 3), (94, -20), (241, -40), (247, -40), (465, -360), (697, 360), (698, -120), (1052, 120), (1059, -40), (1251, 5)]

theorem oldProjectionSound1697 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1697 =
      Integer.Sparse.eval oldProjection1697 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1697 oldProjection1697
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1697 hH))

def oldProjection1698 : Integer.Sparse (Fin 1613) := [(0, 1), (81, 24), (94, -8), (698, -32), (700, -24), (1059, -24), (1251, 3)]

theorem oldProjectionSound1698 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1698 =
      Integer.Sparse.eval oldProjection1698 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1698 oldProjection1698
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1698 hH))

def oldProjection1699 : Integer.Sparse (Fin 1613) := [(0, 1), (38, 240), (462, -720), (698, -320), (700, -560), (1251, 15)]

theorem oldProjectionSound1699 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1699 =
      Integer.Sparse.eval oldProjection1699 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1699 oldProjection1699
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1699 hH))

def oldProjection1700 : Integer.Sparse (Fin 1613) := [(0, 7), (94, -20), (465, -720), (492, -720), (698, -320), (700, -80), (1059, -320), (1251, 85)]

theorem oldProjectionSound1700 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1700 =
      Integer.Sparse.eval oldProjection1700 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1700 oldProjection1700
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1700 hH))

def oldProjection1701 : Integer.Sparse (Fin 1613) := [(0, 1), (81, 48), (94, -6), (698, -112), (700, -128), (1059, -64), (1251, 9)]

theorem oldProjectionSound1701 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1701 =
      Integer.Sparse.eval oldProjection1701 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1701 oldProjection1701
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1701 hH))

def oldProjection1702 : Integer.Sparse (Fin 1613) := [(0, 3), (81, 240), (94, -10), (427, -720), (698, -320), (700, -400), (1052, 240), (1059, -160), (1251, 35)]

theorem oldProjectionSound1702 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1702 =
      Integer.Sparse.eval oldProjection1702 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1702 oldProjection1702
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1702 hH))

def oldProjection1703 : Integer.Sparse (Fin 1613) := [(0, 3), (461, -720), (465, -720), (505, -720), (698, -240), (1059, -80), (1227, -160), (1251, 45)]

theorem oldProjectionSound1703 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1703 =
      Integer.Sparse.eval oldProjection1703 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1703 oldProjection1703
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1703 hH))

def oldProjection1704 : Integer.Sparse (Fin 1613) := [(0, 4), (81, 240), (94, -35), (461, -720), (698, -240), (700, -160), (1059, -160), (1226, -160), (1227, -80), (1251, 45)]

theorem oldProjectionSound1704 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1704 =
      Integer.Sparse.eval oldProjection1704 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1704 oldProjection1704
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1704 hH))

def oldProjection1705 : Integer.Sparse (Fin 1613) := [(0, 1), (94, -25), (241, -240), (462, -720), (465, -720), (697, 240), (698, -320), (1055, 240), (1251, 50)]

theorem oldProjectionSound1705 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1705 =
      Integer.Sparse.eval oldProjection1705 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1705 oldProjection1705
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1705 hH))

def oldProjection1706 : Integer.Sparse (Fin 1613) := [(0, 1), (94, -5), (241, -80), (462, -720), (508, -720), (697, 240), (698, -160), (1050, 240), (1052, 480), (1059, -80), (1251, 30)]

theorem oldProjectionSound1706 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1706 =
      Integer.Sparse.eval oldProjection1706 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1706 oldProjection1706
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1706 hH))

def oldProjection1707 : Integer.Sparse (Fin 1613) := [(19, 20), (20, -2), (40, 48), (42, -48), (94, -9), (104, -16), (241, -32), (243, -96), (698, -32), (700, -16), (701, -16), (704, -64), (1251, -7)]

theorem oldProjectionSound1707 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1707 =
      Integer.Sparse.eval oldProjection1707 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1707 oldProjection1707
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1707 hH))

def oldProjection1709 : Integer.Sparse (Fin 1613) := [(0, 1), (94, -15), (247, -80), (433, -720), (483, -720), (698, -80), (1055, 480), (1219, 240), (1227, -80), (1251, 20)]

theorem oldProjectionSound1709 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1709 =
      Integer.Sparse.eval oldProjection1709 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1709 oldProjection1709
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1709 hH))

def oldProjection1710 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 20), (81, 240), (94, -35), (241, -160), (243, -80), (484, -720), (698, -400), (700, -80), (1052, 240), (1059, -160), (1251, 60)]

theorem oldProjectionSound1710 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1710 =
      Integer.Sparse.eval oldProjection1710 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1710 oldProjection1710
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1710 hH))

def oldProjection1711 : Integer.Sparse (Fin 1613) := [(0, -1), (478, -720), (483, -720), (489, -720), (698, -80), (1227, -160), (1251, 25), (1389, 240)]

theorem oldProjectionSound1711 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1711 =
      Integer.Sparse.eval oldProjection1711 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1711 oldProjection1711
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1711 hH))

def oldProjection1713 : Integer.Sparse (Fin 1613) := [(19, 12), (20, -2), (42, -48), (94, -7), (241, -16), (243, -80), (480, -144), (698, -32), (700, -16), (701, -16), (704, -48), (1251, -5)]

theorem oldProjectionSound1713 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1713 =
      Integer.Sparse.eval oldProjection1713 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1713 oldProjection1713
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1713 hH))

def oldProjection1714 : Integer.Sparse (Fin 1613) := [(19, 8), (20, -1), (42, -8), (94, -6), (243, -24), (480, -72), (698, -16), (704, -8), (1251, -5)]

theorem oldProjectionSound1714 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1714 =
      Integer.Sparse.eval oldProjection1714 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1714 oldProjection1714
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1714 hH))

def oldProjection1715 : Integer.Sparse (Fin 1613) := [(0, -3), (94, -10), (247, -80), (433, -720), (698, -80), (1251, 65)]

theorem oldProjectionSound1715 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1715 =
      Integer.Sparse.eval oldProjection1715 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1715 oldProjection1715
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1715 hH))

def oldProjection1716 : Integer.Sparse (Fin 1613) := [(0, -1), (19, 20), (81, 480), (94, -30), (698, -240), (1052, 240), (1059, -80), (1251, 55)]

theorem oldProjectionSound1716 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1716 =
      Integer.Sparse.eval oldProjection1716 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1716 oldProjection1716
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1716 hH))

end NoFourMUBs.Step2.SOS.Normalization

import NoFourMUBs.Step2.SOS.NormalizationContext
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Sound24
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Sound25

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def oldProjection1554 : Integer.Sparse (Fin 1613) := [(19, 4), (94, -1), (241, 16), (243, -16), (247, -16), (698, -16), (1251, -1)]

theorem oldProjectionSound1554 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1554 =
      Integer.Sparse.eval oldProjection1554 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1554 oldProjection1554
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1554 hH))

def oldProjection1555 : Integer.Sparse (Fin 1613) := [(19, -8), (20, -1), (94, -3), (701, -8), (704, -8), (1061, 24), (1251, -2)]

theorem oldProjectionSound1555 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1555 =
      Integer.Sparse.eval oldProjection1555 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1555 oldProjection1555
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1555 hH))

def oldProjection1556 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 60), (94, -20), (228, 240), (241, -160), (247, 240), (1251, -25)]

theorem oldProjectionSound1556 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1556 =
      Integer.Sparse.eval oldProjection1556 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1556 oldProjection1556
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1556 hH))

def oldProjection1557 : Integer.Sparse (Fin 1613) := [(0, 3), (19, 80), (94, -60), (241, -400), (243, -400), (247, -80), (698, -320), (704, -240), (1251, 25)]

theorem oldProjectionSound1557 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1557 =
      Integer.Sparse.eval oldProjection1557 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1557 oldProjection1557
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1557 hH))

def oldProjection1558 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 36), (20, -9), (94, -18), (247, -16), (704, -16), (1251, -14)]

theorem oldProjectionSound1558 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1558 =
      Integer.Sparse.eval oldProjection1558 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1558 oldProjection1558
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1558 hH))

def oldProjection1559 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 32), (20, -1), (94, -23), (228, 48), (241, -16), (247, -64), (698, -16), (704, -32), (1251, -19)]

theorem oldProjectionSound1559 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1559 =
      Integer.Sparse.eval oldProjection1559 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1559 oldProjection1559
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1559 hH))

def oldProjection1560 : Integer.Sparse (Fin 1613) := [(0, 6), (19, 200), (94, -95), (241, -400), (243, -80), (247, -320), (698, -80), (1251, -65)]

theorem oldProjectionSound1560 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1560 =
      Integer.Sparse.eval oldProjection1560 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1560 oldProjection1560
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1560 hH))

def oldProjection1561 : Integer.Sparse (Fin 1613) := [(19, 16), (20, -1), (94, -7), (228, 48), (241, -32), (243, -16), (247, -32), (294, -144), (698, -32), (1223, 48), (1226, -16), (1227, -16), (1251, -2)]

theorem oldProjectionSound1561 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1561 =
      Integer.Sparse.eval oldProjection1561 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1561 oldProjection1561
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1561 hH))

def oldProjection1562 : Integer.Sparse (Fin 1613) := [(0, 3), (19, 140), (94, -65), (228, 240), (241, -320), (243, -240), (247, -320), (698, -240), (1251, -20)]

theorem oldProjectionSound1562 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1562 =
      Integer.Sparse.eval oldProjection1562 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1562 oldProjection1562
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1562 hH))

def oldProjection1563 : Integer.Sparse (Fin 1613) := [(0, 2), (19, 100), (20, -25), (94, -45), (241, -80), (243, -320), (698, -240), (704, -400), (1251, -30)]

theorem oldProjectionSound1563 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1563 =
      Integer.Sparse.eval oldProjection1563 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1563 oldProjection1563
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1563 hH))

def oldProjection1567 : Integer.Sparse (Fin 1613) := [(287, -1), (288, -1), (298, -1), (426, -1)]

theorem oldProjectionSound1567 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1567 =
      Integer.Sparse.eval oldProjection1567 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 2 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1567 oldProjection1567
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1567 hH))

def oldProjection1569 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 20), (82, 240), (88, -80), (94, -30), (228, 480), (243, -160), (698, -320), (704, -160), (1058, 240), (1223, 480), (1226, -240), (1227, -160), (1251, -35)]

theorem oldProjectionSound1569 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1569 =
      Integer.Sparse.eval oldProjection1569 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1569 oldProjection1569
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1569 hH))

def oldProjection1572 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 20), (94, -20), (228, 240), (241, -240), (243, -240), (283, -720), (288, -720), (698, -320), (704, -80), (1251, 15)]

theorem oldProjectionSound1572 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1572 =
      Integer.Sparse.eval oldProjection1572 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1572 oldProjection1572
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1572 hH))

def oldProjection1573 : Integer.Sparse (Fin 1613) := [(0, 1), (94, -10), (241, -160), (243, -240), (288, -720), (704, -80), (1223, 240), (1226, -160), (1227, -80), (1251, 45)]

theorem oldProjectionSound1573 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1573 =
      Integer.Sparse.eval oldProjection1573 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1573 oldProjection1573
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1573 hH))

def oldProjection1575 : Integer.Sparse (Fin 1613) := [(0, 4), (19, 60), (94, -65), (241, -160), (243, -160), (247, -80), (294, -720), (698, -320), (704, -160), (1223, 240), (1226, -80), (1251, -5)]

theorem oldProjectionSound1575 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1575 =
      Integer.Sparse.eval oldProjection1575 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1575 oldProjection1575
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1575 hH))

def oldProjection1576 : Integer.Sparse (Fin 1613) := [(19, 1), (94, -2), (228, 12), (241, -4), (243, -4), (294, -36), (698, -20), (704, -4), (1223, 12), (1226, -8), (1227, -8), (1251, 1)]

theorem oldProjectionSound1576 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1576 =
      Integer.Sparse.eval oldProjection1576 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 72 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1576 oldProjection1576
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1576 hH))

def oldProjection1579 : Integer.Sparse (Fin 1613) := [(228, 3), (287, -9), (291, -9), (294, -9), (698, -1), (1223, 3), (1226, -1), (1227, -1)]

theorem oldProjectionSound1579 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1579 =
      Integer.Sparse.eval oldProjection1579 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 18 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1579 oldProjection1579
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1579 hH))

def oldProjection1580 : Integer.Sparse (Fin 1613) := [(228, 6), (287, -9), (698, -4), (1223, 6), (1226, -4), (1227, -1)]

theorem oldProjectionSound1580 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1580 =
      Integer.Sparse.eval oldProjection1580 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 18 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1580 oldProjection1580
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1580 hH))

def oldProjection1581 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 20), (94, -20), (228, 240), (241, -160), (243, -240), (288, -720), (698, -160), (704, -160), (1223, 240), (1226, -80), (1227, -80), (1251, 15)]

theorem oldProjectionSound1581 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1581 =
      Integer.Sparse.eval oldProjection1581 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1581 oldProjection1581
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1581 hH))

def oldProjection1583 : Integer.Sparse (Fin 1613) := [(0, 1), (94, -20), (127, -720), (241, -80), (243, -240), (700, -160), (704, -160), (1059, -80), (1061, 240), (1251, -5)]

theorem oldProjectionSound1583 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1583 =
      Integer.Sparse.eval oldProjection1583 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1583 oldProjection1583
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1583 hH))

def oldProjection1584 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 140), (20, -20), (94, -40), (309, -720), (698, -80), (704, -240), (1251, -25), (1278, 240)]

theorem oldProjectionSound1584 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1584 =
      Integer.Sparse.eval oldProjection1584 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1584 oldProjection1584
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1584 hH))

def oldProjection1585 : Integer.Sparse (Fin 1613) := [(0, 2), (19, 40), (20, -5), (94, -15), (228, 240), (241, -80), (243, -80), (698, -160), (704, -80)]

theorem oldProjectionSound1585 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1585 =
      Integer.Sparse.eval oldProjection1585 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1585 oldProjection1585
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1585 hH))

def oldProjection1586 : Integer.Sparse (Fin 1613) := [(0, 2), (19, 20), (81, 480), (94, -45), (228, 480), (283, -720), (686, 240), (698, -160), (704, -80), (1251, -55), (1389, 240)]

theorem oldProjectionSound1586 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1586 =
      Integer.Sparse.eval oldProjection1586 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1586 oldProjection1586
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1586 hH))

def oldProjection1588 : Integer.Sparse (Fin 1613) := [(42, -2), (81, 3), (228, 3), (241, -2), (243, -4), (283, -9), (686, 3), (698, -4), (700, -4), (1059, -2)]

theorem oldProjectionSound1588 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1588 =
      Integer.Sparse.eval oldProjection1588 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 18 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1588 oldProjection1588
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1588 hH))

def oldProjection1589 : Integer.Sparse (Fin 1613) := [(3, 2), (19, -10), (20, -2), (94, 1), (692, 24), (1052, 24), (1223, 48), (1251, 3)]

theorem oldProjectionSound1589 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1589 =
      Integer.Sparse.eval oldProjection1589 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1589 oldProjection1589
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1589 hH))

def oldProjection1590 : Integer.Sparse (Fin 1613) := [(0, 2), (19, 10), (94, -25), (130, -360), (241, -40), (243, -80), (698, -240), (700, -80), (704, -80), (1059, -40), (1061, 120), (1251, 15)]

theorem oldProjectionSound1590 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1590 =
      Integer.Sparse.eval oldProjection1590 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1590 oldProjection1590
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1590 hH))

def oldProjection1591 : Integer.Sparse (Fin 1613) := [(0, 4), (19, 140), (20, -25), (94, -85), (325, -720), (698, -80), (704, -160), (1251, -40), (1278, 240)]

theorem oldProjectionSound1591 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1591 =
      Integer.Sparse.eval oldProjection1591 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1591 oldProjection1591
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1591 hH))

def oldProjection1592 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 12), (94, -20), (228, 48), (247, -16), (326, -144), (698, -32), (704, -32), (1251, -9)]

theorem oldProjectionSound1592 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1592 =
      Integer.Sparse.eval oldProjection1592 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1592 oldProjection1592
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1592 hH))

def oldProjection1593 : Integer.Sparse (Fin 1613) := [(0, 2), (19, 40), (20, -5), (81, 240), (94, -55), (228, 240), (327, -720), (686, 240), (698, -240), (700, -160), (701, -80), (704, -240), (1059, -80), (1251, -40)]

theorem oldProjectionSound1593 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1593 =
      Integer.Sparse.eval oldProjection1593 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1593 oldProjection1593
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1593 hH))

def oldProjection1595 : Integer.Sparse (Fin 1613) := [(0, 7), (19, 100), (94, -100), (241, -80), (243, -80), (247, -160), (326, -720), (698, -160), (704, -240), (1251, -55)]

theorem oldProjectionSound1595 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1595 =
      Integer.Sparse.eval oldProjection1595 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1595 oldProjection1595
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1595 hH))

def oldProjection1597 : Integer.Sparse (Fin 1613) := [(19, 8), (20, -1), (94, -6), (243, -8), (244, -8), (330, -72), (698, -24), (700, -40), (701, -24), (704, -40), (1059, -8), (1251, -5)]

theorem oldProjectionSound1597 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1597 =
      Integer.Sparse.eval oldProjection1597 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1597 oldProjection1597
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1597 hH))

def oldProjection1599 : Integer.Sparse (Fin 1613) := [(294, -1), (332, -1), (333, -1), (433, -1)]

theorem oldProjectionSound1599 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1599 =
      Integer.Sparse.eval oldProjection1599 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 2 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1599 oldProjection1599
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1599 hH))

def oldProjection1603 : Integer.Sparse (Fin 1613) := [(0, 3), (19, 60), (94, -70), (228, 240), (241, -240), (243, -320), (698, -320), (704, -320), (1251, -5)]

theorem oldProjectionSound1603 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1603 =
      Integer.Sparse.eval oldProjection1603 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1603 oldProjection1603
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1603 hH))

def oldProjection1604 : Integer.Sparse (Fin 1613) := [(0, 3), (19, 100), (20, -10), (94, -65), (243, -80), (247, -80), (329, -720), (698, -160), (700, -80), (704, -160), (1061, 240), (1251, -50), (1278, 240)]

theorem oldProjectionSound1604 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1604 =
      Integer.Sparse.eval oldProjection1604 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1604 oldProjection1604
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1604 hH))

def oldProjection1605 : Integer.Sparse (Fin 1613) := [(0, 2), (19, 80), (20, -25), (94, -50), (243, -160), (698, -240), (700, -80), (704, -320), (1061, 240), (1251, -35)]

theorem oldProjectionSound1605 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1605 =
      Integer.Sparse.eval oldProjection1605 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1605 oldProjection1605
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1605 hH))

def oldProjection1613 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 60), (94, -30), (127, -720), (228, 240), (241, -240), (243, -320), (247, -80), (698, -320), (1251, 5)]

theorem oldProjectionSound1613 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1613 =
      Integer.Sparse.eval oldProjection1613 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1613 oldProjection1613
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1613 hH))

def oldProjection1614 : Integer.Sparse (Fin 1613) := [(3, 2), (19, -2), (20, -1), (94, -5), (244, -8), (692, 24), (700, -8), (701, -24), (704, -16), (1251, -4)]

theorem oldProjectionSound1614 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1614 =
      Integer.Sparse.eval oldProjection1614 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1614 oldProjection1614
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1614 hH))

def oldProjection1615 : Integer.Sparse (Fin 1613) := [(0, 2), (19, 60), (20, -15), (94, -75), (108, -80), (247, -160), (332, -720), (704, -160), (1251, -70)]

theorem oldProjectionSound1615 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1615 =
      Integer.Sparse.eval oldProjection1615 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1615 oldProjection1615
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1615 hH))

def oldProjection1616 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 160), (20, -20), (94, -60), (241, -80), (243, -240), (247, -80), (330, -720), (698, -160), (704, -320), (1251, -65)]

theorem oldProjectionSound1616 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1616 =
      Integer.Sparse.eval oldProjection1616 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1616 oldProjection1616
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1616 hH))

def oldProjection1617 : Integer.Sparse (Fin 1613) := [(19, 16), (20, -1), (94, -8), (243, -16), (244, -48), (700, -32), (701, -64), (704, -32), (1061, 48), (1251, -7)]

theorem oldProjectionSound1617 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1617 =
      Integer.Sparse.eval oldProjection1617 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1617 oldProjection1617
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1617 hH))

def oldProjection1618 : Integer.Sparse (Fin 1613) := [(0, 3), (19, 80), (94, -40), (130, -360), (241, -80), (247, -120), (1251, -35)]

theorem oldProjectionSound1618 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1618 =
      Integer.Sparse.eval oldProjection1618 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1618 oldProjection1618
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1618 hH))

def oldProjection1619 : Integer.Sparse (Fin 1613) := [(0, 2), (19, 40), (94, 5), (241, -80), (247, -80), (408, -720), (541, -720), (690, 240), (698, -80), (1251, 55), (1319, 240)]

theorem oldProjectionSound1619 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1619 =
      Integer.Sparse.eval oldProjection1619 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1619 oldProjection1619
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1619 hH))

def oldProjection1623 : Integer.Sparse (Fin 1613) := [(0, 2), (19, 20), (38, 240), (94, -45), (241, -80), (243, -240), (698, -320), (700, -560), (704, -160), (1059, -240), (1251, -15)]

theorem oldProjectionSound1623 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1623 =
      Integer.Sparse.eval oldProjection1623 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1623 oldProjection1623
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1623 hH))

def oldProjection1624 : Integer.Sparse (Fin 1613) := [(0, 3), (19, 40), (38, 120), (81, 120), (94, -35), (247, -40), (698, -120), (700, -80), (704, -80), (1251, -30)]

theorem oldProjectionSound1624 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1624 =
      Integer.Sparse.eval oldProjection1624 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1624 oldProjection1624
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1624 hH))

def oldProjection1625 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 12), (38, 48), (94, -7), (247, -16), (492, -144), (698, -32), (700, -48), (704, -16), (1059, -32)]

theorem oldProjectionSound1625 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1625 =
      Integer.Sparse.eval oldProjection1625 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1625 oldProjection1625
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1625 hH))

def oldProjection1626 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 20), (38, 240), (81, 240), (94, 15), (241, -80), (243, -160), (505, -720), (698, -320), (700, -80), (704, -80), (1226, -160), (1227, -80), (1251, 30)]

theorem oldProjectionSound1626 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1626 =
      Integer.Sparse.eval oldProjection1626 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1626 oldProjection1626
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1626 hH))

def oldProjection1627 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 16), (94, -4), (241, -64), (243, -16), (247, -32), (697, 48), (698, -64), (700, -16), (1059, -16), (1251, 3)]

theorem oldProjectionSound1627 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1627 =
      Integer.Sparse.eval oldProjection1627 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1627 oldProjection1627
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1627 hH))

def oldProjection1628 : Integer.Sparse (Fin 1613) := [(0, 2), (19, 40), (94, -55), (241, -240), (243, -320), (698, -320), (700, -320), (704, -160), (1052, 240), (1059, -80), (1251, -5)]

theorem oldProjectionSound1628 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1628 =
      Integer.Sparse.eval oldProjection1628 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1628 oldProjection1628
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1628 hH))

def oldProjection1629 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 60), (20, -5), (94, -20), (241, -80), (243, -80), (418, -720), (698, -80), (1058, 240), (1223, 240), (1226, -80), (1251, 20)]

theorem oldProjectionSound1629 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1629 =
      Integer.Sparse.eval oldProjection1629 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1629 oldProjection1629
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1629 hH))

def oldProjection1630 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 40), (698, -80), (1058, 240), (1226, -80), (1250, -60), (1251, -85)]

theorem oldProjectionSound1630 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1630 =
      Integer.Sparse.eval oldProjection1630 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1630 oldProjection1630
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1630 hH))

def oldProjection1631 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 4), (94, -4), (697, 48), (698, -64), (700, -32), (1058, 48), (1059, -48), (1250, -12), (1251, 11)]

theorem oldProjectionSound1631 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1631 =
      Integer.Sparse.eval oldProjection1631 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1631 oldProjection1631
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1631 hH))

def oldProjection1632 : Integer.Sparse (Fin 1613) := [(0, 1), (94, 30), (241, -80), (423, -720), (698, -160), (1050, 240), (1052, 480), (1221, 240), (1226, -80), (1251, -35)]

theorem oldProjectionSound1632 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1632 =
      Integer.Sparse.eval oldProjection1632 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1632 oldProjection1632
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1632 hH))

def oldProjection1633 : Integer.Sparse (Fin 1613) := [(0, 3), (94, -25), (241, -80), (427, -720), (698, -160), (700, -240), (1050, 240), (1052, 240), (1059, -240), (1251, 40)]

theorem oldProjectionSound1633 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1633 =
      Integer.Sparse.eval oldProjection1633 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1633 oldProjection1633
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1633 hH))

def oldProjection1634 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 20), (94, -5), (698, -120), (1058, 120), (1226, -40), (1227, -40), (1250, -30), (1251, 40)]

theorem oldProjectionSound1634 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1634 =
      Integer.Sparse.eval oldProjection1634 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1634 oldProjection1634
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1634 hH))

def oldProjection1635 : Integer.Sparse (Fin 1613) := [(0, -3), (19, 20), (81, 480), (94, -40), (697, 240), (698, -160), (1058, 240), (1227, -80), (1250, -60), (1251, 35), (1389, 240)]

theorem oldProjectionSound1635 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1635 =
      Integer.Sparse.eval oldProjection1635 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1635 oldProjection1635
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1635 hH))

def oldProjection1636 : Integer.Sparse (Fin 1613) := [(0, 1), (94, -20), (247, -80), (433, -720), (698, -160), (700, -80), (1055, 240), (1219, 240), (1227, -80), (1251, 35)]

theorem oldProjectionSound1636 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1636 =
      Integer.Sparse.eval oldProjection1636 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1636 oldProjection1636
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1636 hH))

def oldProjection1637 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 20), (94, 60), (698, -80), (700, -80), (1219, 240), (1251, 55)]

theorem oldProjectionSound1637 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1637 =
      Integer.Sparse.eval oldProjection1637 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1637 oldProjection1637
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1637 hH))

def oldProjection1638 : Integer.Sparse (Fin 1613) := [(0, 1), (94, -5), (697, 40), (698, -80), (700, -80), (1052, 40), (1059, -40), (1251, 10)]

theorem oldProjectionSound1638 {H : CMatrix} (hH : IsHadamard H) :
    (240 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1638 =
      Integer.Sparse.eval oldProjection1638 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 240 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1638 oldProjection1638
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1638 hH))

def oldProjection1639 : Integer.Sparse (Fin 1613) := [(0, 1), (81, 48), (94, -9), (697, 48), (698, -80), (700, -32), (1059, -16), (1219, 48), (1227, -32), (1251, -6)]

theorem oldProjectionSound1639 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1639 =
      Integer.Sparse.eval oldProjection1639 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1639 oldProjection1639
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1639 hH))

def oldProjection1640 : Integer.Sparse (Fin 1613) := [(0, 4), (94, -45), (247, -40), (697, 120), (698, -160), (700, -40), (1059, -40), (1251, 15)]

theorem oldProjectionSound1640 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1640 =
      Integer.Sparse.eval oldProjection1640 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1640 oldProjection1640
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1640 hH))

def oldProjection1641 : Integer.Sparse (Fin 1613) := [(0, -1), (94, -15), (489, -720), (697, 240), (698, -320), (700, -160), (1059, -160), (1219, 240), (1227, -80), (1251, 70)]

theorem oldProjectionSound1641 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1641 =
      Integer.Sparse.eval oldProjection1641 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1641 oldProjection1641
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1641 hH))

def oldProjection1642 : Integer.Sparse (Fin 1613) := [(0, -2), (81, 240), (94, 15), (433, -720), (697, 240), (698, -160), (1052, 480), (1059, -160), (1251, 85)]

theorem oldProjectionSound1642 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1642 =
      Integer.Sparse.eval oldProjection1642 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1642 oldProjection1642
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1642 hH))

def oldProjection1643 : Integer.Sparse (Fin 1613) := [(0, 1), (81, 60), (94, -15), (241, -20), (697, 60), (698, -120), (1226, -60), (1227, -20)]

theorem oldProjectionSound1643 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1643 =
      Integer.Sparse.eval oldProjection1643 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 360 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1643 oldProjection1643
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1643 hH))

def oldProjection1644 : Integer.Sparse (Fin 1613) := [(0, 4), (19, 20), (94, 95), (698, -160), (700, -320), (1052, 240), (1059, -80), (1251, 75)]

theorem oldProjectionSound1644 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1644 =
      Integer.Sparse.eval oldProjection1644 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1644 oldProjection1644
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1644 hH))

end NoFourMUBs.Step2.SOS.Normalization

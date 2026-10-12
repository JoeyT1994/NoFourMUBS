import NoFourMUBs.Step2.SOS.NormalizationContext
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Sound42
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Sound43
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Sound44

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def oldProjection2740 : Integer.Sparse (Fin 1613) := [(94, 5), (698, 32), (700, -16), (1059, -16), (1251, 1)]

theorem oldProjectionSound2740 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2740 =
      Integer.Sparse.eval oldProjection2740 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2740 oldProjection2740
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2740 hH))

def oldProjection2742 : Integer.Sparse (Fin 1613) := [(0, -2), (94, 5), (698, 80), (1226, -40), (1227, -40), (1251, -45)]

theorem oldProjectionSound2742 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2742 =
      Integer.Sparse.eval oldProjection2742 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2742 oldProjection2742
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2742 hH))

def oldProjection2743 : Integer.Sparse (Fin 1613) := [(0, -3), (94, -20), (698, -160), (1059, -80), (1227, -80), (1251, 55)]

theorem oldProjectionSound2743 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2743 =
      Integer.Sparse.eval oldProjection2743 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2743 oldProjection2743
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2743 hH))

def oldProjection2744 : Integer.Sparse (Fin 1613) := [(0, -1), (94, -1), (698, -16), (1227, 32), (1251, 4)]

theorem oldProjectionSound2744 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2744 =
      Integer.Sparse.eval oldProjection2744 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2744 oldProjection2744
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2744 hH))

def oldProjection2745 : Integer.Sparse (Fin 1613) := [(0, -1), (94, -1), (698, -16), (1059, 16), (1251, -4)]

theorem oldProjectionSound2745 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2745 =
      Integer.Sparse.eval oldProjection2745 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2745 oldProjection2745
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2745 hH))

def oldProjection2746 : Integer.Sparse (Fin 1613) := [(0, 2), (19, 40), (20, -5), (94, -5), (698, -80), (700, -160), (704, -80), (1251, -30)]

theorem oldProjectionSound2746 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2746 =
      Integer.Sparse.eval oldProjection2746 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2746 oldProjection2746
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2746 hH))

def oldProjection2747 : Integer.Sparse (Fin 1613) := [(0, -1), (20, -5), (94, -10), (241, -80), (247, 160), (1251, 20)]

theorem oldProjectionSound2747 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2747 =
      Integer.Sparse.eval oldProjection2747 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2747 oldProjection2747
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2747 hH))

def oldProjection2748 : Integer.Sparse (Fin 1613) := [(0, -7), (94, 55), (698, -80), (1251, 50)]

theorem oldProjectionSound2748 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2748 =
      Integer.Sparse.eval oldProjection2748 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2748 oldProjection2748
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2748 hH))

def oldProjection2749 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 40), (94, -35), (241, -160), (243, -160), (247, -160), (698, -240)]

theorem oldProjectionSound2749 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2749 =
      Integer.Sparse.eval oldProjection2749 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2749 oldProjection2749
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2749 hH))

def oldProjection2750 : Integer.Sparse (Fin 1613) := [(0, -4), (94, -15), (698, -80), (1226, -80), (1227, -80), (1251, 25)]

theorem oldProjectionSound2750 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2750 =
      Integer.Sparse.eval oldProjection2750 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2750 oldProjection2750
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2750 hH))

def oldProjection2751 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 40), (88, -160), (94, -15), (241, -240), (243, -160), (247, -80), (698, -80), (1226, -160), (1251, 20)]

theorem oldProjectionSound2751 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2751 =
      Integer.Sparse.eval oldProjection2751 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2751 oldProjection2751
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2751 hH))

def oldProjection2752 : Integer.Sparse (Fin 1613) := [(0, -1), (698, -20), (1059, -10), (1221, 30), (1227, -20), (1251, 15)]

theorem oldProjectionSound2752 {H : CMatrix} (hH : IsHadamard H) :
    (180 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2752 =
      Integer.Sparse.eval oldProjection2752 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 180 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2752 oldProjection2752
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2752 hH))

def oldProjection2753 : Integer.Sparse (Fin 1613) := [(0, 3), (76, 240), (90, -80), (94, -25), (697, 240), (698, -320), (700, -80), (1059, -80)]

theorem oldProjectionSound2753 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2753 =
      Integer.Sparse.eval oldProjection2753 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2753 oldProjection2753
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2753 hH))

def oldProjection2754 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 40), (20, -5), (94, -25), (241, -80), (243, -160), (698, -160), (700, -240), (704, -160), (1059, -80), (1251, -25)]

theorem oldProjectionSound2754 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2754 =
      Integer.Sparse.eval oldProjection2754 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2754 oldProjection2754
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2754 hH))

def oldProjection2755 : Integer.Sparse (Fin 1613) := [(0, -1), (19, 40), (94, -30), (241, -80), (247, -80), (1251, -5)]

theorem oldProjectionSound2755 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2755 =
      Integer.Sparse.eval oldProjection2755 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2755 oldProjection2755
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2755 hH))

def oldProjection2756 : Integer.Sparse (Fin 1613) := [(0, 1), (1251, 5)]

theorem oldProjectionSound2756 {H : CMatrix} (hH : IsHadamard H) :
    (180 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2756 =
      Integer.Sparse.eval oldProjection2756 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 180 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2756 oldProjection2756
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2756 hH))

def oldProjection2757 : Integer.Sparse (Fin 1613) := [(0, 2), (19, 40), (20, -5), (698, -240), (700, -80), (704, -80), (1059, -80), (1251, 35)]

theorem oldProjectionSound2757 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2757 =
      Integer.Sparse.eval oldProjection2757 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2757 oldProjection2757
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2757 hH))

def oldProjection2758 : Integer.Sparse (Fin 1613) := [(0, -7), (94, -5), (698, -80), (1059, -80), (1251, 70)]

theorem oldProjectionSound2758 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2758 =
      Integer.Sparse.eval oldProjection2758 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2758 oldProjection2758
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2758 hH))

def oldProjection2759 : Integer.Sparse (Fin 1613) := [(0, 1), (1059, -20), (1251, -5)]

theorem oldProjectionSound2759 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2759 =
      Integer.Sparse.eval oldProjection2759 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 360 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2759 oldProjection2759
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2759 hH))

def oldProjection2760 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 4), (94, -5), (241, -16), (247, -16), (697, 48), (698, -16), (700, -16), (1059, -16), (1251, 2)]

theorem oldProjectionSound2760 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2760 =
      Integer.Sparse.eval oldProjection2760 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2760 oldProjection2760
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2760 hH))

def oldProjection2761 : Integer.Sparse (Fin 1613) := [(0, -7), (698, -80), (1059, -80), (1227, -80), (1251, 55)]

theorem oldProjectionSound2761 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2761 =
      Integer.Sparse.eval oldProjection2761 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2761 oldProjection2761
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2761 hH))

def oldProjection2762 : Integer.Sparse (Fin 1613) := [(0, 1), (94, -10), (698, -160), (1050, 240), (1055, 240), (1059, -80), (1227, -80), (1251, 5)]

theorem oldProjectionSound2762 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2762 =
      Integer.Sparse.eval oldProjection2762 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2762 oldProjection2762
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2762 hH))

def oldProjection2763 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 20), (20, -5), (94, -25), (243, -80), (698, -80), (700, 160), (704, -80), (1251, 35)]

theorem oldProjectionSound2763 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2763 =
      Integer.Sparse.eval oldProjection2763 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2763 oldProjection2763
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2763 hH))

def oldProjection2764 : Integer.Sparse (Fin 1613) := [(0, 2), (94, -5), (698, -80), (700, -160), (1059, -80), (1251, 5)]

theorem oldProjectionSound2764 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2764 =
      Integer.Sparse.eval oldProjection2764 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2764 oldProjection2764
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2764 hH))

def oldProjection2765 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 20), (20, -5), (94, 5), (243, -80), (698, -80), (1226, -40), (1251, 5), (1323, 120)]

theorem oldProjectionSound2765 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2765 =
      Integer.Sparse.eval oldProjection2765 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2765 oldProjection2765
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2765 hH))

def oldProjection2766 : Integer.Sparse (Fin 1613) := [(19, 2), (20, 1), (94, -4), (243, 8), (1225, -4), (1226, -4), (1251, 1)]

theorem oldProjectionSound2766 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2766 =
      Integer.Sparse.eval oldProjection2766 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 72 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2766 oldProjection2766
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2766 hH))

def oldProjection2767 : Integer.Sparse (Fin 1613) := [(0, -7), (94, -20), (698, -80), (1251, 35)]

theorem oldProjectionSound2767 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2767 =
      Integer.Sparse.eval oldProjection2767 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2767 oldProjection2767
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2767 hH))

def oldProjection2768 : Integer.Sparse (Fin 1613) := [(0, 4), (19, 60), (94, -25), (241, -240), (243, -80), (247, -240), (698, -80), (1251, -5)]

theorem oldProjectionSound2768 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2768 =
      Integer.Sparse.eval oldProjection2768 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2768 oldProjection2768
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2768 hH))

def oldProjection2769 : Integer.Sparse (Fin 1613) := [(0, -2), (94, -1), (698, -16), (1059, -32), (1227, -16), (1251, 13)]

theorem oldProjectionSound2769 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2769 =
      Integer.Sparse.eval oldProjection2769 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2769 oldProjection2769
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2769 hH))

def oldProjection2770 : Integer.Sparse (Fin 1613) := [(0, 3), (19, 20), (94, 10), (243, -80), (698, -160), (700, -160), (1251, -5)]

theorem oldProjectionSound2770 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2770 =
      Integer.Sparse.eval oldProjection2770 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2770 oldProjection2770
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2770 hH))

def oldProjection2771 : Integer.Sparse (Fin 1613) := [(0, 1), (241, -80), (698, -320), (700, -80), (1052, 240), (1226, -80), (1251, 55)]

theorem oldProjectionSound2771 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2771 =
      Integer.Sparse.eval oldProjection2771 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2771 oldProjection2771
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2771 hH))

def oldProjection2772 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 10), (94, -25), (698, -80), (704, -40), (1226, -40), (1227, -40), (1251, -20)]

theorem oldProjectionSound2772 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2772 =
      Integer.Sparse.eval oldProjection2772 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2772 oldProjection2772
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2772 hH))

def oldProjection2773 : Integer.Sparse (Fin 1613) := [(0, 1), (20, -5), (94, 5), (243, -80), (698, -80), (1226, 160), (1251, 5)]

theorem oldProjectionSound2773 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2773 =
      Integer.Sparse.eval oldProjection2773 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2773 oldProjection2773
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2773 hH))

def oldProjection2774 : Integer.Sparse (Fin 1613) := [(0, -1), (94, 5), (698, -80), (1226, -80), (1227, -80), (1251, 50)]

theorem oldProjectionSound2774 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2774 =
      Integer.Sparse.eval oldProjection2774 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2774 oldProjection2774
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2774 hH))

def oldProjection2777 : Integer.Sparse (Fin 1613) := [(19, 2), (94, 1), (698, 16), (704, -8), (1251, 7)]

theorem oldProjectionSound2777 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2777 =
      Integer.Sparse.eval oldProjection2777 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2777 oldProjection2777
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2777 hH))

def oldProjection2778 : Integer.Sparse (Fin 1613) := [(0, -9), (1059, -40), (1227, -80), (1251, -15)]

theorem oldProjectionSound2778 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2778 =
      Integer.Sparse.eval oldProjection2778 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2778 oldProjection2778
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2778 hH))

def oldProjection2779 : Integer.Sparse (Fin 1613) := [(0, -1), (94, -15), (698, -160), (1226, -80), (1227, -80), (1251, 30)]

theorem oldProjectionSound2779 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2779 =
      Integer.Sparse.eval oldProjection2779 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2779 oldProjection2779
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2779 hH))

def oldProjection2780 : Integer.Sparse (Fin 1613) := [(94, -1), (1251, -5)]

theorem oldProjectionSound2780 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2780 =
      Integer.Sparse.eval oldProjection2780 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2780 oldProjection2780
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2780 hH))

def oldProjection2781 : Integer.Sparse (Fin 1613) := [(0, 1), (1251, 5)]

theorem oldProjectionSound2781 {H : CMatrix} (hH : IsHadamard H) :
    (180 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2781 =
      Integer.Sparse.eval oldProjection2781 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 180 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2781 oldProjection2781
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2781 hH))

def oldProjection2782 : Integer.Sparse (Fin 1613) := [(0, -1), (19, 10), (94, -10), (241, -120), (243, -80), (698, -160), (1226, -80), (1227, -80), (1251, 5)]

theorem oldProjectionSound2782 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2782 =
      Integer.Sparse.eval oldProjection2782 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2782 oldProjection2782
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2782 hH))

def oldProjection2783 : Integer.Sparse (Fin 1613) := [(0, 12), (94, -5), (1251, 35)]

theorem oldProjectionSound2783 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2783 =
      Integer.Sparse.eval oldProjection2783 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2783 oldProjection2783
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2783 hH))

def oldProjection2784 : Integer.Sparse (Fin 1613) := [(0, 11), (94, -5), (1251, -60)]

theorem oldProjectionSound2784 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2784 =
      Integer.Sparse.eval oldProjection2784 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2784 oldProjection2784
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2784 hH))

def oldProjection2785 : Integer.Sparse (Fin 1613) := [(0, 19), (1251, 5)]

theorem oldProjectionSound2785 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2785 =
      Integer.Sparse.eval oldProjection2785 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 360 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2785 oldProjection2785
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2785 hH))

def oldProjection2786 : Integer.Sparse (Fin 1613) := [(0, 1), (94, -5), (698, -240), (1251, -50)]

theorem oldProjectionSound2786 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2786 =
      Integer.Sparse.eval oldProjection2786 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2786 oldProjection2786
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2786 hH))

def oldProjection2792 : Integer.Sparse (Fin 1613) := [(0, 23), (1059, -20), (1251, 45)]

theorem oldProjectionSound2792 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2792 =
      Integer.Sparse.eval oldProjection2792 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 120 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2792 oldProjection2792
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2792 hH))

def oldProjection2794 : Integer.Sparse (Fin 1613) := [(19, 1), (20, 1), (94, 1), (243, -8), (1217, 6), (1225, -4), (1226, -4), (1251, 1)]

theorem oldProjectionSound2794 {H : CMatrix} (hH : IsHadamard H) :
    (12 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2794 =
      Integer.Sparse.eval oldProjection2794 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 12 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2794 oldProjection2794
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2794 hH))

def oldProjection2802 : Integer.Sparse (Fin 1613) := [(19, 3), (88, -4), (94, -1), (104, -4), (105, -4), (241, -24), (243, -12), (247, -4), (698, -4)]

theorem oldProjectionSound2802 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2802 =
      Integer.Sparse.eval oldProjection2802 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 72 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2802 oldProjection2802
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2802 hH))

def oldProjection2803 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 4), (94, -11), (247, -16), (698, -16), (1251, -4)]

theorem oldProjectionSound2803 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2803 =
      Integer.Sparse.eval oldProjection2803 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2803 oldProjection2803
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2803 hH))

def oldProjection2805 : Integer.Sparse (Fin 1613) := [(0, 1), (94, -5), (241, -40), (698, -160), (1050, 120), (1059, -40), (1221, 120), (1226, -40), (1227, -40), (1251, 30)]

theorem oldProjectionSound2805 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2805 =
      Integer.Sparse.eval oldProjection2805 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2805 oldProjection2805
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2805 hH))

def oldProjection2806 : Integer.Sparse (Fin 1613) := [(0, 3), (94, -5), (241, -80), (698, -400), (1055, 240), (1059, -80), (1226, -80), (1227, -240), (1251, 60)]

theorem oldProjectionSound2806 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2806 =
      Integer.Sparse.eval oldProjection2806 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2806 oldProjection2806
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2806 hH))

def oldProjection2807 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 40), (20, -5), (94, -30), (241, -80), (243, -80), (698, -80), (704, -80), (1251, -10)]

theorem oldProjectionSound2807 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2807 =
      Integer.Sparse.eval oldProjection2807 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2807 oldProjection2807
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2807 hH))

def oldProjection2808 : Integer.Sparse (Fin 1613) := [(19, -8), (20, -1), (94, 4), (104, -16), (105, -16), (241, 32), (243, 32), (698, -16), (704, -16), (1251, 5)]

theorem oldProjectionSound2808 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2808 =
      Integer.Sparse.eval oldProjection2808 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2808 oldProjection2808
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2808 hH))

def oldProjection2810 : Integer.Sparse (Fin 1613) := [(0, -1), (19, 5), (241, -20), (698, 40)]

theorem oldProjectionSound2810 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2810 =
      Integer.Sparse.eval oldProjection2810 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 360 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2810 oldProjection2810
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2810 hH))

def oldProjection2811 : Integer.Sparse (Fin 1613) := [(0, -1), (19, 2), (94, 4), (247, -8), (1251, 3)]

theorem oldProjectionSound2811 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2811 =
      Integer.Sparse.eval oldProjection2811 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2811 oldProjection2811
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2811 hH))

def oldProjection2812 : Integer.Sparse (Fin 1613) := [(0, 3), (19, 20), (94, -35), (241, -80), (698, -400), (1226, -160), (1227, -160), (1251, 50)]

theorem oldProjectionSound2812 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2812 =
      Integer.Sparse.eval oldProjection2812 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2812 oldProjection2812
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2812 hH))

def oldProjection2813 : Integer.Sparse (Fin 1613) := [(0, -3), (19, 20), (94, -35), (247, -80), (698, -80), (1251, 40)]

theorem oldProjectionSound2813 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2813 =
      Integer.Sparse.eval oldProjection2813 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2813 oldProjection2813
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2813 hH))

def oldProjection2814 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 10), (94, -20), (241, -40), (698, -160), (1059, -80), (1251, 25)]

theorem oldProjectionSound2814 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2814 =
      Integer.Sparse.eval oldProjection2814 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2814 oldProjection2814
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2814 hH))

def oldProjection2815 : Integer.Sparse (Fin 1613) := [(3, 1), (19, 4), (20, -1), (94, -1), (104, -4), (243, -4), (698, -4), (700, -8), (704, -12), (1251, -1)]

theorem oldProjectionSound2815 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2815 =
      Integer.Sparse.eval oldProjection2815 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 72 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2815 oldProjection2815
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2815 hH))

def oldProjection2816 : Integer.Sparse (Fin 1613) := [(19, 12), (20, -1), (94, 5), (104, -16), (105, -16), (241, -16), (243, -48), (700, -16), (704, -16), (1052, 48), (1251, -2)]

theorem oldProjectionSound2816 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2816 =
      Integer.Sparse.eval oldProjection2816 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2816 oldProjection2816
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2816 hH))

def oldProjection2817 : Integer.Sparse (Fin 1613) := [(0, 4), (19, 20), (94, -25), (247, -80), (698, -80), (1227, -80), (1251, -5)]

theorem oldProjectionSound2817 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2817 =
      Integer.Sparse.eval oldProjection2817 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2817 oldProjection2817
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2817 hH))

def oldProjection2819 : Integer.Sparse (Fin 1613) := [(0, -3), (19, 10), (94, -5), (241, -40), (1251, -40)]

theorem oldProjectionSound2819 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2819 =
      Integer.Sparse.eval oldProjection2819 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2819 oldProjection2819
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2819 hH))

def oldProjection2820 : Integer.Sparse (Fin 1613) := [(0, 3), (3, 20), (19, -20), (20, -5), (94, -15), (104, -80), (247, -160), (1251, -25)]

theorem oldProjectionSound2820 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2820 =
      Integer.Sparse.eval oldProjection2820 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2820 oldProjection2820
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2820 hH))

def oldProjection2821 : Integer.Sparse (Fin 1613) := [(0, -7), (19, 20), (94, 10), (241, -80), (698, -160), (1227, -80), (1251, 45)]

theorem oldProjectionSound2821 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2821 =
      Integer.Sparse.eval oldProjection2821 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2821 oldProjection2821
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2821 hH))

def oldProjection2822 : Integer.Sparse (Fin 1613) := [(0, -7), (19, 10), (94, -15), (247, -40), (1251, 10)]

theorem oldProjectionSound2822 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2822 =
      Integer.Sparse.eval oldProjection2822 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2822 oldProjection2822
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2822 hH))

end NoFourMUBs.Step2.SOS.Normalization

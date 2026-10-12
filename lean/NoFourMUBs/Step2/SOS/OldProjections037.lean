import NoFourMUBs.Step2.SOS.NormalizationContext
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Sound44
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Sound45

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def oldProjection2823 : Integer.Sparse (Fin 1613) := [(0, -1), (19, 60), (94, -55), (241, -80), (247, -160), (698, -80), (1251, 10)]

theorem oldProjectionSound2823 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2823 =
      Integer.Sparse.eval oldProjection2823 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2823 oldProjection2823
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2823 hH))

def oldProjection2824 : Integer.Sparse (Fin 1613) := [(94, -1), (241, -4), (698, -16), (1050, 12), (1059, -12), (1221, 12), (1251, 3)]

theorem oldProjectionSound2824 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2824 =
      Integer.Sparse.eval oldProjection2824 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 72 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2824 oldProjection2824
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2824 hH))

def oldProjection2825 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 80), (20, -10), (94, -30), (104, -80), (105, -80), (241, -240), (243, -160), (698, -80), (704, -80), (1251, -5)]

theorem oldProjectionSound2825 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2825 =
      Integer.Sparse.eval oldProjection2825 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2825 oldProjection2825
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2825 hH))

def oldProjection2826 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 60), (76, 240), (90, -80), (94, -75), (104, -80), (241, -80), (691, 240), (698, -320), (700, -240), (704, -240), (1251, -20)]

theorem oldProjectionSound2826 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2826 =
      Integer.Sparse.eval oldProjection2826 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2826 oldProjection2826
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2826 hH))

def oldProjection2827 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 60), (20, -5), (94, 5), (104, -80), (243, -80), (691, 240), (698, -80), (700, -80), (704, -80), (1251, -15)]

theorem oldProjectionSound2827 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2827 =
      Integer.Sparse.eval oldProjection2827 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2827 oldProjection2827
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2827 hH))

def oldProjection2828 : Integer.Sparse (Fin 1613) := [(0, -9), (94, -20), (241, -80), (698, -320), (1055, 240), (1059, -80), (1227, -240), (1251, 125)]

theorem oldProjectionSound2828 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2828 =
      Integer.Sparse.eval oldProjection2828 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2828 oldProjection2828
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2828 hH))

def oldProjection2830 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 5), (241, -20), (698, -40), (1059, -20), (1251, -10)]

theorem oldProjectionSound2830 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2830 =
      Integer.Sparse.eval oldProjection2830 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 360 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2830 oldProjection2830
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2830 hH))

def oldProjection2831 : Integer.Sparse (Fin 1613) := [(0, -3), (19, 4), (94, -11), (241, -16), (698, -48), (1227, -32), (1251, 16)]

theorem oldProjectionSound2831 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2831 =
      Integer.Sparse.eval oldProjection2831 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2831 oldProjection2831
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2831 hH))

def oldProjection2833 : Integer.Sparse (Fin 1613) := [(0, -7), (19, 20), (20, -5), (94, 60), (682, 240), (1251, 100), (1321, 240), (1333, -720), (1389, 240)]

theorem oldProjectionSound2833 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2833 =
      Integer.Sparse.eval oldProjection2833 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2833 oldProjection2833
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2833 hH))

def oldProjection2834 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 20), (20, -5), (94, -20), (418, -360), (1251, -20), (1321, 120)]

theorem oldProjectionSound2834 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2834 =
      Integer.Sparse.eval oldProjection2834 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2834 oldProjection2834
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2834 hH))

def oldProjection2835 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 20), (20, -5), (94, -20), (682, 240), (1217, 120), (1221, 120), (1251, -20)]

theorem oldProjectionSound2835 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2835 =
      Integer.Sparse.eval oldProjection2835 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2835 oldProjection2835
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2835 hH))

def oldProjection2836 : Integer.Sparse (Fin 1613) := [(0, -4), (19, 40), (20, -5), (94, -5), (241, -80), (243, -160), (698, -400), (704, -160), (1226, -160), (1227, -160), (1251, 80)]

theorem oldProjectionSound2836 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2836 =
      Integer.Sparse.eval oldProjection2836 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2836 oldProjection2836
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2836 hH))

def oldProjection2840 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 20), (20, -5), (94, -20), (1174, -360), (1251, -20), (1319, 120)]

theorem oldProjectionSound2840 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2840 =
      Integer.Sparse.eval oldProjection2840 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2840 oldProjection2840
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2840 hH))

def oldProjection2842 : Integer.Sparse (Fin 1613) := [(0, 3), (19, 20), (20, -5), (94, -10), (1251, -20)]

theorem oldProjectionSound2842 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2842 =
      Integer.Sparse.eval oldProjection2842 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2842 oldProjection2842
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2842 hH))

def oldProjection2843 : Integer.Sparse (Fin 1613) := [(0, -12), (19, 80), (20, -5), (94, -75), (241, -80), (247, -160), (698, -80), (1251, 50)]

theorem oldProjectionSound2843 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2843 =
      Integer.Sparse.eval oldProjection2843 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2843 oldProjection2843
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2843 hH))

def oldProjection2844 : Integer.Sparse (Fin 1613) := [(0, -2), (94, -1), (243, -16), (698, -96), (1058, 48), (1226, -64), (1227, -64), (1251, 21)]

theorem oldProjectionSound2844 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2844 =
      Integer.Sparse.eval oldProjection2844 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2844 oldProjection2844
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2844 hH))

def oldProjection2845 : Integer.Sparse (Fin 1613) := [(19, 10), (20, -2), (94, -5), (241, -8), (243, -32), (698, -32), (704, -24), (1223, 24), (1225, -8), (1226, -16), (1227, -8), (1251, -1)]

theorem oldProjectionSound2845 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2845 =
      Integer.Sparse.eval oldProjection2845 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2845 oldProjection2845
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2845 hH))

def oldProjection2846 : Integer.Sparse (Fin 1613) := [(0, -11), (94, -5), (1251, 10)]

theorem oldProjectionSound2846 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2846 =
      Integer.Sparse.eval oldProjection2846 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2846 oldProjection2846
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2846 hH))

def oldProjection2847 : Integer.Sparse (Fin 1613) := [(0, -1), (94, 30), (243, -80), (698, -320), (700, -320), (1059, -80), (1219, 240), (1226, -80), (1227, -80), (1251, 55)]

theorem oldProjectionSound2847 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2847 =
      Integer.Sparse.eval oldProjection2847 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2847 oldProjection2847
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2847 hH))

def oldProjection2848 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 20), (20, -5), (94, -30), (243, -80), (698, -240), (700, -400), (704, -80), (1059, -80), (1251, -30)]

theorem oldProjectionSound2848 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2848 =
      Integer.Sparse.eval oldProjection2848 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2848 oldProjection2848
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2848 hH))

def oldProjection2849 : Integer.Sparse (Fin 1613) := [(19, 4), (94, -1), (241, -16), (243, -32), (698, -32), (700, -16), (1052, 96), (1226, -32), (1251, -1)]

theorem oldProjectionSound2849 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2849 =
      Integer.Sparse.eval oldProjection2849 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2849 oldProjection2849
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2849 hH))

def oldProjection2850 : Integer.Sparse (Fin 1613) := [(0, 3), (19, 60), (20, -5), (94, -50), (241, -160), (243, -80), (247, -80), (698, -240), (700, -80), (1059, -80), (1251, -20)]

theorem oldProjectionSound2850 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2850 =
      Integer.Sparse.eval oldProjection2850 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2850 oldProjection2850
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2850 hH))

def oldProjection2851 : Integer.Sparse (Fin 1613) := [(0, -7), (94, -5), (1251, 30)]

theorem oldProjectionSound2851 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2851 =
      Integer.Sparse.eval oldProjection2851 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 360 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2851 oldProjection2851
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2851 hH))

def oldProjection2852 : Integer.Sparse (Fin 1613) := [(19, 4), (94, -1), (104, -16), (241, -16), (243, -16), (691, 48), (698, -16), (700, -32), (704, -32), (1052, 48), (1251, -1)]

theorem oldProjectionSound2852 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2852 =
      Integer.Sparse.eval oldProjection2852 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2852 oldProjection2852
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2852 hH))

def oldProjection2853 : Integer.Sparse (Fin 1613) := [(3, 4), (19, 20), (20, -2), (94, -9), (104, -16), (241, -16), (243, -32), (698, -32), (704, -64), (1251, -3)]

theorem oldProjectionSound2853 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2853 =
      Integer.Sparse.eval oldProjection2853 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2853 oldProjection2853
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2853 hH))

def oldProjection2854 : Integer.Sparse (Fin 1613) := [(0, 1), (3, 20), (19, 60), (20, -5), (94, -50), (108, -80), (247, -80), (698, -80), (704, -80), (1251, -30)]

theorem oldProjectionSound2854 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2854 =
      Integer.Sparse.eval oldProjection2854 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2854 oldProjection2854
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2854 hH))

def oldProjection2856 : Integer.Sparse (Fin 1613) := [(0, 1), (94, -20), (247, -40), (1251, 35), (1388, 120)]

theorem oldProjectionSound2856 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2856 =
      Integer.Sparse.eval oldProjection2856 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2856 oldProjection2856
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2856 hH))

def oldProjection2857 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 10), (94, -20), (247, -40), (1251, 25)]

theorem oldProjectionSound2857 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2857 =
      Integer.Sparse.eval oldProjection2857 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2857 oldProjection2857
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2857 hH))

def oldProjection2858 : Integer.Sparse (Fin 1613) := [(0, -4), (19, 80), (20, -5), (94, -75), (108, -80), (241, -80), (247, -160), (694, 240), (698, -160), (1251, 10)]

theorem oldProjectionSound2858 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2858 =
      Integer.Sparse.eval oldProjection2858 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2858 oldProjection2858
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2858 hH))

def oldProjection2859 : Integer.Sparse (Fin 1613) := [(0, -7), (19, 80), (20, -5), (94, -40), (108, -160), (247, -80), (1251, 20)]

theorem oldProjectionSound2859 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2859 =
      Integer.Sparse.eval oldProjection2859 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2859 oldProjection2859
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2859 hH))

def oldProjection2860 : Integer.Sparse (Fin 1613) := [(0, -3), (19, 10), (94, -5), (241, -120), (243, -80), (698, -240), (700, -80), (1059, -120), (1251, 80)]

theorem oldProjectionSound2860 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2860 =
      Integer.Sparse.eval oldProjection2860 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2860 oldProjection2860
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2860 hH))

def oldProjection2861 : Integer.Sparse (Fin 1613) := [(0, -1), (94, 20), (243, -80), (698, -160), (700, -240), (1052, 240), (1059, -160), (1251, 45)]

theorem oldProjectionSound2861 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2861 =
      Integer.Sparse.eval oldProjection2861 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2861 oldProjection2861
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2861 hH))

def oldProjection2862 : Integer.Sparse (Fin 1613) := [(3, 4), (19, 28), (20, -3), (94, -10), (104, -48), (105, -32), (241, -96), (243, -32), (698, -48), (1251, 9)]

theorem oldProjectionSound2862 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2862 =
      Integer.Sparse.eval oldProjection2862 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2862 oldProjection2862
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2862 hH))

def oldProjection2869 : Integer.Sparse (Fin 1613) := [(0, -3), (3, -160), (19, -160), (20, 15), (94, 65), (102, -240), (104, 240), (105, 80), (108, 160), (124, 720), (238, -240), (241, 320), (243, 80), (247, 160), (698, 80), (1054, -240), (1058, -240), (1223, -480), (1250, 60), (1251, 5)]

theorem oldProjectionSound2869 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2869 =
      Integer.Sparse.eval oldProjection2869 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2869 oldProjection2869
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2869 hH))

def oldProjection2872 : Integer.Sparse (Fin 1613) := [(0, -3), (20, 15), (94, -40), (126, 360), (238, -120), (243, 240), (247, 160), (698, 240), (1050, -120), (1052, -240), (1053, -120), (1250, 30), (1251, 30)]

theorem oldProjectionSound2872 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2872 =
      Integer.Sparse.eval oldProjection2872 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2872 oldProjection2872
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2872 hH))

def oldProjection2873 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -40), (20, 1), (38, -96), (94, 28), (127, 144), (238, -48), (241, 144), (243, 144), (247, 96), (697, -96), (698, 208), (700, 16), (704, 32), (1055, -48), (1059, 16), (1250, 12), (1251, -8)]

theorem oldProjectionSound2873 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2873 =
      Integer.Sparse.eval oldProjection2873 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2873 oldProjection2873
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2873 hH))

def oldProjection2874 : Integer.Sparse (Fin 1613) := [(0, -3), (19, -180), (20, 35), (94, 130), (129, 720), (238, -240), (241, 560), (243, 160), (247, 80), (698, 160), (1055, -240), (1061, -240), (1219, -480), (1250, 60), (1251, -30)]

theorem oldProjectionSound2874 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2874 =
      Integer.Sparse.eval oldProjection2874 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2874 oldProjection2874
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2874 hH))

def oldProjection2875 : Integer.Sparse (Fin 1613) := [(0, -3), (19, -360), (20, 5), (38, -480), (94, 290), (130, 720), (238, -240), (241, 560), (243, 80), (247, 640), (697, -480), (698, 240), (700, 80), (704, 160), (1059, 80), (1250, 60), (1251, 100), (1388, -240)]

theorem oldProjectionSound2875 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2875 =
      Integer.Sparse.eval oldProjection2875 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2875 oldProjection2875
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2875 hH))

def oldProjection2876 : Integer.Sparse (Fin 1613) := [(0, -4), (19, -70), (38, -480), (94, 55), (126, 360), (129, 720), (238, -120), (241, 280), (243, 160), (247, 160), (697, -480), (698, 480), (700, 400), (1050, -120), (1052, -480), (1053, -360), (1059, 280), (1250, 30), (1251, -25)]

theorem oldProjectionSound2876 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2876 =
      Integer.Sparse.eval oldProjection2876 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2876 oldProjection2876
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2876 hH))

def oldProjection2879 : Integer.Sparse (Fin 1613) := [(0, -8), (19, -420), (20, 25), (38, -480), (94, 235), (143, 720), (241, 480), (243, 240), (247, 720), (697, -480), (698, 480), (700, 80), (704, 160), (1061, -240), (1219, -240), (1227, 80), (1251, 130)]

theorem oldProjectionSound2879 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2879 =
      Integer.Sparse.eval oldProjection2879 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2879 oldProjection2879
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2879 hH))

def oldProjection2881 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -60), (20, 3), (38, -192), (94, 30), (127, 144), (129, 144), (130, 144), (238, -144), (241, 176), (243, 128), (247, 80), (698, 160), (700, 96), (704, 64), (1059, 80), (1061, -48)]

theorem oldProjectionSound2881 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2881 =
      Integer.Sparse.eval oldProjection2881 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2881 oldProjection2881
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2881 hH))

def oldProjection2884 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -12), (20, 1), (94, 3), (169, 144), (241, 32), (243, 16), (247, 16), (697, -48), (698, 128), (1050, -96), (1052, -96), (1055, -48), (1058, -48), (1059, 16), (1223, -48), (1226, 16), (1250, 24), (1251, -5)]

theorem oldProjectionSound2884 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2884 =
      Integer.Sparse.eval oldProjection2884 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2884 oldProjection2884
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2884 hH))

def oldProjection2886 : Integer.Sparse (Fin 1613) := [(0, -8), (19, -200), (20, 5), (94, 195), (169, 720), (241, 240), (247, 640), (697, -1200), (698, 880), (1219, -960), (1223, -240), (1226, 160), (1227, 240), (1251, 50)]

theorem oldProjectionSound2886 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2886 =
      Integer.Sparse.eval oldProjection2886 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2886 oldProjection2886
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2886 hH))

def oldProjection2892 : Integer.Sparse (Fin 1613) := [(0, -7), (19, -80), (79, -480), (94, 50), (241, 240), (697, -480), (698, 720), (1050, -960), (1052, -720), (1055, -480), (1058, -960), (1059, 320), (1226, 160), (1250, 240), (1251, -95)]

theorem oldProjectionSound2892 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2892 =
      Integer.Sparse.eval oldProjection2892 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2892 oldProjection2892
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2892 hH))

def oldProjection2893 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -16), (94, 28), (241, 96), (638, 144), (697, -96), (698, 160), (1050, -192), (1055, -144), (1058, -96), (1059, 32), (1250, 60), (1251, -23)]

theorem oldProjectionSound2893 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2893 =
      Integer.Sparse.eval oldProjection2893 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2893 oldProjection2893
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2893 hH))

def oldProjection2900 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -10), (20, 5), (82, -120), (88, 40), (94, -5), (238, -60), (241, 180), (243, 160), (247, 40), (698, 160), (1058, -120), (1223, -240), (1226, 80), (1250, 15), (1251, -10)]

theorem oldProjectionSound2900 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2900 =
      Integer.Sparse.eval oldProjection2900 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 360 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2900 oldProjection2900
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2900 hH))

def oldProjection2901 : Integer.Sparse (Fin 1613) := [(0, -9), (19, -100), (20, 10), (38, -480), (42, 320), (82, -480), (90, 160), (94, 35), (238, -240), (241, 800), (243, 960), (247, 160), (283, 1440), (697, -480), (698, 1520), (700, 960), (704, 160), (1058, -480), (1059, 640), (1223, -480), (1226, 160), (1250, 60), (1251, -130)]

theorem oldProjectionSound2901 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2901 =
      Integer.Sparse.eval oldProjection2901 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2901 oldProjection2901
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2901 hH))

def oldProjection2903 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -100), (20, 5), (94, 50), (127, 720), (241, 400), (243, 640), (287, 1440), (288, 2160), (298, 1440), (426, 1440), (698, 480), (704, 240), (1055, -240), (1223, -240), (1226, 160), (1227, 80), (1251, -70)]

theorem oldProjectionSound2903 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2903 =
      Integer.Sparse.eval oldProjection2903 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2903 oldProjection2903
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2903 hH))

def oldProjection2905 : Integer.Sparse (Fin 1613) := [(0, -7), (19, -220), (20, 35), (82, -480), (88, 160), (94, 160), (228, -1440), (238, -240), (241, 560), (243, 640), (247, 320), (698, 1120), (704, 480), (1058, -480), (1223, -960), (1226, 480), (1227, 320), (1250, 60), (1251, 20)]

theorem oldProjectionSound2905 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2905 =
      Integer.Sparse.eval oldProjection2905 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2905 oldProjection2905
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2905 hH))

def oldProjection2906 : Integer.Sparse (Fin 1613) := [(0, -3), (19, -140), (20, 5), (38, -480), (81, -960), (82, -480), (90, 160), (94, 155), (228, -960), (238, -240), (241, 240), (243, 80), (247, 320), (283, 720), (291, 1440), (686, -720), (697, -480), (698, 880), (700, 80), (704, 240), (1058, -480), (1059, 80), (1223, -480), (1226, 320), (1227, 320), (1250, 60), (1251, 5), (1389, -240)]

theorem oldProjectionSound2906 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2906 =
      Integer.Sparse.eval oldProjection2906 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2906 oldProjection2906
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2906 hH))

def oldProjection2911 : Integer.Sparse (Fin 1613) := [(0, -2), (19, -220), (20, 15), (94, 75), (241, 1040), (243, 1120), (247, 160), (288, 720), (698, 720), (704, 560), (1223, -240), (1226, 160), (1227, 80), (1251, 30)]

theorem oldProjectionSound2911 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2911 =
      Integer.Sparse.eval oldProjection2911 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2911 oldProjection2911
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2911 hH))

def oldProjection2913 : Integer.Sparse (Fin 1613) := [(0, -3), (19, -520), (20, 55), (94, 250), (241, 560), (243, 240), (247, 560), (294, 720), (698, 400), (704, 320), (1223, -240), (1226, 80), (1251, 110)]

theorem oldProjectionSound2913 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2913 =
      Integer.Sparse.eval oldProjection2913 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2913 oldProjection2913
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2913 hH))

def oldProjection2914 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -190), (20, 10), (94, 160), (228, -240), (241, 200), (243, 80), (247, 280), (294, 360), (326, 360), (698, 360), (704, 200), (1223, -120), (1226, 80), (1227, 80), (1251, 25)]

theorem oldProjectionSound2914 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2914 =
      Integer.Sparse.eval oldProjection2914 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2914 oldProjection2914
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2914 hH))

def oldProjection2918 : Integer.Sparse (Fin 1613) := [(0, -4), (19, -200), (20, 15), (94, 155), (228, -960), (241, 400), (243, 320), (247, 320), (287, 720), (294, 1440), (698, 1360), (704, 160), (1223, -960), (1226, 640), (1227, 400), (1251, -20)]

theorem oldProjectionSound2918 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2918 =
      Integer.Sparse.eval oldProjection2918 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2918 oldProjection2918
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2918 hH))

def oldProjection2919 : Integer.Sparse (Fin 1613) := [(0, -3), (19, -300), (20, 30), (94, 180), (228, -480), (241, 640), (243, 960), (247, 320), (288, 720), (698, 800), (704, 720), (1223, -240), (1226, 80), (1227, 80), (1251, 45)]

theorem oldProjectionSound2919 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2919 =
      Integer.Sparse.eval oldProjection2919 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2919 oldProjection2919
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2919 hH))

def oldProjection2920 : Integer.Sparse (Fin 1613) := [(0, -7), (19, -640), (20, 65), (94, 275), (228, -480), (241, 480), (243, 240), (247, 960), (698, 400), (704, 320), (1251, 205)]

theorem oldProjectionSound2920 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2920 =
      Integer.Sparse.eval oldProjection2920 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2920 oldProjection2920
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2920 hH))

def oldProjection2921 : Integer.Sparse (Fin 1613) := [(0, -2), (19, -560), (20, 45), (94, 340), (241, 880), (243, 560), (247, 640), (326, 720), (698, 640), (704, 560), (1251, 65)]

theorem oldProjectionSound2921 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2921 =
      Integer.Sparse.eval oldProjection2921 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2921 oldProjection2921
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2921 hH))

def oldProjection2922 : Integer.Sparse (Fin 1613) := [(0, 3), (19, -200), (20, 10), (94, 180), (228, -480), (241, 640), (243, 720), (247, 160), (288, 720), (294, 1440), (698, 1120), (704, 560), (1223, -720), (1226, 480), (1227, 400), (1251, -65)]

theorem oldProjectionSound2922 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2922 =
      Integer.Sparse.eval oldProjection2922 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2922 oldProjection2922
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2922 hH))

def oldProjection2924 : Integer.Sparse (Fin 1613) := [(0, -14), (19, -100), (20, 10), (42, 320), (81, -1440), (94, 105), (228, -1440), (241, 480), (243, 800), (283, 2160), (686, -720), (698, 1440), (700, 800), (704, 240), (1059, 480), (1251, 5), (1389, -720)]

theorem oldProjectionSound2924 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2924 =
      Integer.Sparse.eval oldProjection2924 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2924 oldProjection2924
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2924 hH))

def oldProjection2925 : Integer.Sparse (Fin 1613) := [(0, -4), (3, -10), (19, -50), (20, 20), (94, -35), (104, 40), (241, 360), (243, 240), (247, 160), (307, 360), (692, -120), (698, 400), (1052, -240), (1221, -120), (1223, -480), (1226, 160), (1251, -15)]

theorem oldProjectionSound2925 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2925 =
      Integer.Sparse.eval oldProjection2925 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2925 oldProjection2925
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2925 hH))

def oldProjection2935 : Integer.Sparse (Fin 1613) := [(0, -6), (19, -300), (20, 35), (94, 150), (127, 720), (228, -480), (241, 720), (243, 1040), (247, 160), (698, 800), (700, 160), (704, 800), (1059, 80), (1061, -240), (1251, 45)]

theorem oldProjectionSound2935 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2935 =
      Integer.Sparse.eval oldProjection2935 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2935 oldProjection2935
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2935 hH))

def oldProjection2936 : Integer.Sparse (Fin 1613) := [(0, -2), (3, -4), (19, -36), (20, 17), (94, 24), (108, 16), (243, 32), (244, 16), (247, 32), (332, 144), (692, -48), (698, 64), (700, 80), (701, 48), (704, 160), (1052, -48), (1059, 16), (1223, -96), (1251, 17)]

theorem oldProjectionSound2936 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2936 =
      Integer.Sparse.eval oldProjection2936 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2936 oldProjection2936
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2936 hH))

def oldProjection2937 : Integer.Sparse (Fin 1613) := [(0, -9), (19, -420), (20, 75), (94, 155), (241, 160), (243, 800), (244, 240), (247, 80), (330, 720), (698, 960), (700, 880), (701, 320), (704, 1200), (1059, 160), (1061, -480), (1251, 145)]

theorem oldProjectionSound2937 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2937 =
      Integer.Sparse.eval oldProjection2937 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2937 oldProjection2937
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2937 hH))

def oldProjection2938 : Integer.Sparse (Fin 1613) := [(0, -2), (19, -120), (20, 10), (94, 85), (130, 180), (241, 100), (243, 80), (247, 140), (326, 180), (698, 200), (700, 40), (704, 160), (1059, 20), (1061, -60), (1251, 25)]

theorem oldProjectionSound2938 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2938 =
      Integer.Sparse.eval oldProjection2938 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 360 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2938 oldProjection2938
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2938 hH))

end NoFourMUBs.Step2.SOS.Normalization

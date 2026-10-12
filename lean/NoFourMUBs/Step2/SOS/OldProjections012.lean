import NoFourMUBs.Step2.SOS.NormalizationContext
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Sound13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Sound14

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def oldProjection836 : Integer.Sparse (Fin 1613) := [(0, -1), (90, 80), (94, 10), (698, 240), (700, 80), (1226, 80), (1227, 80), (1251, -5)]

theorem oldProjectionSound836 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node836 =
      Integer.Sparse.eval oldProjection836 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value836 oldProjection836
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound836 hH))

def oldProjection837 : Integer.Sparse (Fin 1613) := [(94, 3), (698, 32), (1059, 16), (1251, -9)]

theorem oldProjectionSound837 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node837 =
      Integer.Sparse.eval oldProjection837 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value837 oldProjection837
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound837 hH))

def oldProjection838 : Integer.Sparse (Fin 1613) := [(0, 1), (94, 5), (698, 160), (1226, 80), (1227, 160), (1251, -40)]

theorem oldProjectionSound838 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node838 =
      Integer.Sparse.eval oldProjection838 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value838 oldProjection838
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound838 hH))

def oldProjection839 : Integer.Sparse (Fin 1613) := [(0, -1), (90, 80), (94, 5), (698, 240), (700, 80), (1059, 80), (1226, 80), (1251, -30)]

theorem oldProjectionSound839 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node839 =
      Integer.Sparse.eval oldProjection839 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value839 oldProjection839
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound839 hH))

def oldProjection840 : Integer.Sparse (Fin 1613) := [(0, -1), (94, 5), (698, 80), (1059, 40), (1226, 40), (1251, 10)]

theorem oldProjectionSound840 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node840 =
      Integer.Sparse.eval oldProjection840 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 360 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value840 oldProjection840
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound840 hH))

def oldProjection841 : Integer.Sparse (Fin 1613) := [(79, -48), (94, 1), (698, 16), (1058, -48), (1226, 16), (1251, -3)]

theorem oldProjectionSound841 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node841 =
      Integer.Sparse.eval oldProjection841 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value841 oldProjection841
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound841 hH))

def oldProjection842 : Integer.Sparse (Fin 1613) := [(0, -1), (81, -120), (698, 80), (1059, 40), (1227, 40), (1251, -15)]

theorem oldProjectionSound842 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node842 =
      Integer.Sparse.eval oldProjection842 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 360 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value842 oldProjection842
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound842 hH))

def oldProjection843 : Integer.Sparse (Fin 1613) := [(90, 1), (698, -1), (700, 2), (1059, 1)]

theorem oldProjectionSound843 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node843 =
      Integer.Sparse.eval oldProjection843 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 9 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value843 oldProjection843
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound843 hH))

def oldProjection844 : Integer.Sparse (Fin 1613) := [(0, -1), (81, -240), (698, 80), (1059, 80), (1221, -240), (1251, -15)]

theorem oldProjectionSound844 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node844 =
      Integer.Sparse.eval oldProjection844 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value844 oldProjection844
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound844 hH))

def oldProjection845 : Integer.Sparse (Fin 1613) := [(0, 1), (698, 160), (1059, 80), (1226, 80), (1227, 160), (1251, -25)]

theorem oldProjectionSound845 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node845 =
      Integer.Sparse.eval oldProjection845 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value845 oldProjection845
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound845 hH))

def oldProjection846 : Integer.Sparse (Fin 1613) := [(0, -1), (698, 160), (1226, 80), (1227, -80), (1251, -15)]

theorem oldProjectionSound846 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node846 =
      Integer.Sparse.eval oldProjection846 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value846 oldProjection846
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound846 hH))

def oldProjection847 : Integer.Sparse (Fin 1613) := [(90, 1), (698, -1), (1226, 2), (1227, 1)]

theorem oldProjectionSound847 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node847 =
      Integer.Sparse.eval oldProjection847 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 9 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value847 oldProjection847
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound847 hH))

def oldProjection848 : Integer.Sparse (Fin 1613) := [(89, -3), (243, 1), (698, 1), (704, 1), (1223, -3)]

theorem oldProjectionSound848 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node848 =
      Integer.Sparse.eval oldProjection848 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 9 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value848 oldProjection848
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound848 hH))

def oldProjection849 : Integer.Sparse (Fin 1613) := [(88, 1), (228, -3), (241, 1), (243, 2), (698, 1), (1226, 1)]

theorem oldProjectionSound849 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node849 =
      Integer.Sparse.eval oldProjection849 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 9 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value849 oldProjection849
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound849 hH))

def oldProjection850 : Integer.Sparse (Fin 1613) := [(0, -1), (90, 80), (94, 15), (698, 240), (1226, 160), (1251, -20)]

theorem oldProjectionSound850 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node850 =
      Integer.Sparse.eval oldProjection850 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value850 oldProjection850
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound850 hH))

def oldProjection851 : Integer.Sparse (Fin 1613) := [(81, -3), (90, 1), (698, 2), (1226, 2), (1227, 1)]

theorem oldProjectionSound851 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node851 =
      Integer.Sparse.eval oldProjection851 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 9 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value851 oldProjection851
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound851 hH))

def oldProjection852 : Integer.Sparse (Fin 1613) := [(81, -3), (90, 1), (698, 2), (700, 2), (1059, 1)]

theorem oldProjectionSound852 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node852 =
      Integer.Sparse.eval oldProjection852 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 9 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value852 oldProjection852
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound852 hH))

def oldProjection853 : Integer.Sparse (Fin 1613) := [(0, -3), (698, 160), (700, 80), (1059, 160), (1227, 80), (1251, -45)]

theorem oldProjectionSound853 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node853 =
      Integer.Sparse.eval oldProjection853 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value853 oldProjection853
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound853 hH))

def oldProjection854 : Integer.Sparse (Fin 1613) := [(0, -1), (698, 160), (700, 80), (1059, -80), (1251, -15)]

theorem oldProjectionSound854 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node854 =
      Integer.Sparse.eval oldProjection854 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value854 oldProjection854
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound854 hH))

def oldProjection860 : Integer.Sparse (Fin 1613) := [(19, -8), (20, 2), (94, -3), (108, 16), (1047, -48), (1251, -1)]

theorem oldProjectionSound860 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node860 =
      Integer.Sparse.eval oldProjection860 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 96 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value860 oldProjection860
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound860 hH))

def oldProjection861 : Integer.Sparse (Fin 1613) := [(3, -4), (94, 1), (108, 8), (1214, -24), (1251, 1)]

theorem oldProjectionSound861 {H : CMatrix} (hH : IsHadamard H) :
    (48 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node861 =
      Integer.Sparse.eval oldProjection861 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 48 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value861 oldProjection861
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound861 hH))

def oldProjection862 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -20), (20, 5), (94, -10), (1251, -10)]

theorem oldProjectionSound862 {H : CMatrix} (hH : IsHadamard H) :
    (240 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node862 =
      Integer.Sparse.eval oldProjection862 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 240 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value862 oldProjection862
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound862 hH))

def oldProjection863 : Integer.Sparse (Fin 1613) := [(0, -3), (19, -40), (94, 25), (241, 80), (247, 80), (698, 80)]

theorem oldProjectionSound863 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node863 =
      Integer.Sparse.eval oldProjection863 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 480 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value863 oldProjection863
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound863 hH))

def oldProjection864 : Integer.Sparse (Fin 1613) := [(19, -2), (20, 1), (243, 8), (1226, 8), (1251, -3)]

theorem oldProjectionSound864 {H : CMatrix} (hH : IsHadamard H) :
    (48 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node864 =
      Integer.Sparse.eval oldProjection864 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 48 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value864 oldProjection864
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound864 hH))

def oldProjection865 : Integer.Sparse (Fin 1613) := [(19, -12), (20, -5), (94, -6), (243, 16), (244, 16), (1251, 3)]

theorem oldProjectionSound865 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node865 =
      Integer.Sparse.eval oldProjection865 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 96 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value865 oldProjection865
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound865 hH))

def oldProjection866 : Integer.Sparse (Fin 1613) := [(0, -3), (19, -20), (94, 25), (247, 80), (1251, 20)]

theorem oldProjectionSound866 {H : CMatrix} (hH : IsHadamard H) :
    (240 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node866 =
      Integer.Sparse.eval oldProjection866 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 240 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value866 oldProjection866
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound866 hH))

def oldProjection867 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -20), (20, 10), (94, 5), (698, 80), (704, 80), (1251, 20), (1321, -240)]

theorem oldProjectionSound867 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node867 =
      Integer.Sparse.eval oldProjection867 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 480 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value867 oldProjection867
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound867 hH))

def oldProjection868 : Integer.Sparse (Fin 1613) := [(0, -1), (94, 5), (698, 80), (1251, -30)]

theorem oldProjectionSound868 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node868 =
      Integer.Sparse.eval oldProjection868 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 480 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value868 oldProjection868
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound868 hH))

def oldProjection869 : Integer.Sparse (Fin 1613) := [(0, -2), (94, -25), (698, 80), (1226, 80), (1251, 5)]

theorem oldProjectionSound869 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node869 =
      Integer.Sparse.eval oldProjection869 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 480 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value869 oldProjection869
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound869 hH))

def oldProjection870 : Integer.Sparse (Fin 1613) := [(0, -2), (19, -10), (94, 25), (698, 80), (704, 40), (1251, 5)]

theorem oldProjectionSound870 {H : CMatrix} (hH : IsHadamard H) :
    (240 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node870 =
      Integer.Sparse.eval oldProjection870 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 240 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value870 oldProjection870
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound870 hH))

def oldProjection871 : Integer.Sparse (Fin 1613) := [(0, -1), (94, 15), (698, 80), (1251, 20), (1321, -240), (1323, -240), (1389, -240)]

theorem oldProjectionSound871 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node871 =
      Integer.Sparse.eval oldProjection871 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 480 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value871 oldProjection871
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound871 hH))

def oldProjection872 : Integer.Sparse (Fin 1613) := [(94, 1), (698, 16), (1226, 8), (1227, 8), (1251, -3)]

theorem oldProjectionSound872 {H : CMatrix} (hH : IsHadamard H) :
    (48 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node872 =
      Integer.Sparse.eval oldProjection872 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 48 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value872 oldProjection872
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound872 hH))

def oldProjection873 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -20), (94, 15), (1058, -240), (1250, 120), (1321, -240)]

theorem oldProjectionSound873 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node873 =
      Integer.Sparse.eval oldProjection873 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 480 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value873 oldProjection873
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound873 hH))

def oldProjection874 : Integer.Sparse (Fin 1613) := [(19, -2), (93, 3), (94, 1), (696, -12), (1250, 3), (1251, 1), (1323, -12)]

theorem oldProjectionSound874 {H : CMatrix} (hH : IsHadamard H) :
    (24 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node874 =
      Integer.Sparse.eval oldProjection874 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 24 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value874 oldProjection874
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound874 hH))

def oldProjection875 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -40), (20, 5), (94, 15), (243, 80), (698, 80), (1226, 80), (1251, 15), (1323, -240)]

theorem oldProjectionSound875 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node875 =
      Integer.Sparse.eval oldProjection875 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 480 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value875 oldProjection875
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound875 hH))

def oldProjection876 : Integer.Sparse (Fin 1613) := [(0, -1), (20, 5), (94, -45), (243, 80), (698, 80), (1226, 160), (1251, -45)]

theorem oldProjectionSound876 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node876 =
      Integer.Sparse.eval oldProjection876 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 480 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value876 oldProjection876
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound876 hH))

def oldProjection877 : Integer.Sparse (Fin 1613) := [(3, -4), (19, 8), (20, 2), (94, 5), (243, 16), (1057, -48), (1251, 3)]

theorem oldProjectionSound877 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node877 =
      Integer.Sparse.eval oldProjection877 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 96 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value877 oldProjection877
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound877 hH))

def oldProjection878 : Integer.Sparse (Fin 1613) := [(0, -2), (3, -20), (19, -60), (20, 10), (93, 60), (94, 25), (1250, 60), (1251, 5)]

theorem oldProjectionSound878 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node878 =
      Integer.Sparse.eval oldProjection878 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 480 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value878 oldProjection878
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound878 hH))

def oldProjection879 : Integer.Sparse (Fin 1613) := [(3, -4), (20, 2), (93, 12), (94, -3), (1251, -1)]

theorem oldProjectionSound879 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node879 =
      Integer.Sparse.eval oldProjection879 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 96 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value879 oldProjection879
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound879 hH))

def oldProjection880 : Integer.Sparse (Fin 1613) := [(3, -4), (4, 1), (19, 4), (20, -5), (94, -7), (1251, -1)]

theorem oldProjectionSound880 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node880 =
      Integer.Sparse.eval oldProjection880 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 96 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value880 oldProjection880
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound880 hH))

def oldProjection883 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -20), (20, -5), (94, 10), (1251, -20)]

theorem oldProjectionSound883 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node883 =
      Integer.Sparse.eval oldProjection883 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 480 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value883 oldProjection883
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound883 hH))

def oldProjection886 : Integer.Sparse (Fin 1613) := [(19, -4), (23, -48), (94, 3), (704, 16), (1251, 3), (1278, -48)]

theorem oldProjectionSound886 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node886 =
      Integer.Sparse.eval oldProjection886 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value886 oldProjection886
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound886 hH))

def oldProjection887 : Integer.Sparse (Fin 1613) := [(23, -3), (243, 1), (698, 1), (704, 1), (1054, -3)]

theorem oldProjectionSound887 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node887 =
      Integer.Sparse.eval oldProjection887 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 9 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value887 oldProjection887
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound887 hH))

def oldProjection888 : Integer.Sparse (Fin 1613) := [(3, -8), (19, -12), (20, 2), (94, 1), (104, 16), (105, 16), (241, 16), (1251, -1)]

theorem oldProjectionSound888 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node888 =
      Integer.Sparse.eval oldProjection888 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value888 oldProjection888
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound888 hH))

def oldProjection889 : Integer.Sparse (Fin 1613) := [(0, -1), (3, -40), (19, -60), (20, 10), (94, 30), (108, 160), (247, 80), (1251, 25)]

theorem oldProjectionSound889 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node889 =
      Integer.Sparse.eval oldProjection889 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value889 oldProjection889
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound889 hH))

def oldProjection890 : Integer.Sparse (Fin 1613) := [(3, -8), (20, 1), (104, 16), (108, 16), (1251, -1)]

theorem oldProjectionSound890 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node890 =
      Integer.Sparse.eval oldProjection890 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value890 oldProjection890
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound890 hH))

def oldProjection891 : Integer.Sparse (Fin 1613) := [(1331, 1)]

theorem oldProjectionSound891 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node891 =
      Integer.Sparse.eval oldProjection891 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value891 oldProjection891
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound891 hH))

def oldProjection892 : Integer.Sparse (Fin 1613) := [(19, -4), (20, 1), (94, -1), (243, 32), (698, 16), (704, 16), (1225, 16), (1226, 16), (1251, -2)]

theorem oldProjectionSound892 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node892 =
      Integer.Sparse.eval oldProjection892 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value892 oldProjection892
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound892 hH))

def oldProjection893 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -40), (20, 10), (94, 35), (243, 80), (698, 80), (704, 160), (1251, 30)]

theorem oldProjectionSound893 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node893 =
      Integer.Sparse.eval oldProjection893 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value893 oldProjection893
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound893 hH))

def oldProjection894 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -20), (94, 30), (228, -240), (698, 80), (704, 80), (1251, 35)]

theorem oldProjectionSound894 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node894 =
      Integer.Sparse.eval oldProjection894 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value894 oldProjection894
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound894 hH))

def oldProjection895 : Integer.Sparse (Fin 1613) := [(229, -1), (1058, -1), (1060, -1)]

theorem oldProjectionSound895 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node895 =
      Integer.Sparse.eval oldProjection895 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 3 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value895 oldProjection895
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound895 hH))

def oldProjection896 : Integer.Sparse (Fin 1613) := [(228, -3), (698, 1), (1223, -3), (1226, 1), (1227, 1)]

theorem oldProjectionSound896 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node896 =
      Integer.Sparse.eval oldProjection896 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 9 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value896 oldProjection896
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound896 hH))

def oldProjection897 : Integer.Sparse (Fin 1613) := [(19, -4), (94, 3), (243, 16), (698, 16), (704, -16), (1251, 3)]

theorem oldProjectionSound897 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node897 =
      Integer.Sparse.eval oldProjection897 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value897 oldProjection897
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound897 hH))

def oldProjection898 : Integer.Sparse (Fin 1613) := [(19, -8), (20, 1), (88, 16), (241, 16), (243, 32), (1226, 16), (1251, -1)]

theorem oldProjectionSound898 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node898 =
      Integer.Sparse.eval oldProjection898 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value898 oldProjection898
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound898 hH))

def oldProjection899 : Integer.Sparse (Fin 1613) := [(20, 1), (88, 16), (94, -8), (243, 32), (1226, 32), (1251, -1)]

theorem oldProjectionSound899 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node899 =
      Integer.Sparse.eval oldProjection899 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value899 oldProjection899
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound899 hH))

def oldProjection900 : Integer.Sparse (Fin 1613) := [(19, -8), (20, 1), (94, 2), (231, -48), (243, 16), (1251, 1), (1323, -48)]

theorem oldProjectionSound900 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node900 =
      Integer.Sparse.eval oldProjection900 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value900 oldProjection900
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound900 hH))

def oldProjection901 : Integer.Sparse (Fin 1613) := [(231, -3), (243, 1), (698, 1), (1057, -3), (1226, 1)]

theorem oldProjectionSound901 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node901 =
      Integer.Sparse.eval oldProjection901 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 9 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value901 oldProjection901
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound901 hH))

def oldProjection902 : Integer.Sparse (Fin 1613) := [(88, 1), (243, 2), (1225, 1), (1226, -1)]

theorem oldProjectionSound902 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node902 =
      Integer.Sparse.eval oldProjection902 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 9 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value902 oldProjection902
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound902 hH))

def oldProjection903 : Integer.Sparse (Fin 1613) := [(88, 1), (241, 1), (243, -1), (698, 1), (1226, 1)]

theorem oldProjectionSound903 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node903 =
      Integer.Sparse.eval oldProjection903 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 9 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value903 oldProjection903
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound903 hH))

def oldProjection904 : Integer.Sparse (Fin 1613) := [(0, -1), (3, -20), (19, -80), (20, 5), (94, 35), (104, 80), (241, 80), (1251, 15)]

theorem oldProjectionSound904 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node904 =
      Integer.Sparse.eval oldProjection904 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value904 oldProjection904
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound904 hH))

def oldProjection905 : Integer.Sparse (Fin 1613) := [(3, -4), (19, -4), (20, 3), (94, -6), (105, 16), (241, 16), (243, 16), (1251, -1)]

theorem oldProjectionSound905 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node905 =
      Integer.Sparse.eval oldProjection905 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value905 oldProjection905
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound905 hH))

def oldProjection906 : Integer.Sparse (Fin 1613) := [(0, 1), (19, -40), (20, 5), (94, 40), (241, 80), (1251, 10)]

theorem oldProjectionSound906 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node906 =
      Integer.Sparse.eval oldProjection906 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value906 oldProjection906
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound906 hH))

def oldProjection907 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -20), (20, 5), (94, -15), (241, 80), (243, 80), (698, 80), (1251, -35)]

theorem oldProjectionSound907 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node907 =
      Integer.Sparse.eval oldProjection907 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value907 oldProjection907
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound907 hH))

def oldProjection908 : Integer.Sparse (Fin 1613) := [(19, -4), (20, -1), (94, -5), (243, 16), (244, 16), (700, 16), (1251, 4)]

theorem oldProjectionSound908 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node908 =
      Integer.Sparse.eval oldProjection908 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value908 oldProjection908
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound908 hH))

end NoFourMUBs.Step2.SOS.Normalization

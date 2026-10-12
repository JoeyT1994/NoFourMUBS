import NoFourMUBs.Step2.SOS.NormalizationContext
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Sound16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Sound17

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def oldProjection1037 : Integer.Sparse (Fin 1613) := [(19, -8), (94, 3), (241, -16), (247, 16), (1251, -1)]

theorem oldProjectionSound1037 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1037 =
      Integer.Sparse.eval oldProjection1037 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1037 oldProjection1037
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1037 hH))

def oldProjection1038 : Integer.Sparse (Fin 1613) := [(19, -4), (94, 1), (104, 24), (105, 8), (108, 16), (241, 8), (1251, 1)]

theorem oldProjectionSound1038 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1038 =
      Integer.Sparse.eval oldProjection1038 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 72 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1038 oldProjection1038
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1038 hH))

def oldProjection1039 : Integer.Sparse (Fin 1613) := [(94, 1), (1251, 5)]

theorem oldProjectionSound1039 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1039 =
      Integer.Sparse.eval oldProjection1039 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 72 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1039 oldProjection1039
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1039 hH))

def oldProjection1040 : Integer.Sparse (Fin 1613) := [(0, 7), (94, 5), (698, 80), (1059, 80), (1251, -70)]

theorem oldProjectionSound1040 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1040 =
      Integer.Sparse.eval oldProjection1040 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1040 oldProjection1040
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1040 hH))

def oldProjection1041 : Integer.Sparse (Fin 1613) := [(0, -1), (94, -5), (700, 80), (1059, 40)]

theorem oldProjectionSound1041 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1041 =
      Integer.Sparse.eval oldProjection1041 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 360 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1041 oldProjection1041
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1041 hH))

def oldProjection1042 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -40), (20, 10), (94, 15), (243, 80), (698, 80), (704, 80), (1251, 10)]

theorem oldProjectionSound1042 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1042 =
      Integer.Sparse.eval oldProjection1042 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1042 oldProjection1042
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1042 hH))

def oldProjection1043 : Integer.Sparse (Fin 1613) := [(0, 4), (94, 5), (698, 80), (1251, -35)]

theorem oldProjectionSound1043 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1043 =
      Integer.Sparse.eval oldProjection1043 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1043 oldProjection1043
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1043 hH))

def oldProjection1044 : Integer.Sparse (Fin 1613) := [(0, -1), (94, 10), (1251, -45)]

theorem oldProjectionSound1044 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1044 =
      Integer.Sparse.eval oldProjection1044 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1044 oldProjection1044
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1044 hH))

def oldProjection1045 : Integer.Sparse (Fin 1613) := [(0, 9), (1059, 40), (1251, -25)]

theorem oldProjectionSound1045 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1045 =
      Integer.Sparse.eval oldProjection1045 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 360 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1045 oldProjection1045
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1045 hH))

def oldProjection1046 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -20), (20, 5), (94, -10), (243, 80), (698, 80), (1226, 80), (1251, -10)]

theorem oldProjectionSound1046 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1046 =
      Integer.Sparse.eval oldProjection1046 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1046 oldProjection1046
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1046 hH))

def oldProjection1047 : Integer.Sparse (Fin 1613) := [(0, 7), (94, 10), (698, 80), (1227, 80), (1251, -45)]

theorem oldProjectionSound1047 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1047 =
      Integer.Sparse.eval oldProjection1047 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1047 oldProjection1047
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1047 hH))

def oldProjection1048 : Integer.Sparse (Fin 1613) := [(0, -1), (1251, -5)]

theorem oldProjectionSound1048 {H : CMatrix} (hH : IsHadamard H) :
    (90 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1048 =
      Integer.Sparse.eval oldProjection1048 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 90 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1048 oldProjection1048
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1048 hH))

def oldProjection1049 : Integer.Sparse (Fin 1613) := [(0, -2), (94, 25), (698, 160), (700, 80), (704, 80), (1059, 80), (1251, 15)]

theorem oldProjectionSound1049 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1049 =
      Integer.Sparse.eval oldProjection1049 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1049 oldProjection1049
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1049 hH))

def oldProjection1050 : Integer.Sparse (Fin 1613) := [(0, -3), (19, -20), (94, 35), (241, 80), (247, 80), (698, 80), (1251, 30)]

theorem oldProjectionSound1050 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1050 =
      Integer.Sparse.eval oldProjection1050 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1050 oldProjection1050
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1050 hH))

def oldProjection1051 : Integer.Sparse (Fin 1613) := [(3, -4), (19, 4), (20, 1), (93, 12), (94, 3), (1057, -48), (1251, 2)]

theorem oldProjectionSound1051 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1051 =
      Integer.Sparse.eval oldProjection1051 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1051 oldProjection1051
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1051 hH))

def oldProjection1052 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -20), (1058, -240), (1250, 60), (1251, -15)]

theorem oldProjectionSound1052 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1052 =
      Integer.Sparse.eval oldProjection1052 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1052 oldProjection1052
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1052 hH))

def oldProjection1053 : Integer.Sparse (Fin 1613) := [(94, 1), (698, 8), (1059, 8), (1251, 1)]

theorem oldProjectionSound1053 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1053 =
      Integer.Sparse.eval oldProjection1053 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 72 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1053 oldProjection1053
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1053 hH))

def oldProjection1054 : Integer.Sparse (Fin 1613) := [(0, 7), (1059, 80), (1251, -15)]

theorem oldProjectionSound1054 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1054 =
      Integer.Sparse.eval oldProjection1054 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1054 oldProjection1054
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1054 hH))

def oldProjection1055 : Integer.Sparse (Fin 1613) := [(19, -4), (94, 1), (238, -48), (240, -48), (241, 16), (247, 16), (1251, 1)]

theorem oldProjectionSound1055 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1055 =
      Integer.Sparse.eval oldProjection1055 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1055 oldProjection1055
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1055 hH))

def oldProjection1056 : Integer.Sparse (Fin 1613) := [(0, -1), (94, 10), (697, -240), (698, 160), (700, 80), (1059, 80), (1251, -5)]

theorem oldProjectionSound1056 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1056 =
      Integer.Sparse.eval oldProjection1056 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1056 oldProjection1056
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1056 hH))

def oldProjection1057 : Integer.Sparse (Fin 1613) := [(0, -3), (698, 80), (1059, -80), (1251, -45)]

theorem oldProjectionSound1057 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1057 =
      Integer.Sparse.eval oldProjection1057 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1057 oldProjection1057
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1057 hH))

def oldProjection1058 : Integer.Sparse (Fin 1613) := [(0, -3), (698, 240), (1059, 80), (1227, 160), (1251, -45)]

theorem oldProjectionSound1058 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1058 =
      Integer.Sparse.eval oldProjection1058 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1058 oldProjection1058
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1058 hH))

def oldProjection1059 : Integer.Sparse (Fin 1613) := [(94, 1), (241, 16), (698, 16), (1050, -48), (1055, -48), (1251, -3)]

theorem oldProjectionSound1059 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1059 =
      Integer.Sparse.eval oldProjection1059 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1059 oldProjection1059
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1059 hH))

def oldProjection1060 : Integer.Sparse (Fin 1613) := [(19, -4), (94, 1), (104, 16), (691, -48), (694, -48), (704, 16), (1251, 1)]

theorem oldProjectionSound1060 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1060 =
      Integer.Sparse.eval oldProjection1060 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1060 oldProjection1060
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1060 hH))

def oldProjection1061 : Integer.Sparse (Fin 1613) := [(3, -4), (19, -4), (20, -1), (93, 12), (94, -4), (1060, -48), (1251, 1)]

theorem oldProjectionSound1061 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1061 =
      Integer.Sparse.eval oldProjection1061 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1061 oldProjection1061
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1061 hH))

def oldProjection1062 : Integer.Sparse (Fin 1613) := [(19, -4), (20, 1), (94, 6), (243, 16), (700, 16), (1251, 1)]

theorem oldProjectionSound1062 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1062 =
      Integer.Sparse.eval oldProjection1062 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1062 oldProjection1062
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1062 hH))

def oldProjection1063 : Integer.Sparse (Fin 1613) := [(0, -1), (94, -25), (698, 80), (700, 80), (1251, -20)]

theorem oldProjectionSound1063 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1063 =
      Integer.Sparse.eval oldProjection1063 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1063 oldProjection1063
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1063 hH))

def oldProjection1064 : Integer.Sparse (Fin 1613) := [(19, -4), (20, 1), (94, -2), (242, -48), (243, 32), (244, 16), (700, 16), (1251, 1)]

theorem oldProjectionSound1064 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1064 =
      Integer.Sparse.eval oldProjection1064 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1064 oldProjection1064
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1064 hH))

def oldProjection1065 : Integer.Sparse (Fin 1613) := [(94, 1), (700, -16), (704, 16), (1251, 5)]

theorem oldProjectionSound1065 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1065 =
      Integer.Sparse.eval oldProjection1065 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1065 oldProjection1065
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1065 hH))

def oldProjection1066 : Integer.Sparse (Fin 1613) := [(94, 1), (698, 8), (700, 16), (1059, 4), (1251, 1)]

theorem oldProjectionSound1066 {H : CMatrix} (hH : IsHadamard H) :
    (36 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1066 =
      Integer.Sparse.eval oldProjection1066 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 36 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1066 oldProjection1066
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1066 hH))

def oldProjection1067 : Integer.Sparse (Fin 1613) := [(94, -3), (243, 16), (1052, -48), (1219, -48), (1226, 16), (1251, 1)]

theorem oldProjectionSound1067 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1067 =
      Integer.Sparse.eval oldProjection1067 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1067 oldProjection1067
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1067 hH))

def oldProjection1068 : Integer.Sparse (Fin 1613) := [(20, 1), (94, -3), (105, 16), (243, 16), (1044, -48), (1047, -48)]

theorem oldProjectionSound1068 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1068 =
      Integer.Sparse.eval oldProjection1068 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1068 oldProjection1068
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1068 hH))

def oldProjection1069 : Integer.Sparse (Fin 1613) := [(19, 4), (20, -4), (94, -3), (243, 16), (244, 16), (1251, 1)]

theorem oldProjectionSound1069 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1069 =
      Integer.Sparse.eval oldProjection1069 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1069 oldProjection1069
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1069 hH))

def oldProjection1070 : Integer.Sparse (Fin 1613) := [(20, 1), (94, 2), (1061, -16), (1251, 1)]

theorem oldProjectionSound1070 {H : CMatrix} (hH : IsHadamard H) :
    (48 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1070 =
      Integer.Sparse.eval oldProjection1070 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 48 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1070 oldProjection1070
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1070 hH))

def oldProjection1071 : Integer.Sparse (Fin 1613) := [(19, -4), (20, 1), (94, 1), (244, 8), (700, 8), (701, 24), (704, 16)]

theorem oldProjectionSound1071 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1071 =
      Integer.Sparse.eval oldProjection1071 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 72 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1071 oldProjection1071
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1071 hH))

def oldProjection1072 : Integer.Sparse (Fin 1613) := [(19, -4), (20, 2), (94, -5), (243, 16), (700, 16), (704, 16), (1251, 1)]

theorem oldProjectionSound1072 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1072 =
      Integer.Sparse.eval oldProjection1072 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1072 oldProjection1072
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1072 hH))

def oldProjection1073 : Integer.Sparse (Fin 1613) := [(0, -1), (94, 15), (698, 80), (1058, -240), (1251, 20), (1321, -240)]

theorem oldProjectionSound1073 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1073 =
      Integer.Sparse.eval oldProjection1073 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1073 oldProjection1073
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1073 hH))

def oldProjection1074 : Integer.Sparse (Fin 1613) := [(94, -1), (243, 8), (698, 8), (1226, 16), (1251, -1), (1323, -24)]

theorem oldProjectionSound1074 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1074 =
      Integer.Sparse.eval oldProjection1074 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 72 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1074 oldProjection1074
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1074 hH))

def oldProjection1075 : Integer.Sparse (Fin 1613) := [(19, -4), (20, 1), (94, -2), (243, -8), (1251, 1)]

theorem oldProjectionSound1075 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1075 =
      Integer.Sparse.eval oldProjection1075 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 72 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1075 oldProjection1075
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1075 hH))

def oldProjection1076 : Integer.Sparse (Fin 1613) := [(88, 2), (231, -3), (241, 1), (243, 2), (1226, 1)]

theorem oldProjectionSound1076 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1076 =
      Integer.Sparse.eval oldProjection1076 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 9 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1076 oldProjection1076
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1076 hH))

def oldProjection1077 : Integer.Sparse (Fin 1613) := [(19, -4), (94, 1), (247, 8), (1061, -24), (1251, 1), (1278, -24)]

theorem oldProjectionSound1077 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1077 =
      Integer.Sparse.eval oldProjection1077 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 72 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1077 oldProjection1077
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1077 hH))

def oldProjection1078 : Integer.Sparse (Fin 1613) := [(0, 1), (698, 80), (1227, 160), (1251, -25), (1389, -240)]

theorem oldProjectionSound1078 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1078 =
      Integer.Sparse.eval oldProjection1078 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1078 oldProjection1078
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1078 hH))

def oldProjection1079 : Integer.Sparse (Fin 1613) := [(0, -1), (94, 10), (698, -40), (1251, -5)]

theorem oldProjectionSound1079 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1079 =
      Integer.Sparse.eval oldProjection1079 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 360 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1079 oldProjection1079
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1079 hH))

def oldProjection1080 : Integer.Sparse (Fin 1613) := [(19, -4), (94, 3), (243, 8), (698, 8), (704, 24), (1251, 3)]

theorem oldProjectionSound1080 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1080 =
      Integer.Sparse.eval oldProjection1080 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 72 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1080 oldProjection1080
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1080 hH))

def oldProjection1081 : Integer.Sparse (Fin 1613) := [(0, -1), (94, 8), (698, 16), (1251, 1)]

theorem oldProjectionSound1081 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1081 =
      Integer.Sparse.eval oldProjection1081 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1081 oldProjection1081
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1081 hH))

def oldProjection1082 : Integer.Sparse (Fin 1613) := [(19, -16), (20, 2), (94, 3), (241, 16), (243, 16), (247, 16), (1251, 5)]

theorem oldProjectionSound1082 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1082 =
      Integer.Sparse.eval oldProjection1082 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1082 oldProjection1082
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1082 hH))

def oldProjection1083 : Integer.Sparse (Fin 1613) := [(0, -2), (19, -20), (94, 5), (241, 80), (247, 80), (698, 80), (1251, -25)]

theorem oldProjectionSound1083 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1083 =
      Integer.Sparse.eval oldProjection1083 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1083 oldProjection1083
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1083 hH))

def oldProjection1084 : Integer.Sparse (Fin 1613) := [(0, -1), (94, 5), (247, 40), (1055, -120), (1251, 10), (1388, -120)]

theorem oldProjectionSound1084 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1084 =
      Integer.Sparse.eval oldProjection1084 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 360 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1084 oldProjection1084
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1084 hH))

def oldProjection1085 : Integer.Sparse (Fin 1613) := [(19, -4), (20, 1), (94, 3), (108, 16), (1047, -48), (1251, 2), (1319, -48)]

theorem oldProjectionSound1085 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1085 =
      Integer.Sparse.eval oldProjection1085 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1085 oldProjection1085
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1085 hH))

def oldProjection1086 : Integer.Sparse (Fin 1613) := [(42, 2), (243, 2), (686, -3), (700, 2)]

theorem oldProjectionSound1086 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1086 =
      Integer.Sparse.eval oldProjection1086 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 9 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1086 oldProjection1086
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1086 hH))

def oldProjection1087 : Integer.Sparse (Fin 1613) := [(38, -6), (700, 1), (701, 1), (704, 1)]

theorem oldProjectionSound1087 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1087 =
      Integer.Sparse.eval oldProjection1087 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 9 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1087 oldProjection1087
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1087 hH))

def oldProjection1088 : Integer.Sparse (Fin 1613) := [(1376, 1)]

theorem oldProjectionSound1088 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1088 =
      Integer.Sparse.eval oldProjection1088 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1088 oldProjection1088
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1088 hH))

def oldProjection1089 : Integer.Sparse (Fin 1613) := [(19, -12), (20, 1), (94, 5), (229, -48), (243, 16), (704, 16), (1251, 4)]

theorem oldProjectionSound1089 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1089 =
      Integer.Sparse.eval oldProjection1089 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1089 oldProjection1089
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1089 hH))

def oldProjection1090 : Integer.Sparse (Fin 1613) := [(82, -3), (88, 1), (241, 2), (243, 2), (698, 1)]

theorem oldProjectionSound1090 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1090 =
      Integer.Sparse.eval oldProjection1090 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 9 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1090 oldProjection1090
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1090 hH))

def oldProjection1091 : Integer.Sparse (Fin 1613) := [(19, -8), (20, 1), (45, -48), (94, 4), (104, 16), (704, 32), (1251, 3)]

theorem oldProjectionSound1091 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1091 =
      Integer.Sparse.eval oldProjection1091 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1091 oldProjection1091
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1091 hH))

def oldProjection1092 : Integer.Sparse (Fin 1613) := [(19, -4), (94, -7), (682, -48), (1251, -7)]

theorem oldProjectionSound1092 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1092 =
      Integer.Sparse.eval oldProjection1092 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1092 oldProjection1092
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1092 hH))

def oldProjection1093 : Integer.Sparse (Fin 1613) := [(94, -1), (243, 8), (682, -24), (698, 8), (1226, 16), (1251, -1)]

theorem oldProjectionSound1093 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1093 =
      Integer.Sparse.eval oldProjection1093 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 72 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1093 oldProjection1093
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1093 hH))

def oldProjection1094 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -20), (698, 80), (704, 80), (1251, 5)]

theorem oldProjectionSound1094 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1094 =
      Integer.Sparse.eval oldProjection1094 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1094 oldProjection1094
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1094 hH))

def oldProjection1095 : Integer.Sparse (Fin 1613) := [(20, 1), (94, 2), (243, 16), (704, 16), (1251, 1)]

theorem oldProjectionSound1095 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1095 =
      Integer.Sparse.eval oldProjection1095 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1095 oldProjection1095
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1095 hH))

def oldProjection1096 : Integer.Sparse (Fin 1613) := [(0, 8), (94, 5), (1251, -55), (1389, -240)]

theorem oldProjectionSound1096 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1096 =
      Integer.Sparse.eval oldProjection1096 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1096 oldProjection1096
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1096 hH))

def oldProjection1097 : Integer.Sparse (Fin 1613) := [(19, -4), (20, 1), (94, 3), (686, -48), (700, 16), (701, 16), (704, 32), (1251, 2)]

theorem oldProjectionSound1097 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1097 =
      Integer.Sparse.eval oldProjection1097 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1097 oldProjection1097
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1097 hH))

def oldProjection1098 : Integer.Sparse (Fin 1613) := [(0, -1), (81, -240), (94, 10), (698, 160), (700, 80), (1059, 80), (1251, -5)]

theorem oldProjectionSound1098 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1098 =
      Integer.Sparse.eval oldProjection1098 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1098 oldProjection1098
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1098 hH))

def oldProjection1099 : Integer.Sparse (Fin 1613) := [(94, 3), (698, 16), (1251, -1)]

theorem oldProjectionSound1099 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1099 =
      Integer.Sparse.eval oldProjection1099 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1099 oldProjection1099
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1099 hH))

def oldProjection1100 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -40), (94, 15), (228, -240), (241, 80), (247, 160), (1251, 20)]

theorem oldProjectionSound1100 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1100 =
      Integer.Sparse.eval oldProjection1100 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1100 oldProjection1100
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1100 hH))

end NoFourMUBs.Step2.SOS.Normalization

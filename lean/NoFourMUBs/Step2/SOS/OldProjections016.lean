import NoFourMUBs.Step2.SOS.NormalizationContext
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Sound17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Sound18

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def oldProjection1101 : Integer.Sparse (Fin 1613) := [(20, 1), (94, 10), (1217, -24), (1251, 1)]

theorem oldProjectionSound1101 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1101 =
      Integer.Sparse.eval oldProjection1101 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 72 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1101 oldProjection1101
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1101 hH))

def oldProjection1102 : Integer.Sparse (Fin 1613) := [(20, -4), (94, 1), (243, 16), (1225, 16), (1251, 1)]

theorem oldProjectionSound1102 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1102 =
      Integer.Sparse.eval oldProjection1102 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1102 oldProjection1102
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1102 hH))

def oldProjection1103 : Integer.Sparse (Fin 1613) := [(20, 1), (94, 1), (243, 16), (1226, 16), (1251, -4)]

theorem oldProjectionSound1103 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1103 =
      Integer.Sparse.eval oldProjection1103 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1103 oldProjection1103
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1103 hH))

def oldProjection1104 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -20), (94, -10), (1219, -240), (1251, -5)]

theorem oldProjectionSound1104 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1104 =
      Integer.Sparse.eval oldProjection1104 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1104 oldProjection1104
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1104 hH))

def oldProjection1105 : Integer.Sparse (Fin 1613) := [(94, 1), (243, 16), (698, 16), (700, 48), (704, 16), (1251, 5)]

theorem oldProjectionSound1105 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1105 =
      Integer.Sparse.eval oldProjection1105 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1105 oldProjection1105
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1105 hH))

def oldProjection1106 : Integer.Sparse (Fin 1613) := [(42, 3), (243, 2), (700, 1), (701, 1), (704, 2)]

theorem oldProjectionSound1106 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1106 =
      Integer.Sparse.eval oldProjection1106 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 9 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1106 oldProjection1106
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1106 hH))

def oldProjection1107 : Integer.Sparse (Fin 1613) := [(0, -1), (94, 5), (1221, -120), (1251, 50)]

theorem oldProjectionSound1107 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1107 =
      Integer.Sparse.eval oldProjection1107 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 360 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1107 oldProjection1107
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1107 hH))

def oldProjection1108 : Integer.Sparse (Fin 1613) := [(19, 4), (20, 1), (94, 1), (1223, -48)]

theorem oldProjectionSound1108 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1108 =
      Integer.Sparse.eval oldProjection1108 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1108 oldProjection1108
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1108 hH))

def oldProjection1109 : Integer.Sparse (Fin 1613) := [(0, -1), (94, -20), (698, 80), (1226, 80), (1251, 5)]

theorem oldProjectionSound1109 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1109 =
      Integer.Sparse.eval oldProjection1109 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1109 oldProjection1109
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1109 hH))

def oldProjection1110 : Integer.Sparse (Fin 1613) := [(0, 4), (94, 5), (698, 80), (1227, 80), (1251, 5)]

theorem oldProjectionSound1110 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1110 =
      Integer.Sparse.eval oldProjection1110 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1110 oldProjection1110
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1110 hH))

def oldProjection1111 : Integer.Sparse (Fin 1613) := [(0, -1), (94, 5), (698, 160), (1221, -240), (1226, 80), (1227, 80), (1251, -30)]

theorem oldProjectionSound1111 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1111 =
      Integer.Sparse.eval oldProjection1111 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1111 oldProjection1111
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1111 hH))

def oldProjection1112 : Integer.Sparse (Fin 1613) := [(0, -1), (698, 40), (1059, 60), (1251, -15)]

theorem oldProjectionSound1112 {H : CMatrix} (hH : IsHadamard H) :
    (180 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1112 =
      Integer.Sparse.eval oldProjection1112 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 180 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1112 oldProjection1112
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1112 hH))

def oldProjection1113 : Integer.Sparse (Fin 1613) := [(19, -8), (94, 3), (241, 48), (243, 16), (247, 16), (698, 16), (1251, -1)]

theorem oldProjectionSound1113 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1113 =
      Integer.Sparse.eval oldProjection1113 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1113 oldProjection1113
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1113 hH))

def oldProjection1114 : Integer.Sparse (Fin 1613) := [(0, -1), (1251, -5)]

theorem oldProjectionSound1114 {H : CMatrix} (hH : IsHadamard H) :
    (90 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1114 =
      Integer.Sparse.eval oldProjection1114 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 90 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1114 oldProjection1114
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1114 hH))

def oldProjection1115 : Integer.Sparse (Fin 1613) := [(19, -4), (20, -1), (94, -6), (243, 16), (1225, 16), (1226, 16), (1251, -1)]

theorem oldProjectionSound1115 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1115 =
      Integer.Sparse.eval oldProjection1115 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1115 oldProjection1115
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1115 hH))

def oldProjection1116 : Integer.Sparse (Fin 1613) := [(0, 1), (698, 80), (1226, 80), (1227, 80), (1251, -25)]

theorem oldProjectionSound1116 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1116 =
      Integer.Sparse.eval oldProjection1116 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1116 oldProjection1116
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1116 hH))

def oldProjection1117 : Integer.Sparse (Fin 1613) := [(0, 3), (1227, 80), (1251, -35)]

theorem oldProjectionSound1117 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1117 =
      Integer.Sparse.eval oldProjection1117 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1117 oldProjection1117
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1117 hH))

def oldProjection1118 : Integer.Sparse (Fin 1613) := [(0, -19), (1251, -5)]

theorem oldProjectionSound1118 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1118 =
      Integer.Sparse.eval oldProjection1118 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1118 oldProjection1118
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1118 hH))

def oldProjection1119 : Integer.Sparse (Fin 1613) := [(0, 7), (1227, 40), (1251, -35)]

theorem oldProjectionSound1119 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1119 =
      Integer.Sparse.eval oldProjection1119 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 360 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1119 oldProjection1119
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1119 hH))

def oldProjection1120 : Integer.Sparse (Fin 1613) := [(19, -2), (94, 1), (241, 16), (243, 8), (698, 8), (1052, -24), (1251, -1)]

theorem oldProjectionSound1120 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1120 =
      Integer.Sparse.eval oldProjection1120 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 72 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1120 oldProjection1120
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1120 hH))

def oldProjection1121 : Integer.Sparse (Fin 1613) := [(19, -4), (20, 1), (94, -2), (243, 24), (1225, 8), (1226, 8), (1251, 1)]

theorem oldProjectionSound1121 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1121 =
      Integer.Sparse.eval oldProjection1121 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 72 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1121 oldProjection1121
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1121 hH))

def oldProjection1122 : Integer.Sparse (Fin 1613) := [(0, -2), (94, -5), (698, 80), (1226, 80), (1251, -15)]

theorem oldProjectionSound1122 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1122 =
      Integer.Sparse.eval oldProjection1122 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1122 oldProjection1122
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1122 hH))

def oldProjection1123 : Integer.Sparse (Fin 1613) := [(0, -1), (94, 10), (698, 120), (1226, 40), (1227, 40), (1251, -5)]

theorem oldProjectionSound1123 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1123 =
      Integer.Sparse.eval oldProjection1123 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 360 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1123 oldProjection1123
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1123 hH))

def oldProjection1124 : Integer.Sparse (Fin 1613) := [(94, -1), (1226, -4), (1251, -1)]

theorem oldProjectionSound1124 {H : CMatrix} (hH : IsHadamard H) :
    (36 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1124 =
      Integer.Sparse.eval oldProjection1124 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 36 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1124 oldProjection1124
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1124 hH))

def oldProjection1125 : Integer.Sparse (Fin 1613) := [(88, 3), (241, 1), (243, 3), (1226, 2)]

theorem oldProjectionSound1125 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1125 =
      Integer.Sparse.eval oldProjection1125 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 9 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1125 oldProjection1125
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1125 hH))

def oldProjection1126 : Integer.Sparse (Fin 1613) := [(0, 1), (1227, -20), (1251, -5)]

theorem oldProjectionSound1126 {H : CMatrix} (hH : IsHadamard H) :
    (180 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1126 =
      Integer.Sparse.eval oldProjection1126 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 180 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1126 oldProjection1126
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1126 hH))

def oldProjection1127 : Integer.Sparse (Fin 1613) := [(19, -4), (94, 1), (228, -48), (241, 16), (243, 32), (698, 16), (704, 16), (1251, 1)]

theorem oldProjectionSound1127 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1127 =
      Integer.Sparse.eval oldProjection1127 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1127 oldProjection1127
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1127 hH))

def oldProjection1128 : Integer.Sparse (Fin 1613) := [(19, -8), (20, 2), (94, -5), (243, 16), (1226, 16), (1251, -3)]

theorem oldProjectionSound1128 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1128 =
      Integer.Sparse.eval oldProjection1128 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1128 oldProjection1128
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1128 hH))

def oldProjection1129 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -20), (94, 10), (247, 80), (1219, -120), (1251, 15)]

theorem oldProjectionSound1129 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1129 =
      Integer.Sparse.eval oldProjection1129 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 360 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1129 oldProjection1129
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1129 hH))

def oldProjection1130 : Integer.Sparse (Fin 1613) := [(0, 1), (94, 2), (247, 8), (1251, 1), (1388, -24)]

theorem oldProjectionSound1130 {H : CMatrix} (hH : IsHadamard H) :
    (48 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1130 =
      Integer.Sparse.eval oldProjection1130 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 48 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1130 oldProjection1130
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1130 hH))

def oldProjection1131 : Integer.Sparse (Fin 1613) := [(0, -1), (94, 5), (1055, -120), (1250, 60), (1251, -10), (1388, -120)]

theorem oldProjectionSound1131 {H : CMatrix} (hH : IsHadamard H) :
    (240 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1131 =
      Integer.Sparse.eval oldProjection1131 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 240 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1131 oldProjection1131
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1131 hH))

def oldProjection1132 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -20), (247, 40), (1219, -120), (1251, 5)]

theorem oldProjectionSound1132 {H : CMatrix} (hH : IsHadamard H) :
    (240 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1132 =
      Integer.Sparse.eval oldProjection1132 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 240 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1132 oldProjection1132
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1132 hH))

def oldProjection1133 : Integer.Sparse (Fin 1613) := [(19, -4), (20, 1), (94, 2), (1061, -12), (1251, 1), (1278, -12)]

theorem oldProjectionSound1133 {H : CMatrix} (hH : IsHadamard H) :
    (24 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1133 =
      Integer.Sparse.eval oldProjection1133 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 24 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1133 oldProjection1133
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1133 hH))

def oldProjection1134 : Integer.Sparse (Fin 1613) := [(19, 4), (20, 1), (94, 3), (247, 8), (1061, -24), (1251, 2)]

theorem oldProjectionSound1134 {H : CMatrix} (hH : IsHadamard H) :
    (48 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1134 =
      Integer.Sparse.eval oldProjection1134 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 48 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1134 oldProjection1134
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1134 hH))

def oldProjection1136 : Integer.Sparse (Fin 1613) := [(0, -1), (94, 5), (697, -80), (1250, 20), (1251, -10), (1389, -80)]

theorem oldProjectionSound1136 {H : CMatrix} (hH : IsHadamard H) :
    (160 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1136 =
      Integer.Sparse.eval oldProjection1136 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 160 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1136 oldProjection1136
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1136 hH))

def oldProjection1138 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -20), (94, -10), (698, 80), (700, 80), (704, 80), (1251, -5)]

theorem oldProjectionSound1138 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1138 =
      Integer.Sparse.eval oldProjection1138 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 480 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1138 oldProjection1138
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1138 hH))

def oldProjection1139 : Integer.Sparse (Fin 1613) := [(0, -3), (94, -10), (698, 80), (700, 80), (1251, -15)]

theorem oldProjectionSound1139 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1139 =
      Integer.Sparse.eval oldProjection1139 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 480 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1139 oldProjection1139
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1139 hH))

def oldProjection1141 : Integer.Sparse (Fin 1613) := [(0, 3), (94, 15), (698, 80), (1227, 80), (1251, -40), (1389, -240)]

theorem oldProjectionSound1141 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1141 =
      Integer.Sparse.eval oldProjection1141 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 480 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1141 oldProjection1141
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1141 hH))

def oldProjection1142 : Integer.Sparse (Fin 1613) := [(0, -1), (94, 15), (698, 80), (1059, 40), (1251, -20)]

theorem oldProjectionSound1142 {H : CMatrix} (hH : IsHadamard H) :
    (240 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1142 =
      Integer.Sparse.eval oldProjection1142 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 240 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1142 oldProjection1142
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1142 hH))

def oldProjection1144 : Integer.Sparse (Fin 1613) := [(3, -2), (19, -4), (20, -1), (94, -2), (704, 8), (1060, -24), (1251, 1)]

theorem oldProjectionSound1144 {H : CMatrix} (hH : IsHadamard H) :
    (48 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1144 =
      Integer.Sparse.eval oldProjection1144 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 48 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1144 oldProjection1144
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1144 hH))

def oldProjection1146 : Integer.Sparse (Fin 1613) := [(0, 3), (19, -10), (94, 15), (1250, 30), (1251, -20)]

theorem oldProjectionSound1146 {H : CMatrix} (hH : IsHadamard H) :
    (240 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1146 =
      Integer.Sparse.eval oldProjection1146 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 240 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1146 oldProjection1146
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1146 hH))

def oldProjection1147 : Integer.Sparse (Fin 1613) := [(19, -2), (94, 1), (1250, 6), (1251, 1)]

theorem oldProjectionSound1147 {H : CMatrix} (hH : IsHadamard H) :
    (48 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1147 =
      Integer.Sparse.eval oldProjection1147 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 48 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1147 oldProjection1147
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1147 hH))

def oldProjection1148 : Integer.Sparse (Fin 1613) := [(0, -1), (19, 20), (20, 5), (94, -30), (1251, -30)]

theorem oldProjectionSound1148 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1148 =
      Integer.Sparse.eval oldProjection1148 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 480 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1148 oldProjection1148
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1148 hH))

def oldProjection1150 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -20), (20, 5), (94, 20), (1251, 20)]

theorem oldProjectionSound1150 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1150 =
      Integer.Sparse.eval oldProjection1150 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 480 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1150 oldProjection1150
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1150 hH))

def oldProjection1153 : Integer.Sparse (Fin 1613) := [(0, 4), (94, 5), (1251, -15)]

theorem oldProjectionSound1153 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1153 =
      Integer.Sparse.eval oldProjection1153 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 120 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1153 oldProjection1153
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1153 hH))

def oldProjection1154 : Integer.Sparse (Fin 1613) := [(19, -2), (20, 1), (37, -24), (1040, -24), (1251, 1)]

theorem oldProjectionSound1154 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1154 =
      Integer.Sparse.eval oldProjection1154 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 72 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1154 oldProjection1154
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1154 hH))

def oldProjection1155 : Integer.Sparse (Fin 1613) := [(19, -4), (38, -48), (94, 1), (241, 16), (243, 32), (698, 16), (704, 16), (1251, 1)]

theorem oldProjectionSound1155 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1155 =
      Integer.Sparse.eval oldProjection1155 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1155 oldProjection1155
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1155 hH))

def oldProjection1156 : Integer.Sparse (Fin 1613) := [(19, -4), (20, 1), (94, 3), (700, 16), (701, 16), (704, -16), (1251, 2)]

theorem oldProjectionSound1156 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1156 =
      Integer.Sparse.eval oldProjection1156 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1156 oldProjection1156
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1156 hH))

def oldProjection1157 : Integer.Sparse (Fin 1613) := [(19, -4), (20, 1), (45, -48), (94, 3), (700, 16), (701, 16), (704, 32), (1251, 2)]

theorem oldProjectionSound1157 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1157 =
      Integer.Sparse.eval oldProjection1157 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1157 oldProjection1157
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1157 hH))

def oldProjection1158 : Integer.Sparse (Fin 1613) := [(40, -3), (42, 2), (243, 1), (700, 1), (701, 1), (704, 1)]

theorem oldProjectionSound1158 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1158 =
      Integer.Sparse.eval oldProjection1158 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 9 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1158 oldProjection1158
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1158 hH))

def oldProjection1159 : Integer.Sparse (Fin 1613) := [(19, -4), (37, -48), (38, -48), (94, 1), (241, 16), (243, 16), (1251, 1)]

theorem oldProjectionSound1159 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1159 =
      Integer.Sparse.eval oldProjection1159 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1159 oldProjection1159
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1159 hH))

def oldProjection1160 : Integer.Sparse (Fin 1613) := [(3, -8), (19, -8), (20, 1), (94, 2), (1251, 1), (1278, -24)]

theorem oldProjectionSound1160 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1160 =
      Integer.Sparse.eval oldProjection1160 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 72 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1160 oldProjection1160
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1160 hH))

def oldProjection1161 : Integer.Sparse (Fin 1613) := [(3, -12), (19, -4), (20, 1), (94, 2), (1251, 1)]

theorem oldProjectionSound1161 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1161 =
      Integer.Sparse.eval oldProjection1161 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 72 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1161 oldProjection1161
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1161 hH))

def oldProjection1162 : Integer.Sparse (Fin 1613) := [(37, -1), (1045, -1), (1052, -1)]

theorem oldProjectionSound1162 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1162 =
      Integer.Sparse.eval oldProjection1162 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 3 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1162 oldProjection1162
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1162 hH))

def oldProjection1163 : Integer.Sparse (Fin 1613) := [(1040, -1), (1045, -1), (1052, -1)]

theorem oldProjectionSound1163 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1163 =
      Integer.Sparse.eval oldProjection1163 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 3 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1163 oldProjection1163
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1163 hH))

def oldProjection1164 : Integer.Sparse (Fin 1613) := [(38, -3), (700, 2), (1053, -3), (1059, 1)]

theorem oldProjectionSound1164 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1164 =
      Integer.Sparse.eval oldProjection1164 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 9 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1164 oldProjection1164
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1164 hH))

def oldProjection1165 : Integer.Sparse (Fin 1613) := [(244, 1), (700, -1), (701, 2), (704, 1)]

theorem oldProjectionSound1165 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1165 =
      Integer.Sparse.eval oldProjection1165 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 9 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1165 oldProjection1165
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1165 hH))

def oldProjection1166 : Integer.Sparse (Fin 1613) := [(243, 1), (686, -3), (692, -3), (698, 1), (700, 1)]

theorem oldProjectionSound1166 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1166 =
      Integer.Sparse.eval oldProjection1166 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 9 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1166 oldProjection1166
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1166 hH))

def oldProjection1167 : Integer.Sparse (Fin 1613) := [(19, -1), (20, -1), (94, -3), (1251, -1)]

theorem oldProjectionSound1167 {H : CMatrix} (hH : IsHadamard H) :
    (36 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1167 =
      Integer.Sparse.eval oldProjection1167 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 36 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1167 oldProjection1167
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1167 hH))

def oldProjection1168 : Integer.Sparse (Fin 1613) := [(0, -1), (20, 5), (94, 15), (247, 80), (1251, 15)]

theorem oldProjectionSound1168 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1168 =
      Integer.Sparse.eval oldProjection1168 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1168 oldProjection1168
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1168 hH))

def oldProjection1169 : Integer.Sparse (Fin 1613) := [(19, -8), (20, 1), (94, 4), (241, 16), (243, 32), (244, 16), (698, 16), (700, 16), (1251, 3)]

theorem oldProjectionSound1169 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1169 =
      Integer.Sparse.eval oldProjection1169 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1169 oldProjection1169
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1169 hH))

def oldProjection1170 : Integer.Sparse (Fin 1613) := [(0, -1), (19, 20), (20, 5), (94, 20), (704, 80), (1251, 20)]

theorem oldProjectionSound1170 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1170 =
      Integer.Sparse.eval oldProjection1170 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1170 oldProjection1170
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1170 hH))

def oldProjection1171 : Integer.Sparse (Fin 1613) := [(19, -12), (20, 2), (94, 1), (704, 16), (1251, -1)]

theorem oldProjectionSound1171 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1171 =
      Integer.Sparse.eval oldProjection1171 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1171 oldProjection1171
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1171 hH))

def oldProjection1172 : Integer.Sparse (Fin 1613) := [(1214, -1), (1219, -1), (1223, -1)]

theorem oldProjectionSound1172 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1172 =
      Integer.Sparse.eval oldProjection1172 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 3 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1172 oldProjection1172
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1172 hH))

end NoFourMUBs.Step2.SOS.Normalization

import NoFourMUBs.Step2.SOS.NormalizationContext
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Sound47
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Sound48
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Sound49
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Sound50

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def oldProjection3057 : Integer.Sparse (Fin 1613) := [(0, 19), (94, 30), (602, 720), (698, 720), (1059, 640), (1221, -480), (1226, 160), (1227, 400), (1251, -85)]

theorem oldProjectionSound3057 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3057 =
      Integer.Sparse.eval oldProjection3057 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3057 oldProjection3057
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3057 hH))

def oldProjection3060 : Integer.Sparse (Fin 1613) := [(0, 9), (94, 8), (610, 144), (698, 192), (1059, 16), (1226, 64), (1227, 128), (1251, -57), (1389, -96)]

theorem oldProjectionSound3060 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3060 =
      Integer.Sparse.eval oldProjection3060 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3060 oldProjection3060
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3060 hH))

def oldProjection3062 : Integer.Sparse (Fin 1613) := [(0, 13), (94, 26), (617, 144), (698, 112), (1059, 16), (1227, 80), (1251, -67), (1389, -144)]

theorem oldProjectionSound3062 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3062 =
      Integer.Sparse.eval oldProjection3062 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3062 oldProjection3062
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3062 hH))

def oldProjection3063 : Integer.Sparse (Fin 1613) := [(0, 21), (81, -720), (90, 80), (94, 115), (489, 720), (618, 720), (698, 1280), (700, 80), (1059, 240), (1226, 240), (1227, 800), (1251, -270), (1389, -720)]

theorem oldProjectionSound3063 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3063 =
      Integer.Sparse.eval oldProjection3063 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3063 oldProjection3063
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3063 hH))

def oldProjection3064 : Integer.Sparse (Fin 1613) := [(0, 7), (90, 240), (94, 95), (489, 720), (610, 720), (617, 720), (618, 720), (623, 720), (698, 1280), (700, 400), (1059, 240), (1226, 400), (1227, 640), (1251, -140), (1389, -240)]

theorem oldProjectionSound3064 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3064 =
      Integer.Sparse.eval oldProjection3064 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3064 oldProjection3064
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3064 hH))

def oldProjection3065 : Integer.Sparse (Fin 1613) := [(0, 2), (76, -240), (81, -240), (90, 160), (94, 65), (433, 720), (565, 720), (602, 720), (603, 720), (635, 720), (698, 1040), (700, 320), (1052, -240), (1059, 320), (1221, -720), (1226, 320), (1227, 320), (1251, -165), (1389, -240)]

theorem oldProjectionSound3065 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3065 =
      Integer.Sparse.eval oldProjection3065 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3065 oldProjection3065
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3065 hH))

def oldProjection3066 : Integer.Sparse (Fin 1613) := [(0, 1), (76, -48), (81, -192), (94, 20), (433, 144), (565, 144), (698, 208), (1052, -48), (1059, 80), (1221, -192), (1226, 16), (1227, 80), (1251, -45), (1389, -144)]

theorem oldProjectionSound3066 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3066 =
      Integer.Sparse.eval oldProjection3066 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3066 oldProjection3066
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3066 hH))

def oldProjection3067 : Integer.Sparse (Fin 1613) := [(0, 24), (94, 85), (635, 720), (698, 960), (1059, 320), (1221, -480), (1226, 160), (1227, 720), (1251, -295), (1389, -720)]

theorem oldProjectionSound3067 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3067 =
      Integer.Sparse.eval oldProjection3067 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3067 oldProjection3067
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3067 hH))

def oldProjection3069 : Integer.Sparse (Fin 1613) := [(0, 12), (81, -480), (94, 55), (602, 720), (698, 720), (700, 80), (1059, 320), (1221, -480), (1226, 160), (1227, 480), (1251, -225), (1389, -480)]

theorem oldProjectionSound3069 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3069 =
      Integer.Sparse.eval oldProjection3069 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3069 oldProjection3069
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3069 hH))

def oldProjection3071 : Integer.Sparse (Fin 1613) := [(0, -3), (19, -10), (38, -120), (76, -120), (81, -360), (88, 80), (90, 80), (94, 15), (231, -120), (241, 80), (243, 160), (505, 360), (548, 360), (565, 360), (602, 360), (642, 360), (698, 480), (700, 80), (704, 40), (1059, 80), (1221, -120), (1226, 240), (1227, 120), (1251, -20)]

theorem oldProjectionSound3071 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3071 =
      Integer.Sparse.eval oldProjection3071 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3071 oldProjection3071
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3071 hH))

def oldProjection3075 : Integer.Sparse (Fin 1613) := [(0, -7), (76, -240), (81, -720), (90, 160), (94, 50), (427, 720), (559, 720), (590, 720), (603, 720), (674, 1440), (698, 1440), (700, 800), (1052, -240), (1059, 880), (1221, -720), (1226, 80), (1227, 240), (1251, -295), (1389, -240)]

theorem oldProjectionSound3075 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3075 =
      Integer.Sparse.eval oldProjection3075 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3075 oldProjection3075
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3075 hH))

def oldProjection3076 : Integer.Sparse (Fin 1613) := [(0, 39), (94, 95), (610, 720), (698, 720), (1221, -480), (1226, 160), (1227, 800), (1251, -380), (1389, -1200)]

theorem oldProjectionSound3076 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3076 =
      Integer.Sparse.eval oldProjection3076 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3076 oldProjection3076
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3076 hH))

def oldProjection3077 : Integer.Sparse (Fin 1613) := [(0, 28), (94, 95), (602, 720), (617, 720), (698, 1360), (1059, 640), (1226, 320), (1227, 640), (1251, -425)]

theorem oldProjectionSound3077 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3077 =
      Integer.Sparse.eval oldProjection3077 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3077 oldProjection3077
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3077 hH))

def oldProjection3078 : Integer.Sparse (Fin 1613) := [(0, 53), (94, 115), (602, 720), (698, 640), (1059, 80), (1226, 80), (1227, 640), (1251, -390), (1389, -1200)]

theorem oldProjectionSound3078 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3078 =
      Integer.Sparse.eval oldProjection3078 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3078 oldProjection3078
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3078 hH))

def oldProjection3079 : Integer.Sparse (Fin 1613) := [(0, 14), (94, 35), (602, 360), (610, 360), (698, 920), (1059, 240), (1221, -240), (1226, 320), (1227, 560), (1251, -235), (1389, -120)]

theorem oldProjectionSound3079 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3079 =
      Integer.Sparse.eval oldProjection3079 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3079 oldProjection3079
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3079 hH))

def oldProjection3082 : Integer.Sparse (Fin 1613) := [(0, 37), (94, 135), (617, 720), (635, 720), (698, 1200), (1059, 320), (1226, 160), (1227, 800), (1251, -450), (1389, -480)]

theorem oldProjectionSound3082 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3082 =
      Integer.Sparse.eval oldProjection3082 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3082 oldProjection3082
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3082 hH))

def oldProjection3087 : Integer.Sparse (Fin 1613) := [(0, 1), (81, -96), (90, 16), (94, 9), (590, 288), (603, 144), (617, 288), (674, 144), (698, 272), (700, 16), (1059, 192), (1226, 48), (1227, 96), (1251, -92)]

theorem oldProjectionSound3087 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3087 =
      Integer.Sparse.eval oldProjection3087 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3087 oldProjection3087
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3087 hH))

def oldProjection3091 : Integer.Sparse (Fin 1613) := [(0, 57), (19, -20), (94, 125), (247, 80), (669, 720), (697, -240), (698, 1040), (700, 160), (1055, -480), (1058, -240), (1059, 480), (1227, 800), (1250, 120), (1251, -580), (1388, -240), (1389, -480)]

theorem oldProjectionSound3091 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3091 =
      Integer.Sparse.eval oldProjection3091 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3091 oldProjection3091
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3091 hH))

def oldProjection3092 : Integer.Sparse (Fin 1613) := [(0, 3), (19, -20), (94, 45), (241, 80), (668, 720), (697, -240), (698, 560), (1050, -240), (1055, -480), (1059, 240), (1221, -240), (1227, 240), (1250, 180), (1251, -50)]

theorem oldProjectionSound3092 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3092 =
      Integer.Sparse.eval oldProjection3092 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3092 oldProjection3092
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3092 hH))

def oldProjection3093 : Integer.Sparse (Fin 1613) := [(0, 12), (19, -20), (81, -480), (94, 95), (247, 80), (669, 720), (697, -240), (698, 560), (1055, -480), (1058, -240), (1059, 240), (1227, 400), (1250, 120), (1251, -245), (1388, -240), (1389, -480)]

theorem oldProjectionSound3093 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3093 =
      Integer.Sparse.eval oldProjection3093 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3093 oldProjection3093
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3093 hH))

def oldProjection3094 : Integer.Sparse (Fin 1613) := [(0, 37), (19, -20), (94, 150), (241, 80), (666, 720), (697, -240), (698, 1040), (1050, -240), (1055, -480), (1059, 240), (1227, 800), (1250, 180), (1251, -455), (1389, -960)]

theorem oldProjectionSound3094 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3094 =
      Integer.Sparse.eval oldProjection3094 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3094 oldProjection3094
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3094 hH))

def oldProjection3097 : Integer.Sparse (Fin 1613) := [(0, 1), (81, -480), (94, 35), (698, 560), (1050, -240), (1055, -480), (1058, -480), (1059, 400), (1221, -480), (1227, 160), (1250, 60), (1251, -70)]

theorem oldProjectionSound3097 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3097 =
      Integer.Sparse.eval oldProjection3097 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3097 oldProjection3097
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3097 hH))

def oldProjection3098 : Integer.Sparse (Fin 1613) := [(0, 7), (81, -240), (94, 15), (674, 360), (698, 1000), (700, 280), (1059, 400), (1221, -120), (1227, 320), (1251, -180)]

theorem oldProjectionSound3098 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3098 =
      Integer.Sparse.eval oldProjection3098 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3098 oldProjection3098
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3098 hH))

def oldProjection3099 : Integer.Sparse (Fin 1613) := [(0, 29), (81, -480), (94, 70), (674, 720), (698, 1440), (700, 160), (1059, 720), (1221, -1200), (1227, 800), (1251, -495), (1389, -960)]

theorem oldProjectionSound3099 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3099 =
      Integer.Sparse.eval oldProjection3099 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3099 oldProjection3099
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3099 hH))

def oldProjection3114 : Integer.Sparse (Fin 1613) := [(19, -5), (38, -12), (81, -12), (94, 5), (130, 36), (228, -12), (231, -12), (238, -12), (241, 12), (243, 8), (247, 8), (294, 36), (333, 36), (434, 36), (548, 36), (698, 40), (700, 4), (704, 4), (729, 36), (751, 108), (1057, -12), (1058, -12), (1059, 4), (1219, -12), (1223, -12), (1226, 16), (1227, 20), (1251, -2)]

theorem oldProjectionSound3114 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3114 =
      Integer.Sparse.eval oldProjection3114 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 72 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3114 oldProjection3114
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3114 hH))

def oldProjection3116 : Integer.Sparse (Fin 1613) := [(0, -1), (3, -20), (19, -110), (20, 25), (88, 280), (93, 30), (94, -35), (105, 120), (231, -240), (241, 240), (242, -120), (243, 640), (247, 80), (698, 160), (732, 360), (1047, -120), (1057, -120), (1225, 40), (1226, 280), (1251, 5), (1323, -120)]

theorem oldProjectionSound3116 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3116 =
      Integer.Sparse.eval oldProjection3116 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3116 oldProjection3116
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3116 hH))

def oldProjection3118 : Integer.Sparse (Fin 1613) := [(0, -2), (3, -4), (19, -32), (20, 1), (37, -96), (38, -240), (93, 12), (94, 27), (104, 16), (238, -192), (240, -96), (241, 112), (243, 32), (247, 96), (307, 144), (690, -48), (697, -288), (698, 128), (700, 64), (1057, -48), (1058, -96), (1059, 80), (1250, 48), (1251, -8)]

theorem oldProjectionSound3118 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3118 =
      Integer.Sparse.eval oldProjection3118 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3118 oldProjection3118
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3118 hH))

def oldProjection3122 : Integer.Sparse (Fin 1613) := [(0, -9), (3, -40), (19, -260), (20, 30), (93, 60), (94, 115), (108, 240), (238, -480), (240, -240), (241, 720), (243, 400), (247, 480), (698, 400), (751, 720), (1057, -240), (1058, -240), (1225, 80), (1226, 160), (1227, 80), (1250, 120), (1251, 10), (1319, -240)]

theorem oldProjectionSound3122 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3122 =
      Integer.Sparse.eval oldProjection3122 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3122 oldProjection3122
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3122 hH))

def oldProjection3124 : Integer.Sparse (Fin 1613) := [(0, -4), (19, -100), (20, 45), (94, 70), (241, 80), (243, 560), (698, 480), (700, 160), (701, 80), (704, 480), (757, 720), (1061, -240), (1223, -720), (1225, 80), (1226, 80), (1251, 65)]

theorem oldProjectionSound3124 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3124 =
      Integer.Sparse.eval oldProjection3124 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3124 oldProjection3124
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3124 hH))

def oldProjection3126 : Integer.Sparse (Fin 1613) := [(0, 3), (19, -80), (94, 190), (241, 160), (247, 240), (549, 1440), (565, 1440), (694, -240), (698, 880), (775, 720), (808, 720), (1055, -240), (1226, 240), (1227, 320), (1251, -165), (1319, -240)]

theorem oldProjectionSound3126 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3126 =
      Integer.Sparse.eval oldProjection3126 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3126 oldProjection3126
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3126 hH))

def oldProjection3128 : Integer.Sparse (Fin 1613) := [(0, -2), (19, -100), (20, 15), (76, -480), (90, 560), (93, 60), (94, -5), (241, 240), (243, 400), (691, -240), (698, 720), (700, 640), (704, 160), (781, 720), (1047, -240), (1226, 800), (1251, 10), (1323, -480)]

theorem oldProjectionSound3128 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3128 =
      Integer.Sparse.eval oldProjection3128 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3128 oldProjection3128
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3128 hH))

def oldProjection3130 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -6), (20, 1), (76, -48), (90, 56), (94, 5), (243, 32), (697, -24), (698, 128), (700, 48), (704, 16), (782, 72), (1058, -48), (1059, 24), (1226, 56), (1227, 8), (1250, 6), (1251, -7), (1323, -24)]

theorem oldProjectionSound3130 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3130 =
      Integer.Sparse.eval oldProjection3130 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3130 oldProjection3130
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3130 hH))

def oldProjection3131 : Integer.Sparse (Fin 1613) := [(0, -9), (3, -20), (19, -100), (20, 5), (93, 120), (94, 85), (104, 80), (238, -480), (240, -240), (241, 160), (247, 80), (691, -480), (694, -240), (697, -240), (698, 400), (700, 160), (704, 80), (794, 720), (1050, -480), (1055, -240), (1057, -240), (1058, -720), (1059, 240), (1250, 300), (1251, -15)]

theorem oldProjectionSound3131 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3131 =
      Integer.Sparse.eval oldProjection3131 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3131 oldProjection3131
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3131 hH))

def oldProjection3132 : Integer.Sparse (Fin 1613) := [(0, -1), (3, -4), (19, -44), (20, 4), (76, -240), (81, -96), (93, 24), (94, 37), (104, 16), (231, -96), (241, 48), (242, -48), (243, 48), (247, 32), (691, -96), (694, -48), (697, -144), (698, 144), (700, 32), (704, 48), (800, 144), (1057, -48), (1058, -96), (1226, 32), (1227, 16), (1250, 24), (1251, 6), (1323, -192), (1389, -48)]

theorem oldProjectionSound3132 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3132 =
      Integer.Sparse.eval oldProjection3132 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3132 oldProjection3132
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3132 hH))

def oldProjection3133 : Integer.Sparse (Fin 1613) := [(0, -1), (3, -5), (19, -85), (20, 5), (38, -120), (94, 15), (104, 20), (243, 40), (244, 40), (247, 40), (698, 40), (700, 180), (701, 100), (704, 60), (796, 180), (1040, -120), (1045, -60), (1052, -60), (1053, -60), (1059, 20), (1251, 35)]

theorem oldProjectionSound3133 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3133 =
      Integer.Sparse.eval oldProjection3133 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 360 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3133 oldProjection3133
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3133 hH))

def oldProjection3135 : Integer.Sparse (Fin 1613) := [(0, -11), (19, -120), (93, 60), (94, 120), (241, 160), (690, -240), (691, -240), (697, -960), (698, 1040), (700, 400), (789, 720), (1050, -480), (1058, -960), (1059, 800), (1250, 360), (1251, -145)]

theorem oldProjectionSound3135 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3135 =
      Integer.Sparse.eval oldProjection3135 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3135 oldProjection3135
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3135 hH))

def oldProjection3142 : Integer.Sparse (Fin 1613) := [(0, 2), (19, -100), (76, -480), (81, -1200), (93, 60), (94, 195), (241, 80), (247, 160), (691, -240), (694, -240), (697, -960), (698, 560), (807, 720), (1050, -240), (1058, -480), (1221, -480), (1227, 160), (1250, 180), (1251, -55), (1323, -480), (1389, -960)]

theorem oldProjectionSound3142 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3142 =
      Integer.Sparse.eval oldProjection3142 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3142 oldProjection3142
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3142 hH))

def oldProjection3143 : Integer.Sparse (Fin 1613) := [(0, -3), (19, -200), (20, 15), (93, 60), (94, 40), (243, 80), (247, 160), (691, -240), (698, 880), (700, 240), (704, 160), (808, 720), (1050, -240), (1058, -480), (1059, 240), (1226, 160), (1227, 160), (1250, 180), (1251, -180), (1319, -240)]

theorem oldProjectionSound3143 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3143 =
      Integer.Sparse.eval oldProjection3143 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3143 oldProjection3143
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3143 hH))

def oldProjection3144 : Integer.Sparse (Fin 1613) := [(0, -6), (19, -60), (20, 5), (76, -480), (81, -1200), (94, 155), (243, 80), (697, -960), (698, 1280), (700, 400), (704, 160), (801, 720), (1058, -480), (1059, 480), (1221, -480), (1226, 80), (1227, 240), (1250, 120), (1251, -180), (1323, -240), (1389, -960)]

theorem oldProjectionSound3144 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3144 =
      Integer.Sparse.eval oldProjection3144 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3144 oldProjection3144
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3144 hH))

def oldProjection3148 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -40), (94, 45), (241, 240), (478, 1440), (489, 1440), (559, 1440), (690, -240), (697, -480), (698, 480), (700, 160), (789, 720), (806, 720), (1047, -240), (1050, -240), (1059, 320), (1219, -480), (1227, 160), (1251, -110)]

theorem oldProjectionSound3148 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3148 =
      Integer.Sparse.eval oldProjection3148 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3148 oldProjection3148
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3148 hH))

def oldProjection3151 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -140), (20, 10), (94, 60), (127, 720), (228, -480), (241, 480), (243, 800), (247, 80), (287, 720), (288, 1440), (298, 1440), (426, 720), (698, 720), (704, 320), (757, 720), (1014, 720), (1223, -720), (1225, 80), (1226, 400), (1227, 240), (1251, -25)]

theorem oldProjectionSound3151 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3151 =
      Integer.Sparse.eval oldProjection3151 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3151 oldProjection3151
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3151 hH))

def oldProjection3152 : Integer.Sparse (Fin 1613) := [(0, 26), (94, 65), (241, 160), (610, 720), (668, 720), (698, 960), (869, 720), (957, 720), (1050, -240), (1055, -960), (1059, 160), (1221, -480), (1226, 80), (1227, 800), (1251, -325), (1389, -240)]

theorem oldProjectionSound3152 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3152 =
      Integer.Sparse.eval oldProjection3152 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3152 oldProjection3152
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3152 hH))

def oldProjection3154 : Integer.Sparse (Fin 1613) := [(0, 4), (94, 25), (241, 40), (423, 720), (668, 720), (698, 440), (864, 360), (865, 1080), (1050, -360), (1055, -120), (1059, 240), (1221, -360), (1227, 160), (1251, -15)]

theorem oldProjectionSound3154 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3154 =
      Integer.Sparse.eval oldProjection3154 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3154 oldProjection3154
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3154 hH))

def oldProjection3155 : Integer.Sparse (Fin 1613) := [(0, 1), (94, 4), (864, 36), (869, 72), (1050, -60), (1221, -96), (1250, 3), (1251, -8), (1389, -48)]

theorem oldProjectionSound3155 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3155 =
      Integer.Sparse.eval oldProjection3155 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 72 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3155 oldProjection3155
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3155 hH))

def oldProjection3157 : Integer.Sparse (Fin 1613) := [(0, 3), (698, 64), (867, 36), (869, 72), (1050, -36), (1059, 32), (1227, 32), (1251, -35)]

theorem oldProjectionSound3157 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3157 =
      Integer.Sparse.eval oldProjection3157 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 72 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3157 oldProjection3157
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3157 hH))

def oldProjection3161 : Integer.Sparse (Fin 1613) := [(0, 3), (19, -10), (94, -10), (241, 40), (426, 360), (698, 160), (700, 40), (1059, 40), (1219, -120), (1226, 240), (1227, 240), (1251, -35)]

theorem oldProjectionSound3161 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3161 =
      Integer.Sparse.eval oldProjection3161 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3161 oldProjection3161
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3161 hH))

def oldProjection3166 : Integer.Sparse (Fin 1613) := [(0, -2), (94, 25), (698, 360), (865, 360), (1050, -120), (1055, -120), (1059, 200), (1221, -120), (1227, 160), (1250, 30), (1251, -95)]

theorem oldProjectionSound3166 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3166 =
      Integer.Sparse.eval oldProjection3166 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3166 oldProjection3166
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3166 hH))

def oldProjection3167 : Integer.Sparse (Fin 1613) := [(0, 7), (94, 10), (869, 180), (1050, -60), (1221, -180), (1250, 15), (1251, -20), (1388, -60), (1389, -240)]

theorem oldProjectionSound3167 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3167 =
      Integer.Sparse.eval oldProjection3167 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 360 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3167 oldProjection3167
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3167 hH))

def oldProjection3168 : Integer.Sparse (Fin 1613) := [(0, 11), (94, 15), (698, 240), (867, 180), (1050, -120), (1059, -20), (1250, 15), (1251, -15)]

theorem oldProjectionSound3168 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3168 =
      Integer.Sparse.eval oldProjection3168 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 360 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3168 oldProjection3168
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3168 hH))

def oldProjection3170 : Integer.Sparse (Fin 1613) := [(0, 3), (94, 55), (698, 1120), (865, 720), (1050, -240), (1055, -240), (1059, 640), (1221, -480), (1227, 800), (1250, 60), (1251, -260), (1389, -480)]

theorem oldProjectionSound3170 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3170 =
      Integer.Sparse.eval oldProjection3170 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3170 oldProjection3170
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3170 hH))

def oldProjection3173 : Integer.Sparse (Fin 1613) := [(0, 7), (94, 6), (698, 192), (890, 144), (1059, 16), (1227, 64), (1251, -33)]

theorem oldProjectionSound3173 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3173 =
      Integer.Sparse.eval oldProjection3173 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3173 oldProjection3173
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3173 hH))

def oldProjection3174 : Integer.Sparse (Fin 1613) := [(0, 9), (94, 6), (698, 256), (890, 144), (1059, 112), (1221, -96), (1227, 144), (1251, -107), (1389, -48)]

theorem oldProjectionSound3174 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3174 =
      Integer.Sparse.eval oldProjection3174 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3174 oldProjection3174
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3174 hH))

def oldProjection3179 : Integer.Sparse (Fin 1613) := [(0, -3), (19, -20), (20, 5), (94, 70), (127, 720), (228, -240), (241, 80), (243, 400), (288, 1440), (426, 1440), (698, 560), (700, 160), (704, 320), (729, 720), (732, 1440), (798, 1440), (1059, 80), (1061, -240), (1214, -240), (1219, -480), (1223, -480), (1226, 160), (1227, 240)]

theorem oldProjectionSound3179 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3179 =
      Integer.Sparse.eval oldProjection3179 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3179 oldProjection3179
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3179 hH))

def oldProjection3181 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -80), (93, 60), (94, 70), (241, 320), (691, -720), (694, -480), (698, 720), (1050, -960), (1055, -960), (1058, -960), (1059, 240), (1227, 160), (1250, 240), (1251, -85)]

theorem oldProjectionSound3181 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3181 =
      Integer.Sparse.eval oldProjection3181 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3181 oldProjection3181
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3181 hH))

def oldProjection3187 : Integer.Sparse (Fin 1613) := [(0, -4), (19, -120), (76, -480), (93, 60), (94, 145), (241, 320), (247, 160), (484, 1440), (691, -720), (694, -480), (697, -960), (698, 800), (1050, -480), (1052, -960), (1059, 320), (1221, -480), (1250, 120), (1251, -115), (1323, -480), (1389, -480)]

theorem oldProjectionSound3187 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3187 =
      Integer.Sparse.eval oldProjection3187 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3187 oldProjection3187
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3187 hH))

def oldProjection3188 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -32), (20, 3), (93, 12), (94, 37), (241, 64), (243, 96), (479, 144), (691, -144), (694, -96), (698, 160), (700, 160), (704, 128), (1050, -48), (1059, 48), (1250, 12), (1251, 15), (1321, -48)]

theorem oldProjectionSound3188 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3188 =
      Integer.Sparse.eval oldProjection3188 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3188 oldProjection3188
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3188 hH))

def oldProjection3189 : Integer.Sparse (Fin 1613) := [(0, -4), (19, -80), (20, 5), (76, -480), (94, 120), (241, 240), (243, 240), (247, 80), (484, 720), (508, 720), (697, -1200), (698, 1040), (700, 240), (704, 160), (1050, -480), (1052, -960), (1055, -240), (1058, -240), (1059, 400), (1219, -480), (1221, -480), (1226, 80), (1227, 240), (1250, 120), (1251, -145), (1323, -240), (1389, -240)]

theorem oldProjectionSound3189 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3189 =
      Integer.Sparse.eval oldProjection3189 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3189 oldProjection3189
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3189 hH))

def oldProjection3190 : Integer.Sparse (Fin 1613) := [(0, -1), (81, -240), (94, 70), (666, 720), (668, 720), (674, 720), (697, -720), (698, 1280), (700, 160), (704, 80), (801, 720), (890, 720), (919, 1440), (1059, 480), (1142, 720), (1221, -480), (1227, 560), (1251, -265), (1389, -480)]

theorem oldProjectionSound3190 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3190 =
      Integer.Sparse.eval oldProjection3190 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3190 oldProjection3190
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3190 hH))

def oldProjection3193 : Integer.Sparse (Fin 1613) := [(0, 1), (94, 45), (698, 800), (865, 720), (957, 1440), (1055, -720), (1059, 160), (1227, 960), (1251, -280)]

theorem oldProjectionSound3193 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3193 =
      Integer.Sparse.eval oldProjection3193 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3193 oldProjection3193
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3193 hH))

def oldProjection3197 : Integer.Sparse (Fin 1613) := [(0, 7), (19, -20), (94, 95), (241, 80), (426, 720), (698, 1760), (1219, -240), (1226, 1040), (1227, 640), (1251, -200)]

theorem oldProjectionSound3197 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3197 =
      Integer.Sparse.eval oldProjection3197 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3197 oldProjection3197
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3197 hH))

def oldProjection3198 : Integer.Sparse (Fin 1613) := [(0, 31), (94, 50), (698, 480), (956, 720), (1055, -480), (1250, 60), (1251, -225), (1389, -240)]

theorem oldProjectionSound3198 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3198 =
      Integer.Sparse.eval oldProjection3198 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3198 oldProjection3198
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3198 hH))

def oldProjection3200 : Integer.Sparse (Fin 1613) := [(0, 14), (94, 15), (698, 160), (869, 180), (1027, 180), (1055, -120), (1059, 80), (1227, 240), (1250, 15), (1251, -170), (1389, -120)]

theorem oldProjectionSound3200 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3200 =
      Integer.Sparse.eval oldProjection3200 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 360 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3200 oldProjection3200
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3200 hH))

def oldProjection3201 : Integer.Sparse (Fin 1613) := [(0, 1), (19, -30), (76, -240), (94, 45), (241, 400), (243, 200), (508, 360), (697, -120), (698, 600), (1050, -120), (1052, -120), (1055, -240), (1058, -240), (1059, 40), (1221, -120), (1226, 280), (1227, 240), (1250, 30), (1251, -60)]

theorem oldProjectionSound3201 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3201 =
      Integer.Sparse.eval oldProjection3201 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3201 oldProjection3201
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3201 hH))

def oldProjection3203 : Integer.Sparse (Fin 1613) := [(0, 9), (94, 50), (698, 680), (1015, 360), (1226, 560), (1227, 400), (1251, -115)]

theorem oldProjectionSound3203 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3203 =
      Integer.Sparse.eval oldProjection3203 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3203 oldProjection3203
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3203 hH))

end NoFourMUBs.Step2.SOS.Normalization

import NoFourMUBs.Step2.SOS.NormalizationContext
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Sound50
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Sound51
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Sound52

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def oldProjection3205 : Integer.Sparse (Fin 1613) := [(0, 7), (94, 25), (698, 400), (1016, 360), (1059, 80), (1227, 80), (1251, -130), (1389, -120)]

theorem oldProjectionSound3205 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3205 =
      Integer.Sparse.eval oldProjection3205 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3205 oldProjection3205
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3205 hH))

def oldProjection3206 : Integer.Sparse (Fin 1613) := [(0, 39), (94, 40), (698, 1120), (1027, 720), (1059, 880), (1227, 960), (1251, -735), (1389, -240)]

theorem oldProjectionSound3206 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3206 =
      Integer.Sparse.eval oldProjection3206 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3206 oldProjection3206
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3206 hH))

def oldProjection3208 : Integer.Sparse (Fin 1613) := [(0, 7), (94, 20), (698, 240), (1059, 80), (1221, -120), (1227, 480), (1251, -275), (1389, -240)]

theorem oldProjectionSound3208 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3208 =
      Integer.Sparse.eval oldProjection3208 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3208 oldProjection3208
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3208 hH))

def oldProjection3209 : Integer.Sparse (Fin 1613) := [(0, 28), (94, 5), (698, 160), (1027, 360), (1059, 40), (1227, 160), (1251, -195), (1389, -240)]

theorem oldProjectionSound3209 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3209 =
      Integer.Sparse.eval oldProjection3209 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3209 oldProjection3209
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3209 hH))

def oldProjection3210 : Integer.Sparse (Fin 1613) := [(0, 6), (94, 3), (698, 240), (1016, 144), (1059, 112), (1227, 160), (1251, -95)]

theorem oldProjectionSound3210 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3210 =
      Integer.Sparse.eval oldProjection3210 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3210 oldProjection3210
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3210 hH))

def oldProjection3211 : Integer.Sparse (Fin 1613) := [(0, -1), (81, -48), (94, 4), (241, 16), (243, 16), (578, 144), (668, 144), (674, 432), (698, 272), (700, 32), (919, 144), (1050, -48), (1055, -48), (1058, -96), (1059, 176), (1221, -144), (1226, 16), (1227, 144), (1251, -75)]

theorem oldProjectionSound3211 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3211 =
      Integer.Sparse.eval oldProjection3211 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3211 oldProjection3211
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3211 hH))

def oldProjection3215 : Integer.Sparse (Fin 1613) := [(0, 11), (94, 20), (241, 40), (243, 40), (610, 720), (668, 360), (698, 840), (1005, 360), (1016, 360), (1050, -120), (1055, -240), (1058, -360), (1059, 120), (1221, -120), (1226, 320), (1227, 480), (1251, -155)]

theorem oldProjectionSound3215 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3215 =
      Integer.Sparse.eval oldProjection3215 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3215 oldProjection3215
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3215 hH))

def oldProjection3216 : Integer.Sparse (Fin 1613) := [(0, 19), (94, 10), (698, 240), (1027, 360), (1059, 160), (1227, 320), (1251, -305)]

theorem oldProjectionSound3216 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3216 =
      Integer.Sparse.eval oldProjection3216 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3216 oldProjection3216
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3216 hH))

def oldProjection3217 : Integer.Sparse (Fin 1613) := [(0, 57), (94, 5), (698, 880), (890, 720), (1059, 240), (1227, 400), (1251, -520)]

theorem oldProjectionSound3217 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3217 =
      Integer.Sparse.eval oldProjection3217 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3217 oldProjection3217
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3217 hH))

def oldProjection3218 : Integer.Sparse (Fin 1613) := [(0, -1), (3, -20), (19, -220), (20, 25), (40, -480), (42, 560), (93, 60), (94, -15), (105, 80), (241, 80), (242, -480), (243, 1040), (244, 320), (311, 720), (691, -240), (698, 160), (700, 720), (701, 400), (704, 640), (1060, -240), (1251, 65)]

theorem oldProjectionSound3218 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3218 =
      Integer.Sparse.eval oldProjection3218 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3218 oldProjection3218
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3218 hH))

def oldProjection3221 : Integer.Sparse (Fin 1613) := [(0, -2), (3, -4), (19, -44), (20, 5), (40, -96), (76, -288), (93, 24), (94, 24), (105, 16), (241, 48), (242, -96), (243, 48), (691, -96), (697, -192), (698, 160), (700, 64), (704, 64), (1050, -48), (1052, -96), (1058, -96), (1059, 32), (1226, 32), (1250, 36), (1251, 1), (1323, -192)]

theorem oldProjectionSound3221 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3221 =
      Integer.Sparse.eval oldProjection3221 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3221 oldProjection3221
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3221 hH))

def oldProjection3223 : Integer.Sparse (Fin 1613) := [(0, -6), (3, -20), (19, -140), (20, 15), (37, -1440), (93, 60), (94, 65), (104, 240), (105, 160), (124, 2160), (240, -720), (241, 480), (243, 160), (690, -720), (697, -1440), (698, 480), (1044, -480), (1045, -720), (1050, -720), (1052, -1440), (1059, 240), (1250, 180), (1251, -60)]

theorem oldProjectionSound3223 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3223 =
      Integer.Sparse.eval oldProjection3223 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3223 oldProjection3223
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3223 hH))

def oldProjection3224 : Integer.Sparse (Fin 1613) := [(0, 6), (19, -140), (20, 5), (94, 150), (241, 240), (243, 80), (247, 320), (478, 360), (549, 720), (697, -480), (698, 320), (1219, -120), (1227, 120), (1251, -45), (1323, -360), (1389, -480)]

theorem oldProjectionSound3224 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3224 =
      Integer.Sparse.eval oldProjection3224 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3224 oldProjection3224
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3224 hH))

def oldProjection3226 : Integer.Sparse (Fin 1613) := [(0, -6), (3, -20), (19, -180), (20, 20), (45, -480), (94, 145), (104, 80), (108, 80), (241, 80), (247, 320), (697, -480), (698, 560), (704, 320), (1086, 720), (1214, -240), (1219, -720), (1223, -480), (1226, 160), (1227, 240), (1251, 55)]

theorem oldProjectionSound3226 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3226 =
      Integer.Sparse.eval oldProjection3226 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3226 oldProjection3226
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3226 hH))

def oldProjection3230 : Integer.Sparse (Fin 1613) := [(0, 13), (19, -60), (94, 125), (241, 240), (243, 160), (247, 160), (478, 720), (549, 1440), (697, -960), (698, 880), (1219, -240), (1226, 320), (1227, 560), (1251, -160), (1323, -720), (1389, -960)]

theorem oldProjectionSound3230 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3230 =
      Integer.Sparse.eval oldProjection3230 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3230 oldProjection3230
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3230 hH))

def oldProjection3231 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -40), (20, 5), (45, -120), (94, 25), (104, 40), (105, 40), (241, 120), (242, -120), (243, 120), (247, 40), (329, 360), (549, 360), (635, 360), (697, -360), (698, 280), (704, 80), (1086, 360), (1089, 360), (1219, -120), (1226, 80), (1227, 120), (1251, -15), (1323, -120), (1389, -120)]

theorem oldProjectionSound3231 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3231 =
      Integer.Sparse.eval oldProjection3231 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3231 oldProjection3231
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3231 hH))

def oldProjection3232 : Integer.Sparse (Fin 1613) := [(0, 3), (19, -200), (20, 10), (93, 60), (94, 200), (241, 560), (243, 160), (247, 320), (549, 720), (694, -720), (697, -480), (698, 1040), (1047, -240), (1055, -480), (1226, 240), (1227, 240), (1250, 120), (1251, -185), (1319, -240), (1323, -240), (1389, -240)]

theorem oldProjectionSound3232 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3232 =
      Integer.Sparse.eval oldProjection3232 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3232 oldProjection3232
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3232 hH))

def oldProjection3234 : Integer.Sparse (Fin 1613) := [(19, -32), (20, 2), (94, 37), (241, 96), (243, 48), (247, 64), (465, 144), (549, 144), (697, -144), (698, 240), (700, 16), (704, 16), (1055, -96), (1058, -48), (1059, 16), (1226, 48), (1227, 64), (1250, 24), (1251, -33), (1323, -48), (1388, -48), (1389, -48)]

theorem oldProjectionSound3234 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3234 =
      Integer.Sparse.eval oldProjection3234 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3234 oldProjection3234
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3234 hH))

def oldProjection3235 : Integer.Sparse (Fin 1613) := [(0, -2), (3, -20), (19, -180), (20, 15), (45, -480), (93, 120), (94, 165), (108, 80), (240, -240), (242, -240), (247, 240), (694, -480), (697, -1440), (698, 320), (704, 160), (1055, -240), (1219, -480), (1227, 160), (1250, 240), (1251, -20), (1323, -480), (1389, -480)]

theorem oldProjectionSound3235 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3235 =
      Integer.Sparse.eval oldProjection3235 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3235 oldProjection3235
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3235 hH))

def oldProjection3236 : Integer.Sparse (Fin 1613) := [(0, 3), (19, -160), (20, 20), (37, -240), (94, 135), (108, 160), (240, -240), (247, 480), (325, 720), (617, 720), (697, -720), (698, 80), (1052, -240), (1059, 80), (1103, 720), (1105, 720), (1250, 60), (1388, -240)]

theorem oldProjectionSound3236 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3236 =
      Integer.Sparse.eval oldProjection3236 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3236 oldProjection3236
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3236 hH))

def oldProjection3237 : Integer.Sparse (Fin 1613) := [(0, -7), (3, -20), (19, -220), (20, 30), (37, -480), (81, -480), (94, 65), (108, 160), (247, 160), (697, -480), (698, 240), (704, 160), (1040, -480), (1045, -240), (1052, -480), (1059, 80), (1105, 1440), (1251, 30)]

theorem oldProjectionSound3237 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3237 =
      Integer.Sparse.eval oldProjection3237 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3237 oldProjection3237
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3237 hH))

def oldProjection3239 : Integer.Sparse (Fin 1613) := [(0, -2), (3, -30), (19, -170), (20, 30), (72, -240), (93, 60), (94, 45), (105, 80), (241, 80), (243, 320), (698, 80), (700, 240), (704, 160), (1040, -240), (1044, -240), (1045, -120), (1050, -120), (1052, -240), (1250, 30), (1251, 55), (1321, -240)]

theorem oldProjectionSound3239 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3239 =
      Integer.Sparse.eval oldProjection3239 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3239 oldProjection3239
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3239 hH))

def oldProjection3241 : Integer.Sparse (Fin 1613) := [(0, -7), (19, -20), (72, -480), (81, -1440), (94, 30), (160, 2160), (241, 240), (243, 160), (697, -720), (698, 1200), (700, 160), (1040, -720), (1050, -720), (1052, -1440), (1059, 720), (1221, -720), (1227, 240), (1250, 60), (1251, -155)]

theorem oldProjectionSound3241 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3241 =
      Integer.Sparse.eval oldProjection3241 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3241 oldProjection3241
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3241 hH))

def oldProjection3243 : Integer.Sparse (Fin 1613) := [(0, 1), (19, -20), (20, 1), (94, 24), (241, 32), (243, 32), (247, 32), (478, 144), (697, -384), (698, 224), (704, 32), (1050, -48), (1052, -96), (1055, -96), (1059, 32), (1219, -240), (1226, 32), (1227, 144), (1250, 36), (1251, -50), (1323, -48), (1389, -96)]

theorem oldProjectionSound3243 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3243 =
      Integer.Sparse.eval oldProjection3243 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3243 oldProjection3243
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3243 hH))

def oldProjection3245 : Integer.Sparse (Fin 1613) := [(0, -4), (3, -20), (19, -200), (20, 25), (94, 195), (104, 80), (228, -1200), (241, 240), (243, 320), (247, 320), (698, 1040), (704, 640), (729, 720), (1214, -240), (1219, -480), (1223, -960), (1226, 320), (1227, 400), (1251, 70)]

theorem oldProjectionSound3245 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3245 =
      Integer.Sparse.eval oldProjection3245 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3245 oldProjection3245
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3245 hH))

def oldProjection3247 : Integer.Sparse (Fin 1613) := [(0, 8), (19, -4), (94, 25), (247, 16), (549, 144), (669, 144), (697, -96), (698, 112), (1059, 16), (1227, 128), (1251, -55), (1323, -48), (1389, -192)]

theorem oldProjectionSound3247 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3247 =
      Integer.Sparse.eval oldProjection3247 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3247 oldProjection3247
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3247 hH))

def oldProjection3249 : Integer.Sparse (Fin 1613) := [(19, -20), (20, 1), (45, -48), (94, 21), (104, 16), (241, 48), (635, 288), (690, -48), (697, -192), (698, 240), (704, 32), (1086, 288), (1115, 288), (1126, 144), (1219, -96), (1226, 48), (1227, 112), (1250, 12), (1251, -24), (1389, -48)]

theorem oldProjectionSound3249 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3249 =
      Integer.Sparse.eval oldProjection3249 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3249 oldProjection3249
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3249 hH))

def oldProjection3250 : Integer.Sparse (Fin 1613) := [(0, 18), (94, 25), (241, 80), (243, 80), (549, 720), (635, 720), (669, 720), (697, -480), (698, 720), (700, 80), (1027, 720), (1059, 160), (1117, 720), (1226, 160), (1227, 560), (1251, -245), (1323, -240), (1389, -720)]

theorem oldProjectionSound3250 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3250 =
      Integer.Sparse.eval oldProjection3250 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3250 oldProjection3250
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3250 hH))

def oldProjection3251 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -20), (20, 2), (93, 12), (94, 25), (241, 16), (243, 32), (247, 16), (694, -48), (697, -96), (698, 272), (700, 64), (704, 32), (808, 144), (1047, -48), (1055, -48), (1058, -96), (1059, 96), (1117, 144), (1226, 48), (1227, 48), (1250, 24), (1251, -36), (1321, -48), (1323, -48), (1389, -48)]

theorem oldProjectionSound3251 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3251 =
      Integer.Sparse.eval oldProjection3251 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3251 oldProjection3251
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3251 hH))

def oldProjection3252 : Integer.Sparse (Fin 1613) := [(0, -2), (19, -80), (20, 10), (81, -480), (94, 115), (243, 240), (697, -720), (698, 1440), (700, 800), (704, 160), (1058, -480), (1059, 560), (1117, 720), (1226, 240), (1227, 320), (1250, 120), (1251, -185), (1323, -240), (1389, -480)]

theorem oldProjectionSound3252 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3252 =
      Integer.Sparse.eval oldProjection3252 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3252 oldProjection3252
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3252 hH))

def oldProjection3255 : Integer.Sparse (Fin 1613) := [(0, 3), (3, -20), (19, -100), (20, 5), (93, 180), (94, 70), (104, 80), (240, -240), (241, 160), (690, -240), (694, -480), (697, -480), (698, 160), (1050, -240), (1055, -480), (1059, 80), (1124, 720), (1250, 120), (1251, -30)]

theorem oldProjectionSound3255 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3255 =
      Integer.Sparse.eval oldProjection3255 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3255 oldProjection3255
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3255 hH))

def oldProjection3256 : Integer.Sparse (Fin 1613) := [(0, -1), (3, -4), (19, -60), (20, 12), (81, -192), (94, 27), (104, 16), (229, -144), (241, 16), (243, 64), (698, 80), (704, 128), (716, 144), (1040, -192), (1045, -48), (1052, -96), (1059, 16), (1146, 288), (1251, 12)]

theorem oldProjectionSound3256 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3256 =
      Integer.Sparse.eval oldProjection3256 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3256 oldProjection3256
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3256 hH))

def oldProjection3257 : Integer.Sparse (Fin 1613) := [(0, 4), (19, -60), (93, 60), (94, 55), (241, 80), (690, -240), (694, -240), (697, -480), (698, 400), (1050, -240), (1055, -480), (1059, 240), (1128, 720), (1227, 80), (1250, 180), (1251, 35)]

theorem oldProjectionSound3257 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3257 =
      Integer.Sparse.eval oldProjection3257 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3257 oldProjection3257
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3257 hH))

def oldProjection3259 : Integer.Sparse (Fin 1613) := [(0, 2), (19, -20), (93, 15), (94, 40), (247, 40), (694, -120), (697, -240), (698, 80), (1055, -120), (1140, 180), (1227, 100), (1250, 60), (1251, -65), (1323, -60), (1389, -180)]

theorem oldProjectionSound3259 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3259 =
      Integer.Sparse.eval oldProjection3259 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 360 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3259 oldProjection3259
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3259 hH))

def oldProjection3261 : Integer.Sparse (Fin 1613) := [(0, 13), (81, -240), (94, 30), (243, 80), (697, -720), (698, 1120), (704, 80), (1005, 720), (1016, 720), (1052, -240), (1059, 240), (1142, 720), (1219, -480), (1226, 320), (1227, 720), (1251, -215), (1389, -240)]

theorem oldProjectionSound3261 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3261 =
      Integer.Sparse.eval oldProjection3261 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3261 oldProjection3261
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3261 hH))

def oldProjection3263 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -20), (20, 4), (72, -96), (81, -96), (93, 12), (94, 14), (243, 32), (694, -48), (698, 176), (700, 192), (704, 64), (806, 144), (1044, -48), (1050, -48), (1052, -48), (1059, 48), (1250, 12), (1251, 7), (1321, -96)]

theorem oldProjectionSound3263 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3263 =
      Integer.Sparse.eval oldProjection3263 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3263 oldProjection3263
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3263 hH))

def oldProjection3264 : Integer.Sparse (Fin 1613) := [(0, -7), (19, -160), (20, 40), (72, -720), (81, -480), (94, 25), (229, -240), (243, 320), (682, -240), (698, 800), (700, 1120), (704, 480), (1040, -240), (1059, 160), (1146, 720), (1221, -240), (1251, 60), (1270, 720), (1321, -480), (1389, -240)]

theorem oldProjectionSound3264 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3264 =
      Integer.Sparse.eval oldProjection3264 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3264 oldProjection3264
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3264 hH))

def oldProjection3265 : Integer.Sparse (Fin 1613) := [(0, -3), (72, -480), (81, -1440), (94, 50), (197, 2160), (229, -720), (698, 1200), (700, 320), (1050, -720), (1055, -720), (1058, -1440), (1059, 720), (1221, -720), (1227, 480), (1250, 60), (1251, -175)]

theorem oldProjectionSound3265 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3265 =
      Integer.Sparse.eval oldProjection3265 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3265 oldProjection3265
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3265 hH))

def oldProjection3276 : Integer.Sparse (Fin 1613) := [(0, -4), (19, -200), (20, 30), (94, 115), (228, -240), (229, -240), (241, 80), (243, 400), (244, 80), (247, 80), (294, 720), (332, 720), (434, 720), (698, 880), (700, 640), (701, 80), (704, 480), (798, 720), (1058, -240), (1059, 160), (1060, -240), (1061, -240), (1146, 720), (1207, 2160), (1219, -240), (1223, -240), (1226, 160), (1227, 160), (1251, 45)]

theorem oldProjectionSound3276 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3276 =
      Integer.Sparse.eval oldProjection3276 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3276 oldProjection3276
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3276 hH))

def oldProjection3281 : Integer.Sparse (Fin 1613) := [(0, 1), (81, -480), (94, 90), (243, 80), (433, 720), (483, 720), (489, 1440), (682, -240), (698, 1280), (700, 240), (704, 80), (1027, 720), (1058, -240), (1059, 400), (1117, 720), (1175, 720), (1226, 240), (1227, 480), (1251, -215), (1321, -240), (1389, -480)]

theorem oldProjectionSound3281 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3281 =
      Integer.Sparse.eval oldProjection3281 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3281 oldProjection3281
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3281 hH))

def oldProjection3287 : Integer.Sparse (Fin 1613) := [(0, -1), (228, -720), (287, 2160), (426, 2160), (698, 960), (729, 2160), (1186, 1440), (1214, -240), (1219, -720), (1223, -960), (1226, 720), (1227, 320), (1251, -55)]

theorem oldProjectionSound3287 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3287 =
      Integer.Sparse.eval oldProjection3287 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3287 oldProjection3287
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3287 hH))

def oldProjection3288 : Integer.Sparse (Fin 1613) := [(19, -2), (93, 3), (94, 3), (241, 8), (690, -12), (694, -24), (698, 20), (1047, -24), (1050, -24), (1055, -24), (1058, -24), (1059, 4), (1227, 8), (1250, 6), (1251, -2)]

theorem oldProjectionSound3288 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3288 =
      Integer.Sparse.eval oldProjection3288 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 72 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3288 oldProjection3288
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3288 hH))

def oldProjection3292 : Integer.Sparse (Fin 1613) := [(0, 3), (19, -180), (20, 40), (81, -480), (94, 50), (229, -480), (241, 80), (243, 320), (285, 720), (434, 1440), (698, 400), (704, 240), (1040, -240), (1058, -480), (1060, -240), (1146, 1440), (1207, 2880), (1223, -240), (1225, 80), (1226, 160), (1227, 160), (1251, -45)]

theorem oldProjectionSound3292 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3292 =
      Integer.Sparse.eval oldProjection3292 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3292 oldProjection3292
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3292 hH))

def oldProjection3293 : Integer.Sparse (Fin 1613) := [(0, 11), (19, -20), (72, -480), (94, 75), (241, 240), (243, 160), (698, 1200), (700, 160), (1050, -1440), (1055, -1440), (1058, -1440), (1059, 480), (1221, -720), (1227, 480), (1250, 240), (1251, -200)]

theorem oldProjectionSound3293 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3293 =
      Integer.Sparse.eval oldProjection3293 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3293 oldProjection3293
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3293 hH))

def oldProjection3301 : Integer.Sparse (Fin 1613) := [(0, 21), (94, 65), (426, 720), (434, 1440), (698, 1440), (700, 160), (1059, 240), (1219, -720), (1226, 560), (1227, 960), (1251, -320)]

theorem oldProjectionSound3301 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3301 =
      Integer.Sparse.eval oldProjection3301 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3301 oldProjection3301
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3301 hH))

def oldProjection3303 : Integer.Sparse (Fin 1613) := [(0, -12), (3, -20), (19, -280), (20, 30), (93, 120), (94, -15), (108, 80), (241, 160), (242, -240), (243, 800), (244, 160), (247, 80), (697, -240), (698, 880), (700, 480), (1047, -480), (1058, -480), (1059, 240), (1060, -240), (1226, 560), (1248, 720), (1250, 120), (1251, -65), (1319, -240), (1323, -480)]

theorem oldProjectionSound3303 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3303 =
      Integer.Sparse.eval oldProjection3303 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3303 oldProjection3303
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3303 hH))

def oldProjection3307 : Integer.Sparse (Fin 1613) := [(3, -2), (19, -16), (20, 2), (81, -48), (93, 12), (94, 9), (108, 8), (229, -48), (240, -24), (247, 8), (697, -24), (698, 24), (704, 8), (1047, -48), (1055, -48), (1058, -72), (1060, -24), (1227, 8), (1249, 72), (1250, 18), (1251, -1), (1319, -24), (1321, -48), (1388, -24), (1389, -24)]

theorem oldProjectionSound3307 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3307 =
      Integer.Sparse.eval oldProjection3307 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3307 oldProjection3307
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3307 hH))

def oldProjection3311 : Integer.Sparse (Fin 1613) := [(0, 8), (19, -60), (20, 5), (93, 60), (94, 100), (247, 160), (546, 720), (694, -720), (698, 240), (1047, -240), (1055, -960), (1058, -480), (1227, 240), (1250, 300), (1251, -165), (1319, -240), (1321, -240), (1388, -480), (1389, -240)]

theorem oldProjectionSound3311 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3311 =
      Integer.Sparse.eval oldProjection3311 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3311 oldProjection3311
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3311 hH))

def oldProjection3313 : Integer.Sparse (Fin 1613) := [(0, 1), (19, -4), (20, 1), (72, -48), (93, 6), (94, 2), (541, 144), (690, -48), (1044, -24), (1050, -48), (1221, -48), (1250, 24), (1251, -6), (1319, -48), (1321, -48), (1388, -48), (1389, -48)]

theorem oldProjectionSound3313 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3313 =
      Integer.Sparse.eval oldProjection3313 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3313 oldProjection3313
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3313 hH))

def oldProjection3314 : Integer.Sparse (Fin 1613) := [(0, -1), (3, -20), (19, -240), (20, 45), (37, -480), (81, -960), (93, 60), (94, 110), (104, 80), (229, -960), (240, -480), (241, 80), (243, 160), (285, 720), (293, 1440), (682, -480), (690, -240), (697, -480), (698, 240), (704, 320), (1040, -720), (1058, -480), (1060, -240), (1227, 80), (1250, 120), (1251, 10), (1321, -480), (1389, -480)]

theorem oldProjectionSound3314 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3314 =
      Integer.Sparse.eval oldProjection3314 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3314 oldProjection3314
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3314 hH))

def oldProjection3317 : Integer.Sparse (Fin 1613) := [(0, -1), (93, 20), (94, 5), (690, -160), (1050, -320), (1221, -160), (1250, -80), (1251, -90), (1266, 240)]

theorem oldProjectionSound3317 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3317 =
      Integer.Sparse.eval oldProjection3317 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 480 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3317 oldProjection3317
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3317 hH))

def oldProjection3318 : Integer.Sparse (Fin 1613) := [(0, -1), (72, -720), (94, 5), (690, -240), (758, 720), (864, 720), (1044, -240), (1050, -480), (1221, -240), (1250, 120), (1251, -70), (1266, 720)]

theorem oldProjectionSound3318 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3318 =
      Integer.Sparse.eval oldProjection3318 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3318 oldProjection3318
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3318 hH))

def oldProjection3319 : Integer.Sparse (Fin 1613) := [(0, 2), (19, -20), (20, 5), (93, 60), (682, -480), (690, -240), (1050, -240), (1114, 720), (1221, -480), (1250, 60), (1251, -35), (1319, -240), (1321, -480), (1388, -480), (1389, -240)]

theorem oldProjectionSound3319 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3319 =
      Integer.Sparse.eval oldProjection3319 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3319 oldProjection3319
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3319 hH))

def oldProjection3320 : Integer.Sparse (Fin 1613) := [(0, 1), (72, -240), (94, -5), (1050, -360), (1250, 30), (1251, -80)]

theorem oldProjectionSound3320 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3320 =
      Integer.Sparse.eval oldProjection3320 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 360 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3320 oldProjection3320
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3320 hH))

def oldProjection3326 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -60), (20, 5), (94, 30), (241, 160), (243, 320), (418, 720), (430, 1440), (682, -960), (697, -960), (698, 1120), (704, 320), (1050, -240), (1052, -960), (1059, 320), (1217, -720), (1221, -960), (1226, 320), (1227, 320), (1250, 60), (1251, -190), (1321, -240), (1389, -480)]

theorem oldProjectionSound3326 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3326 =
      Integer.Sparse.eval oldProjection3326 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3326 oldProjection3326
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3326 hH))

def oldProjection3328 : Integer.Sparse (Fin 1613) := [(0, 2), (19, -20), (20, 5), (93, 20), (94, 35), (418, 720), (682, -480), (690, -240), (1044, -160), (1050, -240), (1217, -240), (1221, -480), (1250, 60), (1251, -20), (1321, -240), (1389, -480)]

theorem oldProjectionSound3328 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3328 =
      Integer.Sparse.eval oldProjection3328 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 480 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3328 oldProjection3328
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3328 hH))

def oldProjection3331 : Integer.Sparse (Fin 1613) := [(0, 1), (19, -320), (20, 20), (38, -720), (42, 160), (94, 300), (241, 480), (243, 400), (247, 480), (697, -720), (698, 1440), (700, 1040), (701, 240), (704, 720), (1059, 480), (1227, 240), (1251, -65)]

theorem oldProjectionSound3331 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3331 =
      Integer.Sparse.eval oldProjection3331 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3331 oldProjection3331
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3331 hH))

def oldProjection3332 : Integer.Sparse (Fin 1613) := [(0, -4), (19, -80), (20, 5), (38, -720), (42, 160), (94, 60), (238, -720), (241, 480), (243, 880), (244, 240), (698, 1200), (700, 1360), (701, 240), (704, 480), (1059, 480), (1251, -5)]

theorem oldProjectionSound3332 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3332 =
      Integer.Sparse.eval oldProjection3332 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3332 oldProjection3332
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3332 hH))

def oldProjection3333 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -140), (20, 20), (42, 160), (94, -30), (241, 240), (243, 640), (698, 240), (700, 400), (704, 480), (1059, 240), (1251, 115)]

theorem oldProjectionSound3333 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3333 =
      Integer.Sparse.eval oldProjection3333 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3333 oldProjection3333
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3333 hH))

def oldProjection3341 : Integer.Sparse (Fin 1613) := [(0, -13), (19, -460), (20, 40), (81, -240), (88, 80), (94, 255), (228, -720), (241, 480), (243, 400), (247, 560), (326, 720), (548, 720), (698, 640), (704, 480), (1146, 720), (1226, 160), (1251, 180), (1331, 720)]

theorem oldProjectionSound3341 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3341 =
      Integer.Sparse.eval oldProjection3341 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3341 oldProjection3341
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3341 hH))

def oldProjection3342 : Integer.Sparse (Fin 1613) := [(0, -7), (19, -220), (20, 15), (94, 150), (228, -600), (241, 240), (243, 240), (247, 280), (326, 360), (698, 440), (704, 320), (1223, -120), (1225, 40), (1226, 120), (1227, 80), (1251, 90), (1331, 360)]

theorem oldProjectionSound3342 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3342 =
      Integer.Sparse.eval oldProjection3342 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3342 oldProjection3342
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3342 hH))

def oldProjection3344 : Integer.Sparse (Fin 1613) := [(0, -2), (19, -180), (20, 15), (88, 720), (94, -95), (241, 560), (243, 1280), (247, 80), (698, 320), (1003, 720), (1223, -240), (1225, 320), (1226, 720), (1251, -60)]

theorem oldProjectionSound3344 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3344 =
      Integer.Sparse.eval oldProjection3344 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3344 oldProjection3344
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3344 hH))

def oldProjection3345 : Integer.Sparse (Fin 1613) := [(0, 3), (19, -130), (20, 10), (94, 80), (241, 440), (243, 320), (247, 160), (326, 720), (698, 560), (704, 40), (1223, -120), (1225, 40), (1226, 160), (1227, 120), (1251, -75), (1331, 1440), (1356, 720)]

theorem oldProjectionSound3345 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3345 =
      Integer.Sparse.eval oldProjection3345 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3345 oldProjection3345
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3345 hH))

def oldProjection3346 : Integer.Sparse (Fin 1613) := [(0, -7), (19, -300), (20, 25), (94, 10), (228, -480), (241, 800), (243, 960), (247, 400), (698, 1040), (704, 240), (1223, -480), (1225, 240), (1226, 560), (1227, 240), (1251, -20), (1331, 720)]

theorem oldProjectionSound3346 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node3346 =
      Integer.Sparse.eval oldProjection3346 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value3346 oldProjection3346
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound3346 hH))

end NoFourMUBs.Step2.SOS.Normalization

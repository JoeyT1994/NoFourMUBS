import NoFourMUBs.Step2.SOS.NormalizationContext
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Sound30
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Sound31
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Sound32

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def oldProjection1974 : Integer.Sparse (Fin 1613) := [(19, 4), (20, -1), (94, -3), (243, -4), (698, -4), (704, -8), (796, -36), (1060, 12), (1223, 24), (1251, -2)]

theorem oldProjectionSound1974 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1974 =
      Integer.Sparse.eval oldProjection1974 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 72 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1974 oldProjection1974
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1974 hH))

def oldProjection1975 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 20), (94, 20), (698, -40), (700, -40), (806, -360), (1047, 120), (1219, 240), (1251, 15)]

theorem oldProjectionSound1975 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1975 =
      Integer.Sparse.eval oldProjection1975 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1975 oldProjection1975
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1975 hH))

def oldProjection1976 : Integer.Sparse (Fin 1613) := [(0, 1), (81, 48), (94, -7), (247, -32), (694, 48), (697, 96), (807, -144), (1251, -4)]

theorem oldProjectionSound1976 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1976 =
      Integer.Sparse.eval oldProjection1976 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1976 oldProjection1976
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1976 hH))

def oldProjection1977 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 60), (76, 480), (93, -60), (94, -60), (241, -80), (691, 240), (698, -240), (1251, -5), (1323, 480)]

theorem oldProjectionSound1977 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1977 =
      Integer.Sparse.eval oldProjection1977 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1977 oldProjection1977
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1977 hH))

def oldProjection1978 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 80), (20, -15), (93, -60), (94, 65), (243, -80), (691, 240), (698, -80), (700, -240), (704, -160), (1251, 15)]

theorem oldProjectionSound1978 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1978 =
      Integer.Sparse.eval oldProjection1978 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1978 oldProjection1978
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1978 hH))

def oldProjection1979 : Integer.Sparse (Fin 1613) := [(0, 3), (19, 40), (94, -50), (247, -160), (698, -80), (808, -720), (1251, -5), (1319, 240)]

theorem oldProjectionSound1979 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1979 =
      Integer.Sparse.eval oldProjection1979 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1979 oldProjection1979
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1979 hH))

def oldProjection1980 : Integer.Sparse (Fin 1613) := [(0, 3), (19, 40), (20, -5), (76, 480), (94, -15), (243, -80), (697, 240), (698, -160), (700, -80), (704, -80), (1058, 240), (1226, -80), (1250, -60), (1251, -5), (1323, 240)]

theorem oldProjectionSound1980 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1980 =
      Integer.Sparse.eval oldProjection1980 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1980 oldProjection1980
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1980 hH))

def oldProjection1981 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 60), (20, -15), (94, -35), (698, -160), (700, -80), (704, -80), (809, -720), (1251, -45), (1321, 240)]

theorem oldProjectionSound1981 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1981 =
      Integer.Sparse.eval oldProjection1981 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1981 oldProjection1981
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1981 hH))

def oldProjection1982 : Integer.Sparse (Fin 1613) := [(0, 1), (81, 48), (94, -10), (697, 96), (698, -64), (700, -32), (704, -16), (801, -144), (1059, -32), (1251, -3)]

theorem oldProjectionSound1982 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1982 =
      Integer.Sparse.eval oldProjection1982 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1982 oldProjection1982
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1982 hH))

def oldProjection1983 : Integer.Sparse (Fin 1613) := [(0, 4), (94, -35), (247, -80), (465, -720), (697, 720), (698, -80), (704, -80), (1103, -720), (1251, -35)]

theorem oldProjectionSound1983 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1983 =
      Integer.Sparse.eval oldProjection1983 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1983 oldProjection1983
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1983 hH))

def oldProjection1986 : Integer.Sparse (Fin 1613) := [(19, 12), (20, -3), (38, 48), (94, -1), (241, -16), (243, -48), (698, -16), (700, -16), (701, -16), (704, -48), (804, -144), (1040, 48), (1223, 48), (1225, -16), (1251, -6)]

theorem oldProjectionSound1986 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1986 =
      Integer.Sparse.eval oldProjection1986 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1986 oldProjection1986
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1986 hH))

def oldProjection1987 : Integer.Sparse (Fin 1613) := [(19, 32), (20, -7), (38, 48), (94, -14), (247, -16), (700, -32), (701, -32), (704, -48), (1040, 48), (1251, -15)]

theorem oldProjectionSound1987 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1987 =
      Integer.Sparse.eval oldProjection1987 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1987 oldProjection1987
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1987 hH))

def oldProjection1990 : Integer.Sparse (Fin 1613) := [(0, -1), (94, -15), (241, -160), (426, -720), (483, -720), (698, -240), (1055, 480), (1227, -80), (1251, 70)]

theorem oldProjectionSound1990 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1990 =
      Integer.Sparse.eval oldProjection1990 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1990 oldProjection1990
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1990 hH))

def oldProjection1991 : Integer.Sparse (Fin 1613) := [(228, 3), (287, -9), (288, -9), (298, -9), (698, -1), (1223, 3), (1226, -1), (1227, -1)]

theorem oldProjectionSound1991 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1991 =
      Integer.Sparse.eval oldProjection1991 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 18 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1991 oldProjection1991
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1991 hH))

def oldProjection1992 : Integer.Sparse (Fin 1613) := [(241, -1), (243, -2), (288, -9), (298, -9), (698, 1), (704, -1), (1014, -9)]

theorem oldProjectionSound1992 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1992 =
      Integer.Sparse.eval oldProjection1992 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 18 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1992 oldProjection1992
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1992 hH))

def oldProjection1993 : Integer.Sparse (Fin 1613) := [(94, -1), (241, -4), (426, -36), (698, -12), (1226, -12), (1227, -8), (1251, 1)]

theorem oldProjectionSound1993 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1993 =
      Integer.Sparse.eval oldProjection1993 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 72 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1993 oldProjection1993
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1993 hH))

def oldProjection1994 : Integer.Sparse (Fin 1613) := [(0, -1), (94, -5), (610, -180), (668, -180), (698, -20), (1055, 60), (1227, -20), (1251, 10)]

theorem oldProjectionSound1994 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1994 =
      Integer.Sparse.eval oldProjection1994 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 360 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1994 oldProjection1994
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1994 hH))

def oldProjection1995 : Integer.Sparse (Fin 1613) := [(0, -1), (426, -720), (668, -720), (698, -160), (1016, -720), (1059, -80), (1227, -80), (1251, -15)]

theorem oldProjectionSound1995 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1995 =
      Integer.Sparse.eval oldProjection1995 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1995 oldProjection1995
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1995 hH))

def oldProjection1996 : Integer.Sparse (Fin 1613) := [(0, -1), (426, -720), (666, -720), (698, -80), (890, -720), (1227, 80), (1251, 25)]

theorem oldProjectionSound1996 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1996 =
      Integer.Sparse.eval oldProjection1996 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1996 oldProjection1996
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1996 hH))

def oldProjection1997 : Integer.Sparse (Fin 1613) := [(0, -1), (423, -720), (668, -720), (698, -160), (865, -720), (1059, -80), (1227, -80), (1251, -15)]

theorem oldProjectionSound1997 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1997 =
      Integer.Sparse.eval oldProjection1997 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1997 oldProjection1997
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1997 hH))

def oldProjection1998 : Integer.Sparse (Fin 1613) := [(0, 1), (94, -5), (864, -180), (1050, 120), (1221, 120), (1251, 10)]

theorem oldProjectionSound1998 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1998 =
      Integer.Sparse.eval oldProjection1998 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 360 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1998 oldProjection1998
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1998 hH))

def oldProjection1999 : Integer.Sparse (Fin 1613) := [(0, -4), (94, -5), (698, -320), (865, -720), (1050, 240), (1059, -240), (1221, 240), (1227, -80), (1251, -5)]

theorem oldProjectionSound1999 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1999 =
      Integer.Sparse.eval oldProjection1999 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value1999 oldProjection1999
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound1999 hH))

def oldProjection2000 : Integer.Sparse (Fin 1613) := [(0, 3), (94, -10), (869, -720), (1050, 240), (1221, 480), (1251, -5), (1389, 240)]

theorem oldProjectionSound2000 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2000 =
      Integer.Sparse.eval oldProjection2000 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2000 oldProjection2000
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2000 hH))

def oldProjection2001 : Integer.Sparse (Fin 1613) := [(0, 1), (698, -40), (867, -90), (1050, 30), (1251, 15)]

theorem oldProjectionSound2001 {H : CMatrix} (hH : IsHadamard H) :
    (180 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2001 =
      Integer.Sparse.eval oldProjection2001 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 180 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2001 oldProjection2001
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2001 hH))

def oldProjection2002 : Integer.Sparse (Fin 1613) := [(0, 1), (427, -360), (698, -80), (865, -360), (890, -360), (1059, -40), (1221, 120), (1227, -40), (1251, 15)]

theorem oldProjectionSound2002 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2002 =
      Integer.Sparse.eval oldProjection2002 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2002 oldProjection2002
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2002 hH))

def oldProjection2003 : Integer.Sparse (Fin 1613) := [(0, -1), (698, -80), (869, -180), (1050, 60), (1059, -80), (1227, -40), (1251, 45)]

theorem oldProjectionSound2003 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2003 =
      Integer.Sparse.eval oldProjection2003 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 360 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2003 oldProjection2003
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2003 hH))

def oldProjection2004 : Integer.Sparse (Fin 1613) := [(0, 3), (427, -720), (674, -720), (698, -80), (867, -720), (1059, 80), (1251, 45)]

theorem oldProjectionSound2004 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2004 =
      Integer.Sparse.eval oldProjection2004 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2004 oldProjection2004
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2004 hH))

def oldProjection2007 : Integer.Sparse (Fin 1613) := [(0, 1), (94, -10), (426, -720), (698, -160), (700, -80), (1059, -80), (1219, 240), (1226, -80), (1227, -160), (1251, 5)]

theorem oldProjectionSound2007 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2007 =
      Integer.Sparse.eval oldProjection2007 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2007 oldProjection2007
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2007 hH))

def oldProjection2009 : Integer.Sparse (Fin 1613) := [(0, 1), (94, 15), (243, -160), (493, -720), (698, -240), (700, -160), (782, -720), (1058, 480), (1059, -160), (1226, -80), (1251, 10)]

theorem oldProjectionSound2009 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2009 =
      Integer.Sparse.eval oldProjection2009 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2009 oldProjection2009
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2009 hH))

def oldProjection2010 : Integer.Sparse (Fin 1613) := [(19, 4), (20, -1), (42, -48), (94, 3), (243, -32), (244, -16), (312, -144), (698, -16), (700, -16), (701, -16), (704, -32), (1251, -4)]

theorem oldProjectionSound2010 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2010 =
      Integer.Sparse.eval oldProjection2010 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2010 oldProjection2010
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2010 hH))

def oldProjection2011 : Integer.Sparse (Fin 1613) := [(19, 4), (20, -1), (40, 48), (42, -32), (105, -16), (241, -16), (243, -16), (311, -144), (691, 48), (698, -16), (700, -48), (701, -16), (704, -32), (1251, -3)]

theorem oldProjectionSound2011 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2011 =
      Integer.Sparse.eval oldProjection2011 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2011 oldProjection2011
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2011 hH))

def oldProjection2013 : Integer.Sparse (Fin 1613) := [(0, -1), (94, -1), (698, -24), (865, -72), (1055, 24), (1059, -8), (1227, -16), (1251, -4)]

theorem oldProjectionSound2013 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2013 =
      Integer.Sparse.eval oldProjection2013 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2013 oldProjection2013
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2013 hH))

def oldProjection2014 : Integer.Sparse (Fin 1613) := [(0, -1), (94, -5), (869, -180), (1388, 60)]

theorem oldProjectionSound2014 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2014 =
      Integer.Sparse.eval oldProjection2014 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 360 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2014 oldProjection2014
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2014 hH))

def oldProjection2015 : Integer.Sparse (Fin 1613) := [(0, -1), (698, -320), (890, -720), (1059, -80), (1227, -160), (1251, 105)]

theorem oldProjectionSound2015 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2015 =
      Integer.Sparse.eval oldProjection2015 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2015 oldProjection2015
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2015 hH))

def oldProjection2017 : Integer.Sparse (Fin 1613) := [(94, -1), (1221, 24), (1251, -5), (1389, 48)]

theorem oldProjectionSound2017 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2017 =
      Integer.Sparse.eval oldProjection2017 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2017 oldProjection2017
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2017 hH))

def oldProjection2018 : Integer.Sparse (Fin 1613) := [(0, -17), (698, -320), (1059, -160), (1221, 240), (1227, -320), (1251, 145), (1389, 240)]

theorem oldProjectionSound2018 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2018 =
      Integer.Sparse.eval oldProjection2018 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2018 oldProjection2018
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2018 hH))

def oldProjection2019 : Integer.Sparse (Fin 1613) := [(0, 1), (618, -180), (698, -100), (700, -20), (919, -180), (1058, 60), (1059, -60), (1227, -40), (1251, 15)]

theorem oldProjectionSound2019 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2019 =
      Integer.Sparse.eval oldProjection2019 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 360 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2019 oldProjection2019
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2019 hH))

def oldProjection2020 : Integer.Sparse (Fin 1613) := [(0, 1), (90, -240), (94, -5), (243, -80), (698, -240), (700, -80), (782, -720), (1059, -80), (1226, -160), (1251, -10)]

theorem oldProjectionSound2020 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2020 =
      Integer.Sparse.eval oldProjection2020 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2020 oldProjection2020
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2020 hH))

def oldProjection2021 : Integer.Sparse (Fin 1613) := [(0, -1), (698, -240), (1059, -120), (1221, 120), (1227, -80), (1251, 105)]

theorem oldProjectionSound2021 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2021 =
      Integer.Sparse.eval oldProjection2021 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2021 oldProjection2021
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2021 hH))

def oldProjection2022 : Integer.Sparse (Fin 1613) := [(0, 2), (81, 720), (94, -15), (698, -320), (700, -160), (919, -720), (1058, 240), (1059, -160), (1227, -80), (1251, -5), (1389, 240)]

theorem oldProjectionSound2022 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2022 =
      Integer.Sparse.eval oldProjection2022 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2022 oldProjection2022
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2022 hH))

def oldProjection2023 : Integer.Sparse (Fin 1613) := [(0, -1), (698, -160), (890, -360), (1059, -80), (1221, 120), (1227, -40), (1251, 65)]

theorem oldProjectionSound2023 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2023 =
      Integer.Sparse.eval oldProjection2023 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2023 oldProjection2023
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2023 hH))

def oldProjection2024 : Integer.Sparse (Fin 1613) := [(19, 4), (94, -3), (104, -16), (105, -16), (156, -144), (241, -16), (243, -16), (690, 48), (691, 48), (694, 48), (698, -32), (1047, 48), (1251, 5)]

theorem oldProjectionSound2024 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2024 =
      Integer.Sparse.eval oldProjection2024 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2024 oldProjection2024
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2024 hH))

def oldProjection2028 : Integer.Sparse (Fin 1613) := [(19, 2), (94, -1), (200, -72), (241, -16), (243, -8), (478, -72), (484, -72), (698, -8), (1052, 24), (1251, 1)]

theorem oldProjectionSound2028 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2028 =
      Integer.Sparse.eval oldProjection2028 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2028 oldProjection2028
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2028 hH))

def oldProjection2029 : Integer.Sparse (Fin 1613) := [(94, -1), (156, -144), (200, -144), (241, -16), (243, -16), (508, -144), (698, 16), (1226, -16), (1251, 3)]

theorem oldProjectionSound2029 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2029 =
      Integer.Sparse.eval oldProjection2029 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2029 oldProjection2029
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2029 hH))

def oldProjection2032 : Integer.Sparse (Fin 1613) := [(0, 2), (19, 40), (93, -60), (94, -25), (241, -160), (691, 720), (694, 480), (698, -160), (1050, 240), (1250, -60), (1251, -15)]

theorem oldProjectionSound2032 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2032 =
      Integer.Sparse.eval oldProjection2032 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2032 oldProjection2032
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2032 hH))

def oldProjection2033 : Integer.Sparse (Fin 1613) := [(38, 3), (81, 3), (229, 3), (238, 3), (243, -1), (244, -1), (289, -9), (698, -2), (700, -4), (701, -1), (704, -1), (1040, 3), (1059, -2)]

theorem oldProjectionSound2033 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2033 =
      Integer.Sparse.eval oldProjection2033 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 18 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2033 oldProjection2033
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2033 hH))

def oldProjection2034 : Integer.Sparse (Fin 1613) := [(94, -1), (105, -16), (241, -32), (243, -32), (691, 48), (698, -32), (911, -144), (1047, 48), (1050, 48), (1055, 48), (1058, 96), (1226, -16), (1251, 3)]

theorem oldProjectionSound2034 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2034 =
      Integer.Sparse.eval oldProjection2034 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2034 oldProjection2034
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2034 hH))

def oldProjection2035 : Integer.Sparse (Fin 1613) := [(0, 3), (94, -20), (241, -160), (691, 240), (694, 240), (698, -240), (1050, 480), (1055, 480), (1058, 240), (1227, -80), (1250, -60), (1251, 5)]

theorem oldProjectionSound2035 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2035 =
      Integer.Sparse.eval oldProjection2035 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2035 oldProjection2035
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2035 hH))

def oldProjection2036 : Integer.Sparse (Fin 1613) := [(0, 1), (666, -360), (698, -80), (789, -360), (1050, 120), (1059, -80), (1128, -360), (1251, 15)]

theorem oldProjectionSound2036 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2036 =
      Integer.Sparse.eval oldProjection2036 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2036 oldProjection2036
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2036 hH))

def oldProjection2037 : Integer.Sparse (Fin 1613) := [(19, 8), (20, -1), (94, 7), (105, -16), (241, -16), (243, -32), (691, 48), (698, -16), (700, -16), (914, -144), (1047, 48), (1052, 48), (1219, 48), (1251, 4)]

theorem oldProjectionSound2037 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2037 =
      Integer.Sparse.eval oldProjection2037 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2037 oldProjection2037
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2037 hH))

def oldProjection2038 : Integer.Sparse (Fin 1613) := [(19, 4), (20, -1), (94, 2), (105, -4), (241, -4), (243, 12), (244, -4), (700, -4), (738, -36), (1251, -1)]

theorem oldProjectionSound2038 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2038 =
      Integer.Sparse.eval oldProjection2038 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 72 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2038 oldProjection2038
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2038 hH))

def oldProjection2040 : Integer.Sparse (Fin 1613) := [(0, -1), (94, -5), (668, -720), (698, -80), (775, -720), (1055, 240), (1140, -720), (1227, -80), (1251, 40)]

theorem oldProjectionSound2040 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2040 =
      Integer.Sparse.eval oldProjection2040 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2040 oldProjection2040
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2040 hH))

def oldProjection2041 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 20), (94, -15), (241, -80), (247, -80), (484, -720), (691, 240), (694, 240), (697, 240), (698, -160), (1052, 240), (1059, -80), (1251, 40)]

theorem oldProjectionSound2041 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2041 =
      Integer.Sparse.eval oldProjection2041 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2041 oldProjection2041
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2041 hH))

def oldProjection2042 : Integer.Sparse (Fin 1613) := [(0, 3), (19, 40), (94, -80), (241, -160), (243, -160), (691, 240), (694, 240), (698, -240), (700, -240), (704, -160), (1251, -35)]

theorem oldProjectionSound2042 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2042 =
      Integer.Sparse.eval oldProjection2042 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2042 oldProjection2042
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2042 hH))

def oldProjection2043 : Integer.Sparse (Fin 1613) := [(0, 3), (19, 20), (94, -40), (241, -160), (243, -80), (247, -80), (484, -720), (698, -240), (700, -80), (1050, 240), (1052, 240), (1055, 240), (1219, 240), (1251, -15)]

theorem oldProjectionSound2043 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2043 =
      Integer.Sparse.eval oldProjection2043 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2043 oldProjection2043
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2043 hH))

def oldProjection2044 : Integer.Sparse (Fin 1613) := [(0, 1), (666, -720), (668, -720), (697, 240), (698, -80), (919, -720), (1227, -80), (1251, 15), (1389, 240)]

theorem oldProjectionSound2044 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2044 =
      Integer.Sparse.eval oldProjection2044 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2044 oldProjection2044
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2044 hH))

def oldProjection2047 : Integer.Sparse (Fin 1613) := [(19, 4), (94, -1), (228, 48), (229, 24), (241, -24), (243, -16), (698, -24), (704, -16), (717, -72), (1251, -1)]

theorem oldProjectionSound2047 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2047 =
      Integer.Sparse.eval oldProjection2047 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2047 oldProjection2047
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2047 hH))

def oldProjection2048 : Integer.Sparse (Fin 1613) := [(0, 3), (94, -55), (243, -80), (479, -720), (700, -80), (704, -160), (1251, -30), (1321, 240)]

theorem oldProjectionSound2048 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2048 =
      Integer.Sparse.eval oldProjection2048 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2048 oldProjection2048
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2048 hH))

def oldProjection2049 : Integer.Sparse (Fin 1613) := [(0, 1), (94, -5), (243, -40), (508, -360), (697, 240), (698, -40), (700, -40), (704, -40), (1052, 120), (1059, -40), (1219, 120), (1227, -40), (1251, 10)]

theorem oldProjectionSound2049 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2049 =
      Integer.Sparse.eval oldProjection2049 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2049 oldProjection2049
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2049 hH))

def oldProjection2050 : Integer.Sparse (Fin 1613) := [(0, 3), (674, -720), (698, -240), (919, -720), (1059, -80), (1142, -720), (1227, -160), (1251, 45)]

theorem oldProjectionSound2050 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2050 =
      Integer.Sparse.eval oldProjection2050 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2050 oldProjection2050
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2050 hH))

def oldProjection2051 : Integer.Sparse (Fin 1613) := [(19, 16), (20, -1), (94, -6), (228, 48), (229, 48), (238, 48), (241, -48), (243, -64), (244, -16), (247, -16), (698, -32), (700, -16), (704, -16), (730, -144), (1251, -5)]

theorem oldProjectionSound2051 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2051 =
      Integer.Sparse.eval oldProjection2051 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2051 oldProjection2051
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2051 hH))

def oldProjection2053 : Integer.Sparse (Fin 1613) := [(19, 28), (20, -3), (94, -8), (229, 48), (238, 48), (241, -48), (243, -48), (244, -32), (247, -16), (698, -32), (700, -32), (704, -16), (1251, -9)]

theorem oldProjectionSound2053 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2053 =
      Integer.Sparse.eval oldProjection2053 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 288 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2053 oldProjection2053
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2053 hH))

def oldProjection2055 : Integer.Sparse (Fin 1613) := [(94, -1), (698, -16), (869, -72), (1055, 24), (1059, -8), (1227, -16), (1251, 11)]

theorem oldProjectionSound2055 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2055 =
      Integer.Sparse.eval oldProjection2055 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2055 oldProjection2055
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2055 hH))

def oldProjection2056 : Integer.Sparse (Fin 1613) := [(0, 3), (94, -10), (698, -160), (956, -720), (1055, 240), (1227, -80), (1251, 115)]

theorem oldProjectionSound2056 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node2056 =
      Integer.Sparse.eval oldProjection2056 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1440 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value2056 oldProjection2056
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound2056 hH))

end NoFourMUBs.Step2.SOS.Normalization

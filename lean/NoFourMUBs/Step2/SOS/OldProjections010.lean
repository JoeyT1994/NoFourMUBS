import NoFourMUBs.Step2.SOS.NormalizationContext
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Sound10
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Sound11
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Sound12

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def oldProjection699 : Integer.Sparse (Fin 1613) := [(94, -1), (243, 2), (698, 2), (1052, -6), (1226, 4), (1251, -1)]

theorem oldProjectionSound699 {H : CMatrix} (hH : IsHadamard H) :
    (12 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node699 =
      Integer.Sparse.eval oldProjection699 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 12 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value699 oldProjection699
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound699 hH))

def oldProjection700 : Integer.Sparse (Fin 1613) := [(20, 1), (94, 2), (243, 16), (1217, -24), (1225, 8), (1226, 8), (1251, 1)]

theorem oldProjectionSound700 {H : CMatrix} (hH : IsHadamard H) :
    (48 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node700 =
      Integer.Sparse.eval oldProjection700 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 48 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value700 oldProjection700
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound700 hH))

def oldProjection701 : Integer.Sparse (Fin 1613) := [(19, -4), (20, 1), (94, -1), (241, 16), (243, 32), (698, 16), (1223, -48), (1225, 16), (1226, 16), (1251, -2)]

theorem oldProjectionSound701 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node701 =
      Integer.Sparse.eval oldProjection701 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 96 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value701 oldProjection701
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound701 hH))

def oldProjection703 : Integer.Sparse (Fin 1613) := [(0, -1), (698, 80), (1055, -120), (1219, -120), (1227, 80), (1251, -15)]

theorem oldProjectionSound703 {H : CMatrix} (hH : IsHadamard H) :
    (240 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node703 =
      Integer.Sparse.eval oldProjection703 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 240 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value703 oldProjection703
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound703 hH))

def oldProjection704 : Integer.Sparse (Fin 1613) := [(698, 2), (1059, 2), (1221, -3), (1251, -1)]

theorem oldProjectionSound704 {H : CMatrix} (hH : IsHadamard H) :
    (6 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node704 =
      Integer.Sparse.eval oldProjection704 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 6 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value704 oldProjection704
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound704 hH))

def oldProjection705 : Integer.Sparse (Fin 1613) := [(94, 1), (698, 48), (1059, 16), (1226, 16), (1227, 32), (1251, -11)]

theorem oldProjectionSound705 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node705 =
      Integer.Sparse.eval oldProjection705 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 96 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value705 oldProjection705
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound705 hH))

def oldProjection706 : Integer.Sparse (Fin 1613) := [(0, -1), (94, 5), (698, 80), (1221, -120), (1226, 40), (1227, 40), (1251, 10)]

theorem oldProjectionSound706 {H : CMatrix} (hH : IsHadamard H) :
    (240 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node706 =
      Integer.Sparse.eval oldProjection706 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 240 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value706 oldProjection706
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound706 hH))

def oldProjection707 : Integer.Sparse (Fin 1613) := [(243, 2), (698, 2), (704, 1), (1223, -3), (1225, 1), (1226, 2), (1227, 1)]

theorem oldProjectionSound707 {H : CMatrix} (hH : IsHadamard H) :
    (6 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node707 =
      Integer.Sparse.eval oldProjection707 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 6 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value707 oldProjection707
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound707 hH))

def oldProjection708 : Integer.Sparse (Fin 1613) := [(0, 1), (94, 15), (698, 240), (1226, 160), (1227, 160), (1251, -30)]

theorem oldProjectionSound708 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node708 =
      Integer.Sparse.eval oldProjection708 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 480 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value708 oldProjection708
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound708 hH))

def oldProjection709 : Integer.Sparse (Fin 1613) := [(0, 13), (94, 5), (698, 80), (1227, 160), (1251, -60)]

theorem oldProjectionSound709 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node709 =
      Integer.Sparse.eval oldProjection709 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 480 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value709 oldProjection709
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound709 hH))

def oldProjection710 : Integer.Sparse (Fin 1613) := [(0, 1), (698, 160), (1226, 80), (1251, -25)]

theorem oldProjectionSound710 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node710 =
      Integer.Sparse.eval oldProjection710 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 480 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value710 oldProjection710
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound710 hH))

def oldProjection711 : Integer.Sparse (Fin 1613) := [(0, 9), (1227, 80), (1251, -65)]

theorem oldProjectionSound711 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node711 =
      Integer.Sparse.eval oldProjection711 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 480 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value711 oldProjection711
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound711 hH))

def oldProjection712 : Integer.Sparse (Fin 1613) := [(1231, 1)]

theorem oldProjectionSound712 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node712 =
      Integer.Sparse.eval oldProjection712 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value712 oldProjection712
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound712 hH))

def oldProjection713 : Integer.Sparse (Fin 1613) := [(1248, 1)]

theorem oldProjectionSound713 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node713 =
      Integer.Sparse.eval oldProjection713 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value713 oldProjection713
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound713 hH))

def oldProjection714 : Integer.Sparse (Fin 1613) := [(1249, 1)]

theorem oldProjectionSound714 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node714 =
      Integer.Sparse.eval oldProjection714 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value714 oldProjection714
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound714 hH))

def oldProjection717 : Integer.Sparse (Fin 1613) := [(0, 9), (19, -40), (20, 5), (1250, 60), (1251, -10)]

theorem oldProjectionSound717 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node717 =
      Integer.Sparse.eval oldProjection717 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 120 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value717 oldProjection717
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound717 hH))

def oldProjection718 : Integer.Sparse (Fin 1613) := [(1252, 1)]

theorem oldProjectionSound718 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node718 =
      Integer.Sparse.eval oldProjection718 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value718 oldProjection718
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound718 hH))

def oldProjection719 : Integer.Sparse (Fin 1613) := [(1266, 1)]

theorem oldProjectionSound719 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node719 =
      Integer.Sparse.eval oldProjection719 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value719 oldProjection719
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound719 hH))

def oldProjection720 : Integer.Sparse (Fin 1613) := [(1270, 1)]

theorem oldProjectionSound720 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node720 =
      Integer.Sparse.eval oldProjection720 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value720 oldProjection720
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound720 hH))

def oldProjection721 : Integer.Sparse (Fin 1613) := [(3, -8), (19, -16), (20, 3), (94, 6), (246, 16), (703, 16), (704, 16), (1251, 3), (1278, -48)]

theorem oldProjectionSound721 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node721 =
      Integer.Sparse.eval oldProjection721 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 96 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value721 oldProjection721
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound721 hH))

def oldProjection722 : Integer.Sparse (Fin 1613) := [(3, -8), (4, 1), (19, -8), (20, -1), (94, -1), (106, 16), (243, 16), (703, 32), (1251, 1)]

theorem oldProjectionSound722 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node722 =
      Integer.Sparse.eval oldProjection722 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 96 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value722 oldProjection722
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound722 hH))

def oldProjection725 : Integer.Sparse (Fin 1613) := [(81, -1), (1040, -1), (1052, -1)]

theorem oldProjectionSound725 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node725 =
      Integer.Sparse.eval oldProjection725 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 3 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value725 oldProjection725
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound725 hH))

def oldProjection726 : Integer.Sparse (Fin 1613) := [(38, -3), (698, 1), (700, 3), (1059, 2)]

theorem oldProjectionSound726 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node726 =
      Integer.Sparse.eval oldProjection726 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 9 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value726 oldProjection726
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound726 hH))

def oldProjection727 : Integer.Sparse (Fin 1613) := [(72, -48), (94, -3), (243, 16), (700, 16), (1040, -48), (1251, 1)]

theorem oldProjectionSound727 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node727 =
      Integer.Sparse.eval oldProjection727 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value727 oldProjection727
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound727 hH))

def oldProjection728 : Integer.Sparse (Fin 1613) := [(81, -1), (229, -1), (1058, -1)]

theorem oldProjectionSound728 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node728 =
      Integer.Sparse.eval oldProjection728 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 3 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value728 oldProjection728
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound728 hH))

def oldProjection729 : Integer.Sparse (Fin 1613) := [(72, -24), (94, 1), (229, -24), (700, 16), (1251, 1)]

theorem oldProjectionSound729 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node729 =
      Integer.Sparse.eval oldProjection729 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 72 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value729 oldProjection729
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound729 hH))

def oldProjection730 : Integer.Sparse (Fin 1613) := [(228, -3), (698, 2), (1226, 2), (1227, 2)]

theorem oldProjectionSound730 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node730 =
      Integer.Sparse.eval oldProjection730 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 9 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value730 oldProjection730
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound730 hH))

def oldProjection731 : Integer.Sparse (Fin 1613) := [(0, -1), (81, -240), (94, 15), (228, -240), (698, 80), (1251, 20)]

theorem oldProjectionSound731 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node731 =
      Integer.Sparse.eval oldProjection731 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value731 oldProjection731
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound731 hH))

def oldProjection732 : Integer.Sparse (Fin 1613) := [(3, -4), (19, -12), (20, 1), (94, -5), (108, 16), (1251, -2)]

theorem oldProjectionSound732 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node732 =
      Integer.Sparse.eval oldProjection732 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 96 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value732 oldProjection732
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound732 hH))

def oldProjection733 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -40), (20, 5), (94, 25), (108, 80), (247, 80), (1251, 25)]

theorem oldProjectionSound733 {H : CMatrix} (hH : IsHadamard H) :
    (240 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node733 =
      Integer.Sparse.eval oldProjection733 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 240 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value733 oldProjection733
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound733 hH))

def oldProjection734 : Integer.Sparse (Fin 1613) := [(3, -4), (20, -3), (94, 10), (105, 16), (243, 16), (1251, 1)]

theorem oldProjectionSound734 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node734 =
      Integer.Sparse.eval oldProjection734 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 96 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value734 oldProjection734
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound734 hH))

def oldProjection735 : Integer.Sparse (Fin 1613) := [(3, -4), (19, -10), (20, 2), (94, 3), (108, 16), (247, 8), (1251, 3)]

theorem oldProjectionSound735 {H : CMatrix} (hH : IsHadamard H) :
    (48 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node735 =
      Integer.Sparse.eval oldProjection735 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 48 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value735 oldProjection735
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound735 hH))

def oldProjection736 : Integer.Sparse (Fin 1613) := [(19, -6), (20, -1), (94, -2), (704, 8), (1251, 1)]

theorem oldProjectionSound736 {H : CMatrix} (hH : IsHadamard H) :
    (48 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node736 =
      Integer.Sparse.eval oldProjection736 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 48 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value736 oldProjection736
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound736 hH))

def oldProjection737 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -40), (20, 5), (94, 20), (247, 40), (704, 40), (1251, 20)]

theorem oldProjectionSound737 {H : CMatrix} (hH : IsHadamard H) :
    (240 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node737 =
      Integer.Sparse.eval oldProjection737 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 240 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value737 oldProjection737
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound737 hH))

def oldProjection740 : Integer.Sparse (Fin 1613) := [(19, -2), (20, -3), (243, 8), (1225, 8), (1251, 1)]

theorem oldProjectionSound740 {H : CMatrix} (hH : IsHadamard H) :
    (48 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node740 =
      Integer.Sparse.eval oldProjection740 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 48 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value740 oldProjection740
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound740 hH))

def oldProjection741 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -80), (20, 15), (94, 55), (243, 80), (698, 80), (704, 160), (1251, 45)]

theorem oldProjectionSound741 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node741 =
      Integer.Sparse.eval oldProjection741 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 480 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value741 oldProjection741
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound741 hH))

def oldProjection742 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -40), (20, 5), (94, 5), (243, 80), (698, 80), (704, 160), (1251, 5)]

theorem oldProjectionSound742 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node742 =
      Integer.Sparse.eval oldProjection742 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 480 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value742 oldProjection742
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound742 hH))

def oldProjection743 : Integer.Sparse (Fin 1613) := [(20, 1), (94, 2), (704, 8), (1223, -24), (1251, 1)]

theorem oldProjectionSound743 {H : CMatrix} (hH : IsHadamard H) :
    (48 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node743 =
      Integer.Sparse.eval oldProjection743 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 48 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value743 oldProjection743
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound743 hH))

def oldProjection744 : Integer.Sparse (Fin 1613) := [(19, -1), (94, -1), (243, 4), (1225, 2), (1226, 2)]

theorem oldProjectionSound744 {H : CMatrix} (hH : IsHadamard H) :
    (12 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node744 =
      Integer.Sparse.eval oldProjection744 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 12 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value744 oldProjection744
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound744 hH))

def oldProjection745 : Integer.Sparse (Fin 1613) := [(4, 1), (20, -9), (94, -9), (106, 16), (243, 16), (1225, 32), (1251, 1)]

theorem oldProjectionSound745 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node745 =
      Integer.Sparse.eval oldProjection745 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 96 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value745 oldProjection745
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound745 hH))

def oldProjection746 : Integer.Sparse (Fin 1613) := [(0, -1), (3, -20), (4, 5), (19, -40), (20, -10), (94, -25), (1251, -5)]

theorem oldProjectionSound746 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node746 =
      Integer.Sparse.eval oldProjection746 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 480 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value746 oldProjection746
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound746 hH))

def oldProjection747 : Integer.Sparse (Fin 1613) := [(3, -4), (4, 1), (19, -4), (20, -5), (94, 1), (1251, -1)]

theorem oldProjectionSound747 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node747 =
      Integer.Sparse.eval oldProjection747 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 96 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value747 oldProjection747
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound747 hH))

def oldProjection749 : Integer.Sparse (Fin 1613) := [(0, -1), (19, 20), (20, -5), (94, -30), (1251, -20)]

theorem oldProjectionSound749 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node749 =
      Integer.Sparse.eval oldProjection749 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 480 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value749 oldProjection749
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound749 hH))

def oldProjection750 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -40), (94, 15), (104, 80), (108, 240), (247, 160), (1251, 20)]

theorem oldProjectionSound750 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node750 =
      Integer.Sparse.eval oldProjection750 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value750 oldProjection750
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound750 hH))

def oldProjection751 : Integer.Sparse (Fin 1613) := [(19, -8), (94, 3), (104, 32), (105, 16), (108, 16), (241, 32), (1251, -1)]

theorem oldProjectionSound751 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node751 =
      Integer.Sparse.eval oldProjection751 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value751 oldProjection751
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound751 hH))

def oldProjection752 : Integer.Sparse (Fin 1613) := [(19, -4), (23, -24), (94, 1), (104, 8), (108, 8), (241, 8), (247, 8), (1251, 1)]

theorem oldProjectionSound752 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node752 =
      Integer.Sparse.eval oldProjection752 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 72 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value752 oldProjection752
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound752 hH))

def oldProjection753 : Integer.Sparse (Fin 1613) := [(23, -3), (102, -3), (241, 1), (243, 1), (698, 1)]

theorem oldProjectionSound753 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node753 =
      Integer.Sparse.eval oldProjection753 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 9 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value753 oldProjection753
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound753 hH))

def oldProjection754 : Integer.Sparse (Fin 1613) := [(104, 2), (105, 2), (241, -1)]

theorem oldProjectionSound754 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node754 =
      Integer.Sparse.eval oldProjection754 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 9 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value754 oldProjection754
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound754 hH))

def oldProjection755 : Integer.Sparse (Fin 1613) := [(108, 4), (247, -1)]

theorem oldProjectionSound755 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node755 =
      Integer.Sparse.eval oldProjection755 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 9 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value755 oldProjection755
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound755 hH))

def oldProjection756 : Integer.Sparse (Fin 1613) := [(81, -1), (228, -1), (686, -1)]

theorem oldProjectionSound756 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node756 =
      Integer.Sparse.eval oldProjection756 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 3 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value756 oldProjection756
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound756 hH))

def oldProjection757 : Integer.Sparse (Fin 1613) := [(81, -1), (229, -1), (1040, -1)]

theorem oldProjectionSound757 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node757 =
      Integer.Sparse.eval oldProjection757 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 3 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value757 oldProjection757
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound757 hH))

def oldProjection758 : Integer.Sparse (Fin 1613) := [(19, -4), (94, 1), (243, 16), (682, -48), (704, 16), (1040, -48), (1251, 1)]

theorem oldProjectionSound758 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node758 =
      Integer.Sparse.eval oldProjection758 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value758 oldProjection758
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound758 hH))

def oldProjection759 : Integer.Sparse (Fin 1613) := [(82, -3), (90, 1), (686, -3), (698, 1), (1226, 1)]

theorem oldProjectionSound759 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node759 =
      Integer.Sparse.eval oldProjection759 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 9 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value759 oldProjection759
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound759 hH))

def oldProjection760 : Integer.Sparse (Fin 1613) := [(19, -4), (20, 1), (94, -1), (104, 16), (105, 16), (241, 32), (243, 16), (698, 16), (1251, -2)]

theorem oldProjectionSound760 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node760 =
      Integer.Sparse.eval oldProjection760 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value760 oldProjection760
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound760 hH))

def oldProjection761 : Integer.Sparse (Fin 1613) := [(0, -2), (19, -40), (20, 5), (94, 30), (108, 160), (247, 160), (1251, 35)]

theorem oldProjectionSound761 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node761 =
      Integer.Sparse.eval oldProjection761 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value761 oldProjection761
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound761 hH))

def oldProjection762 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -60), (94, 30), (104, 80), (108, 80), (247, 80), (704, 80), (1251, 35)]

theorem oldProjectionSound762 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node762 =
      Integer.Sparse.eval oldProjection762 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value762 oldProjection762
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound762 hH))

def oldProjection763 : Integer.Sparse (Fin 1613) := [(19, -2), (94, 1), (104, 8), (105, 8), (241, 16), (243, 8), (698, 8), (704, 8), (1251, -1)]

theorem oldProjectionSound763 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node763 =
      Integer.Sparse.eval oldProjection763 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 72 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value763 oldProjection763
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound763 hH))

def oldProjection764 : Integer.Sparse (Fin 1613) := [(19, -12), (20, 1), (94, 2), (104, 16), (108, 16), (241, 16), (1251, -3)]

theorem oldProjectionSound764 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node764 =
      Integer.Sparse.eval oldProjection764 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value764 oldProjection764
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound764 hH))

def oldProjection765 : Integer.Sparse (Fin 1613) := [(42, 1), (241, 1), (243, 2), (698, 2), (700, 2), (1059, 1)]

theorem oldProjectionSound765 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node765 =
      Integer.Sparse.eval oldProjection765 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 9 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value765 oldProjection765
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound765 hH))

def oldProjection766 : Integer.Sparse (Fin 1613) := [(0, -3), (19, -40), (94, 40), (247, 80), (704, 80), (1251, 35)]

theorem oldProjectionSound766 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node766 =
      Integer.Sparse.eval oldProjection766 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value766 oldProjection766
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound766 hH))

def oldProjection767 : Integer.Sparse (Fin 1613) := [(19, -8), (20, 1), (94, 6), (698, 16), (700, 16), (701, 16), (704, 32), (1251, 5)]

theorem oldProjectionSound767 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node767 =
      Integer.Sparse.eval oldProjection767 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 144 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value767 oldProjection767
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound767 hH))

def oldProjection768 : Integer.Sparse (Fin 1613) := [(243, 1), (244, 1), (698, 1), (700, 3), (701, 1), (704, 1), (1059, 1)]

theorem oldProjectionSound768 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node768 =
      Integer.Sparse.eval oldProjection768 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 9 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value768 oldProjection768
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound768 hH))

def oldProjection769 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -20), (94, 20), (241, 80), (243, 80), (698, 160), (704, 80), (1251, -15)]

theorem oldProjectionSound769 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node769 =
      Integer.Sparse.eval oldProjection769 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 720 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value769 oldProjection769
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound769 hH))

def oldProjection770 : Integer.Sparse (Fin 1613) := [(37, -1), (240, -1), (697, -1)]

theorem oldProjectionSound770 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node770 =
      Integer.Sparse.eval oldProjection770 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 3 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value770 oldProjection770
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound770 hH))

end NoFourMUBs.Step2.SOS.Normalization

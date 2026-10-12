import NoFourMUBs.Step2.SOS.NormalizationContext
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Sound10
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Sound9

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def oldProjection627 : Integer.Sparse (Fin 1613) := [(72, -1), (229, -1), (1058, -1), (1321, -1)]

theorem oldProjectionSound627 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node627 =
      Integer.Sparse.eval oldProjection627 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 2 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value627 oldProjection627
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound627 hH))

def oldProjection629 : Integer.Sparse (Fin 1613) := [(19, -8), (20, 3), (94, 1), (243, 16), (244, 16), (700, 16), (701, 16), (704, 16), (1040, -48), (1251, 2)]

theorem oldProjectionSound629 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node629 =
      Integer.Sparse.eval oldProjection629 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 96 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value629 oldProjection629
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound629 hH))

def oldProjection631 : Integer.Sparse (Fin 1613) := [(691, -1), (1044, -1), (1050, -1), (1052, -1)]

theorem oldProjectionSound631 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node631 =
      Integer.Sparse.eval oldProjection631 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 2 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value631 oldProjection631
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound631 hH))

def oldProjection632 : Integer.Sparse (Fin 1613) := [(3, -4), (19, -4), (20, 3), (94, -4), (105, 32), (106, 16), (241, 16), (243, 48), (1225, 16), (1251, 1)]

theorem oldProjectionSound632 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node632 =
      Integer.Sparse.eval oldProjection632 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 96 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value632 oldProjection632
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound632 hH))

def oldProjection633 : Integer.Sparse (Fin 1613) := [(20, 1), (94, -5), (105, 16), (241, 16), (243, 32), (698, 16), (1047, -48), (1226, 16), (1251, -2)]

theorem oldProjectionSound633 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node633 =
      Integer.Sparse.eval oldProjection633 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 96 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value633 oldProjection633
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound633 hH))

def oldProjection634 : Integer.Sparse (Fin 1613) := [(1047, -2), (1055, -1), (1219, -1)]

theorem oldProjectionSound634 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node634 =
      Integer.Sparse.eval oldProjection634 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 2 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value634 oldProjection634
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound634 hH))

def oldProjection636 : Integer.Sparse (Fin 1613) := [(20, 1), (94, 2), (105, 8), (243, 16), (700, 8), (1044, -24), (1251, 1)]

theorem oldProjectionSound636 {H : CMatrix} (hH : IsHadamard H) :
    (48 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node636 =
      Integer.Sparse.eval oldProjection636 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 48 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value636 oldProjection636
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound636 hH))

def oldProjection637 : Integer.Sparse (Fin 1613) := [(3, -1), (19, -1), (20, -1), (94, -1), (105, 4), (106, 4), (243, 4), (244, 4), (1045, -12)]

theorem oldProjectionSound637 {H : CMatrix} (hH : IsHadamard H) :
    (24 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node637 =
      Integer.Sparse.eval oldProjection637 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 24 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value637 oldProjection637
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound637 hH))

def oldProjection638 : Integer.Sparse (Fin 1613) := [(3, -8), (19, -8), (20, 1), (94, 2), (104, 16), (105, 16), (106, 16), (241, 16), (243, 16), (703, 16), (1054, -48), (1251, 1)]

theorem oldProjectionSound638 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node638 =
      Integer.Sparse.eval oldProjection638 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 96 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value638 oldProjection638
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound638 hH))

def oldProjection639 : Integer.Sparse (Fin 1613) := [(19, -8), (20, 1), (104, 16), (105, 16), (241, 32), (243, 32), (698, 16), (704, 16), (1251, -1)]

theorem oldProjectionSound639 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node639 =
      Integer.Sparse.eval oldProjection639 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 96 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value639 oldProjection639
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound639 hH))

def oldProjection641 : Integer.Sparse (Fin 1613) := [(0, -1), (94, 5), (241, 40), (698, 80), (1050, -120), (1059, 40), (1251, 10)]

theorem oldProjectionSound641 {H : CMatrix} (hH : IsHadamard H) :
    (240 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node641 =
      Integer.Sparse.eval oldProjection641 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 240 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value641 oldProjection641
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound641 hH))

def oldProjection642 : Integer.Sparse (Fin 1613) := [(0, -1), (698, 80), (1050, -240), (1052, -240), (1059, 80), (1221, -240), (1251, -15)]

theorem oldProjectionSound642 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node642 =
      Integer.Sparse.eval oldProjection642 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 480 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value642 oldProjection642
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound642 hH))

def oldProjection643 : Integer.Sparse (Fin 1613) := [(700, 2), (1052, -6), (1053, -3), (1059, 1)]

theorem oldProjectionSound643 {H : CMatrix} (hH : IsHadamard H) :
    (6 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node643 =
      Integer.Sparse.eval oldProjection643 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 6 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value643 oldProjection643
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound643 hH))

def oldProjection645 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -20), (94, 25), (241, 160), (243, 80), (698, 240), (1226, 80), (1251, -30)]

theorem oldProjectionSound645 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node645 =
      Integer.Sparse.eval oldProjection645 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 480 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value645 oldProjection645
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound645 hH))

def oldProjection646 : Integer.Sparse (Fin 1613) := [(0, 1), (94, 10), (241, 80), (698, 160), (1055, -240), (1227, 80), (1251, -55)]

theorem oldProjectionSound646 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node646 =
      Integer.Sparse.eval oldProjection646 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 480 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value646 oldProjection646
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound646 hH))

def oldProjection647 : Integer.Sparse (Fin 1613) := [(0, -1), (94, 5), (1050, -240), (1055, -240), (1058, -240), (1250, 60), (1251, -10)]

theorem oldProjectionSound647 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node647 =
      Integer.Sparse.eval oldProjection647 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 480 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value647 oldProjection647
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound647 hH))

def oldProjection648 : Integer.Sparse (Fin 1613) := [(19, -4), (94, -3), (241, 16), (243, 16), (698, 16), (700, 16), (1052, -48), (1251, -3)]

theorem oldProjectionSound648 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node648 =
      Integer.Sparse.eval oldProjection648 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 96 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value648 oldProjection648
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound648 hH))

def oldProjection650 : Integer.Sparse (Fin 1613) := [(20, 1), (94, 2), (241, 8), (243, 16), (244, 8), (1053, -24), (1251, 1)]

theorem oldProjectionSound650 {H : CMatrix} (hH : IsHadamard H) :
    (48 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node650 =
      Integer.Sparse.eval oldProjection650 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 48 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value650 oldProjection650
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound650 hH))

def oldProjection651 : Integer.Sparse (Fin 1613) := [(0, -1), (243, 80), (698, 160), (700, 240), (1052, -240), (1059, 160), (1251, -15)]

theorem oldProjectionSound651 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node651 =
      Integer.Sparse.eval oldProjection651 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 480 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value651 oldProjection651
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound651 hH))

def oldProjection652 : Integer.Sparse (Fin 1613) := [(106, 1), (243, 2), (246, 1), (698, 1), (703, 2), (704, 2), (1054, -3)]

theorem oldProjectionSound652 {H : CMatrix} (hH : IsHadamard H) :
    (6 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node652 =
      Integer.Sparse.eval oldProjection652 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 6 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value652 oldProjection652
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound652 hH))

def oldProjection653 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -40), (20, 5), (94, 30), (241, 80), (243, 160), (698, 160), (704, 160), (1251, 10)]

theorem oldProjectionSound653 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node653 =
      Integer.Sparse.eval oldProjection653 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 480 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value653 oldProjection653
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound653 hH))

def oldProjection654 : Integer.Sparse (Fin 1613) := [(0, 1), (94, 10), (247, 40), (1055, -120), (1251, -15)]

theorem oldProjectionSound654 {H : CMatrix} (hH : IsHadamard H) :
    (240 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node654 =
      Integer.Sparse.eval oldProjection654 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 240 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value654 oldProjection654
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound654 hH))

def oldProjection655 : Integer.Sparse (Fin 1613) := [(0, 3), (94, 5), (698, 80), (1059, 80), (1251, 30)]

theorem oldProjectionSound655 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node655 =
      Integer.Sparse.eval oldProjection655 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 480 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value655 oldProjection655
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound655 hH))

def oldProjection656 : Integer.Sparse (Fin 1613) := [(0, -1), (698, 80), (700, 80), (1251, -15)]

theorem oldProjectionSound656 {H : CMatrix} (hH : IsHadamard H) :
    (240 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node656 =
      Integer.Sparse.eval oldProjection656 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 240 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value656 oldProjection656
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound656 hH))

def oldProjection657 : Integer.Sparse (Fin 1613) := [(106, 1), (698, 1), (703, 1), (704, 1), (1225, 1), (1226, 1)]

theorem oldProjectionSound657 {H : CMatrix} (hH : IsHadamard H) :
    (6 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node657 =
      Integer.Sparse.eval oldProjection657 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 6 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value657 oldProjection657
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound657 hH))

def oldProjection658 : Integer.Sparse (Fin 1613) := [(0, -1), (94, 10), (243, 80), (704, 80), (1226, 80), (1227, 80), (1251, -5)]

theorem oldProjectionSound658 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node658 =
      Integer.Sparse.eval oldProjection658 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 480 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value658 oldProjection658
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound658 hH))

def oldProjection660 : Integer.Sparse (Fin 1613) := [(0, -1), (697, -120), (698, 80), (1058, -120), (1059, 40), (1227, 40), (1251, -15)]

theorem oldProjectionSound660 {H : CMatrix} (hH : IsHadamard H) :
    (240 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node660 =
      Integer.Sparse.eval oldProjection660 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 240 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value660 oldProjection660
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound660 hH))

def oldProjection662 : Integer.Sparse (Fin 1613) := [(0, -1), (94, 5), (243, 80), (698, 160), (700, 240), (704, 80), (1059, 80), (1251, 10)]

theorem oldProjectionSound662 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node662 =
      Integer.Sparse.eval oldProjection662 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 480 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value662 oldProjection662
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound662 hH))

def oldProjection663 : Integer.Sparse (Fin 1613) := [(0, -2), (94, 15), (698, 160), (700, 240), (1059, 80), (1251, 5)]

theorem oldProjectionSound663 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node663 =
      Integer.Sparse.eval oldProjection663 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 480 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value663 oldProjection663
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound663 hH))

def oldProjection664 : Integer.Sparse (Fin 1613) := [(19, -8), (20, -1), (106, 16), (243, 32), (244, 32), (700, 16), (701, 16), (703, 16), (1251, 1)]

theorem oldProjectionSound664 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node664 =
      Integer.Sparse.eval oldProjection664 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 96 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value664 oldProjection664
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound664 hH))

def oldProjection665 : Integer.Sparse (Fin 1613) := [(19, -4), (20, 1), (94, 2), (243, 8), (244, 8), (698, 8), (700, 8), (701, 8), (704, 8), (1061, -24), (1251, 1)]

theorem oldProjectionSound665 {H : CMatrix} (hH : IsHadamard H) :
    (48 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node665 =
      Integer.Sparse.eval oldProjection665 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 48 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value665 oldProjection665
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound665 hH))

def oldProjection666 : Integer.Sparse (Fin 1613) := [(0, -1), (243, 80), (698, 240), (1058, -240), (1226, 160), (1227, 160), (1251, -15)]

theorem oldProjectionSound666 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node666 =
      Integer.Sparse.eval oldProjection666 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 480 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value666 oldProjection666
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound666 hH))

def oldProjection667 : Integer.Sparse (Fin 1613) := [(0, 3), (698, 80), (1059, 40), (1227, 80), (1251, -35)]

theorem oldProjectionSound667 {H : CMatrix} (hH : IsHadamard H) :
    (240 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node667 =
      Integer.Sparse.eval oldProjection667 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 240 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value667 oldProjection667
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound667 hH))

def oldProjection668 : Integer.Sparse (Fin 1613) := [(0, 1), (1059, 4), (1251, -5)]

theorem oldProjectionSound668 {H : CMatrix} (hH : IsHadamard H) :
    (24 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node668 =
      Integer.Sparse.eval oldProjection668 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 24 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value668 oldProjection668
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound668 hH))

def oldProjection669 : Integer.Sparse (Fin 1613) := [(0, -1), (94, -10), (243, 80), (698, 160), (700, 80), (1058, -240), (1059, 80), (1226, 80), (1251, -25)]

theorem oldProjectionSound669 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node669 =
      Integer.Sparse.eval oldProjection669 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 480 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value669 oldProjection669
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound669 hH))

def oldProjection670 : Integer.Sparse (Fin 1613) := [(0, -2), (94, 5), (698, 120), (700, 40), (1059, 80), (1227, 40), (1251, -25)]

theorem oldProjectionSound670 {H : CMatrix} (hH : IsHadamard H) :
    (240 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node670 =
      Integer.Sparse.eval oldProjection670 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 240 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value670 oldProjection670
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound670 hH))

def oldProjection671 : Integer.Sparse (Fin 1613) := [(19, -4), (20, 1), (94, -3), (243, 48), (244, 16), (698, 16), (700, 32), (1226, 16), (1251, 4)]

theorem oldProjectionSound671 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node671 =
      Integer.Sparse.eval oldProjection671 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 96 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value671 oldProjection671
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound671 hH))

def oldProjection672 : Integer.Sparse (Fin 1613) := [(94, 1), (698, 8), (700, 8), (1061, -12), (1219, -12), (1251, 1)]

theorem oldProjectionSound672 {H : CMatrix} (hH : IsHadamard H) :
    (24 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node672 =
      Integer.Sparse.eval oldProjection672 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 24 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value672 oldProjection672
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound672 hH))

def oldProjection673 : Integer.Sparse (Fin 1613) := [(1086, 1)]

theorem oldProjectionSound673 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node673 =
      Integer.Sparse.eval oldProjection673 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value673 oldProjection673
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound673 hH))

def oldProjection674 : Integer.Sparse (Fin 1613) := [(1089, 1)]

theorem oldProjectionSound674 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node674 =
      Integer.Sparse.eval oldProjection674 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value674 oldProjection674
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound674 hH))

def oldProjection675 : Integer.Sparse (Fin 1613) := [(1095, 1)]

theorem oldProjectionSound675 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node675 =
      Integer.Sparse.eval oldProjection675 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value675 oldProjection675
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound675 hH))

def oldProjection676 : Integer.Sparse (Fin 1613) := [(1103, 1)]

theorem oldProjectionSound676 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node676 =
      Integer.Sparse.eval oldProjection676 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value676 oldProjection676
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound676 hH))

def oldProjection677 : Integer.Sparse (Fin 1613) := [(1105, 1)]

theorem oldProjectionSound677 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node677 =
      Integer.Sparse.eval oldProjection677 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value677 oldProjection677
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound677 hH))

def oldProjection678 : Integer.Sparse (Fin 1613) := [(1114, 1)]

theorem oldProjectionSound678 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node678 =
      Integer.Sparse.eval oldProjection678 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value678 oldProjection678
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound678 hH))

def oldProjection679 : Integer.Sparse (Fin 1613) := [(1115, 1)]

theorem oldProjectionSound679 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node679 =
      Integer.Sparse.eval oldProjection679 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value679 oldProjection679
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound679 hH))

def oldProjection680 : Integer.Sparse (Fin 1613) := [(1117, 1)]

theorem oldProjectionSound680 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node680 =
      Integer.Sparse.eval oldProjection680 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value680 oldProjection680
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound680 hH))

def oldProjection681 : Integer.Sparse (Fin 1613) := [(1124, 1)]

theorem oldProjectionSound681 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node681 =
      Integer.Sparse.eval oldProjection681 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value681 oldProjection681
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound681 hH))

def oldProjection682 : Integer.Sparse (Fin 1613) := [(1126, 1)]

theorem oldProjectionSound682 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node682 =
      Integer.Sparse.eval oldProjection682 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value682 oldProjection682
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound682 hH))

def oldProjection683 : Integer.Sparse (Fin 1613) := [(1128, 1)]

theorem oldProjectionSound683 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node683 =
      Integer.Sparse.eval oldProjection683 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value683 oldProjection683
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound683 hH))

def oldProjection684 : Integer.Sparse (Fin 1613) := [(1140, 1)]

theorem oldProjectionSound684 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node684 =
      Integer.Sparse.eval oldProjection684 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value684 oldProjection684
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound684 hH))

def oldProjection685 : Integer.Sparse (Fin 1613) := [(1141, 1)]

theorem oldProjectionSound685 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node685 =
      Integer.Sparse.eval oldProjection685 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value685 oldProjection685
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound685 hH))

def oldProjection686 : Integer.Sparse (Fin 1613) := [(1142, 1)]

theorem oldProjectionSound686 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node686 =
      Integer.Sparse.eval oldProjection686 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value686 oldProjection686
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound686 hH))

def oldProjection687 : Integer.Sparse (Fin 1613) := [(1146, 1)]

theorem oldProjectionSound687 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node687 =
      Integer.Sparse.eval oldProjection687 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value687 oldProjection687
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound687 hH))

def oldProjection688 : Integer.Sparse (Fin 1613) := [(1154, 1)]

theorem oldProjectionSound688 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node688 =
      Integer.Sparse.eval oldProjection688 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value688 oldProjection688
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound688 hH))

def oldProjection689 : Integer.Sparse (Fin 1613) := [(1174, 1)]

theorem oldProjectionSound689 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node689 =
      Integer.Sparse.eval oldProjection689 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value689 oldProjection689
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound689 hH))

def oldProjection690 : Integer.Sparse (Fin 1613) := [(1175, 1)]

theorem oldProjectionSound690 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node690 =
      Integer.Sparse.eval oldProjection690 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value690 oldProjection690
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound690 hH))

def oldProjection691 : Integer.Sparse (Fin 1613) := [(1184, 1)]

theorem oldProjectionSound691 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node691 =
      Integer.Sparse.eval oldProjection691 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value691 oldProjection691
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound691 hH))

def oldProjection692 : Integer.Sparse (Fin 1613) := [(1186, 1)]

theorem oldProjectionSound692 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node692 =
      Integer.Sparse.eval oldProjection692 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value692 oldProjection692
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound692 hH))

def oldProjection693 : Integer.Sparse (Fin 1613) := [(1207, 1)]

theorem oldProjectionSound693 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node693 =
      Integer.Sparse.eval oldProjection693 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 1 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value693 oldProjection693
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound693 hH))

def oldProjection694 : Integer.Sparse (Fin 1613) := [(19, -8), (20, 3), (94, -2), (243, 32), (704, 16), (1040, -48), (1225, 16), (1251, 3)]

theorem oldProjectionSound694 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node694 =
      Integer.Sparse.eval oldProjection694 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 96 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value694 oldProjection694
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound694 hH))

def oldProjection695 : Integer.Sparse (Fin 1613) := [(19, -4), (94, 3), (228, -48), (686, -48), (704, 16), (1223, -48), (1251, 3)]

theorem oldProjectionSound695 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node695 =
      Integer.Sparse.eval oldProjection695 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 96 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value695 oldProjection695
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound695 hH))

def oldProjection696 : Integer.Sparse (Fin 1613) := [(20, 1), (94, -8), (243, 48), (698, 16), (700, 16), (1225, 16), (1226, 32), (1251, -1)]

theorem oldProjectionSound696 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node696 =
      Integer.Sparse.eval oldProjection696 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 96 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value696 oldProjection696
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound696 hH))

def oldProjection697 : Integer.Sparse (Fin 1613) := [(0, -1), (94, -5), (243, 80), (698, 160), (700, 80), (1219, -240), (1226, 80), (1227, 80)]

theorem oldProjectionSound697 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node697 =
      Integer.Sparse.eval oldProjection697 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 480 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value697 oldProjection697
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound697 hH))

def oldProjection698 : Integer.Sparse (Fin 1613) := [(19, -4), (94, -1), (1052, -48), (1219, -48), (1223, -48), (1251, -1)]

theorem oldProjectionSound698 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node698 =
      Integer.Sparse.eval oldProjection698 (momentVector H) := by
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (reuse_projection 96 oldEmbedding OAI.MUB6.Certificate.PairSemantics.value698 oldProjection698
      (by decide +kernel) (by decide +kernel)
      (momentVector H) (OAI.MUB6.Certificate.PairSemantics.momentVector H) (old_moment H)
      _ (OAI.MUB6.Certificate.PairSemantics.sound698 hH))

end NoFourMUBs.Step2.SOS.Normalization

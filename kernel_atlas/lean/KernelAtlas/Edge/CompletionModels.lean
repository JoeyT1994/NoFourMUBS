import KernelAtlas.Edge.RootModels
import KernelAtlas.Edge.ForcedDerivative
import KernelAtlas.Edge.PhaseDerivative
import KernelAtlas.Edge.BlockDerivative

/-! Residual correction and phase models for the differentiated forced block. -/

open Complex Matrix Hadamard6 NoFourMUBs.SeedAtlas

noncomputable section

namespace NoFourMUBs.KernelAtlas.Edge

open Seed

def identity3T : List CT := l9 fun q => const (if q/3=q%3 then oneZ else (0, 0))

def add3T (X Y : List CT) : List CT := l9 fun q => add (gT X q) (gT Y q)

def sub3T (X Y : List CT) : List CT := l9 fun q => sub (gT X q) (gT Y q)

lemma has_sub3T {u : Fin 4 → ℝ} {X Y : List CT} {M N : Mat3}
    (hx : Has3 u X M) (hy : Has3 u Y N) : Has3 u (sub3T X Y) (M-N) := by
  intro i j
  rw [sub3T, gT_l9 _ (by omega)]
  exact has_sub (hx i j) (hy i j)

def cornerDerivativeT (de : List CT) : List CT :=
  sub3T (ET de) (ET (l4 fun _ => const (0, 0)))

def sideDerivativeT (dx : List CT) : List CT :=
  sub3T (BT dx) (BT (l6 fun _ => const (0, 0)))

def verticalDerivativeT (dx : List CT) : List CT :=
  sub3T (CT3 dx) (CT3 (l6 fun _ => const (0, 0)))

lemma has_cornerDerivativeT {u : Fin 4 → ℝ} {de : List CT} {v : Fin 4 → ℂ}
    (hv : ∀ k : Fin 4, (gT de k).Has u (v k)) :
    Has3 u (cornerDerivativeT de) (cornerDerivative v) := by
  apply has_sub3T (has3_ET hv)
  apply has3_ET
  intro k
  rw [gT_l4 _ k.2]
  exact has_zero u

lemma has_sideDerivativeT {u : Fin 4 → ℝ} {dx : List CT} {x y : Fin 3 → ℂ}
    (hx : ∀ j : Fin 3, (gT dx j).Has u (x j))
    (hy : ∀ j : Fin 3, (gT dx (j+3)).Has u (y j)) :
    Has3 u (sideDerivativeT dx) (sideDerivative x y) := by
  apply has_sub3T (has3_BT hx hy)
  apply has3_BT
  all_goals intro j; rw [gT_l6 _ (by omega)]; exact has_zero u

lemma has_verticalDerivativeT {u : Fin 4 → ℝ} {dx : List CT} {x y : Fin 3 → ℂ}
    (hx : ∀ j : Fin 3, (gT dx j).Has u (x j))
    (hy : ∀ j : Fin 3, (gT dx (j+3)).Has u (y j)) :
    Has3 u (verticalDerivativeT dx) (sideDerivative x y)ᵀ := by
  rw [sideDerivative, Matrix.transpose_sub]
  apply has_sub3T (has3_CT3 hx hy)
  apply has3_CT3
  all_goals intro j; rw [gT_l6 _ (by omega)]; exact has_zero u

def forcedDerivativeT (h : List ℕ) (P : List CT) (A0 : List (ℤ × ℤ))
    (E B C D dE dB dC : List CT) : DOut :=
  forcedT h P A0 identity3T B
    (add3T (add3T (mulH h dC E) (mulH h C dE)) (mulH h D dB))

lemma has_identity3T (u : Fin 4 → ℝ) : Has3 u identity3T (1 : Mat3) := by
  intro i j
  rw [identity3T, gT_l9 _ (by omega), (idx3 i j).1, (idx3 i j).2]
  by_cases hij : i=j
  · subst j; simpa [cz_one] using has_const oneZ u
  · have hv : (i : ℕ) ≠ j := fun he => hij (Fin.ext he)
    simpa [hij, hv, cz] using has_const (0, 0) u

/-- The existing forced-block checker also encloses its differential. -/
theorem forcedDerivativeT_sound {h : List ℕ} {u : Fin 4 → ℝ} (hu : InBox h u)
    {P : List CT} {A0 : List (ℤ × ℤ)} {E B C D dE dB dC : List CT}
    {Em Bm Cm Dm dEm dBm dCm dDm : Mat3}
    (he : Has3 u E Em) (hb : Has3 u B Bm) (hc : Has3 u C Cm) (hd : Has3 u D Dm)
    (hde : Has3 u dE dEm) (hdb : Has3 u dB dBm) (hdc : Has3 u dC dCm)
    (hz : dDm*Bmᴴ = -(dCm*Emᴴ + Cm*dEmᴴ + Dm*dBmᴴ))
    (hok : (forcedDerivativeT h P A0 E B C D dE dB dC).ok = true) :
    Has3 u (forcedDerivativeT h P A0 E B C D dE dB dC).D dDm := by
  have hr := has3_add (has3_add (has3_mulH hu hdc he) (has3_mulH hu hc hde)) (has3_mulH hu hd hdb)
  apply forced_sound hu (has_identity3T u) hb hr ?_ hok
  simpa only [Matrix.conjTranspose_one, Matrix.mul_one] using hz

def phaseDerivativeT (h : List ℕ) (dD D : List CT) : List CT :=
  l9 fun q => im (mul h (gT dD q) (conj (gT D q)))

theorem has_phaseDerivativeT {h : List ℕ} {u : Fin 4 → ℝ} (hu : InBox h u)
    {dD D : List CT} {dDm Dm : Mat3} (hd : Has3 u dD dDm) (hz : Has3 u D Dm)
    (hu1 : ∀ i j, ‖Dm i j‖ = 1) (i j : Fin 3) :
    (gT (phaseDerivativeT h dD D) (3*i+j)).Has u ((dDm i j / Dm i j).im : ℂ) := by
  rw [phaseDerivativeT, gT_l9 _ (by omega)]
  have hn : normSq (Dm i j) = 1 := by rw [Complex.normSq_eq_norm_sq, hu1, one_pow]
  have hi : (Dm i j)⁻¹ = (starRingEnd ℂ) (Dm i j) := by
    simp [Complex.inv_def, hn]
  simpa only [div_eq_mul_inv, hi] using has_im (has_mul hu (hd i j) (has_conj (hz i j)))

end NoFourMUBs.KernelAtlas.Edge

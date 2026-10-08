import Seed0024PhysicalBounds
import RowPairDefect

/-! Actual carrier-to-model matching cost. Every premise is a literal entry
factorization or entry error; no matrix norm bound is assumed. -/
set_option autoImplicit false
set_option maxHeartbeats 1600000
namespace Seed0024Mathematical20261007
open scoped BigOperators ComplexConjugate
open Centiradian20261006
noncomputable section

def rowSquaredError (H K : Mat6) (i : Fin 6) : ℝ :=
  ∑ j : Fin 6, Complex.normSq (H i j-K i j)

def normalizedSquaredFrobenius (H K : Mat6) : ℝ :=
  ∑ i : Fin 6, ∑ j : Fin 6,
    Complex.normSq ((H i j-K i j)/(Real.sqrt 6 : ℂ))

def finalRow (i : Fin 4) : Fin 6 := ⟨i.val+2, by omega⟩

/-- Literal row matching provided by the orientation and midpoint construction.
The anchor H i3 is the actual fourth entry of H; K i3 is its unit midpoint
reference, with an exhibited phase error. -/
def RowMatching (H K : Mat6) (i : Fin 6) : Prop :=
  ∃ v w : ℂ, ∃ e : ℝ,
    ‖v‖=1 ∧ ‖w‖=1 ∧ ‖K i 3‖=1 ∧ H i 0=K i 0 ∧
    ‖H i 1-K i 1‖≤localPhaseError ∧ ‖H i 2-K i 2‖≤localPhaseError ∧
    |e|≤2*localPhaseError ∧ H i 3=K i 3*cis e ∧
    K i 4=K i 3*v ∧ K i 5=K i 3*w ∧
    ‖H i 4-H i 3*v‖≤localPhaseError ∧
    ‖H i 5-H i 3*w‖≤localPhaseError

theorem normSq_le_of_norm_le {z : ℂ} {B : ℝ} (h : ‖z‖≤B) :
    Complex.normSq z ≤ B^2 := by
  rw [Complex.normSq_eq_norm_sq]
  exact pow_le_pow_left₀ (norm_nonneg _) h 2

theorem cis_chord_le (t : ℝ) : ‖cis t-1‖≤|t| := by
  rw [cis_eq_exp]
  simpa only [mul_comm Complex.I] using
    Seed0024Geometry20261007.phase_norm_sub_one_le t

theorem unit_phase_factor_error (z : ℂ) (hz : ‖z‖=1) (e : ℝ) :
    ‖z*cis e-z‖≤|e| := by
  calc
    ‖z*cis e-z‖=‖z*(cis e-1)‖ := by congr 1; ring
    _ = ‖cis e-1‖ := by rw [norm_mul, hz, one_mul]
    _ ≤ |e| := cis_chord_le e

theorem matched_row_squared_budget {H K : Mat6} {i : Fin 6}
    (hm : RowMatching H K i) : rowSquaredError H K i ≤ 24*localPhaseError^2 := by
  obtain ⟨v,w,e,hv,hw,hk3,h0,h1,h2,he,ha,hk4,hk5,h4,h5⟩ := hm
  have h3 : ‖H i 3-K i 3‖≤2*localPhaseError := by
    rw [ha]
    exact (unit_phase_factor_error (K i 3) hk3 e).trans he
  have h4' : ‖H i 4-K i 4‖≤3*localPhaseError := by
    have hn : ‖H i 4-K i 4‖ ≤ ‖H i 4-H i 3*v‖+‖(H i 3-K i 3)*v‖ := by
      calc
        _ = ‖(H i 4-H i 3*v)+(H i 3-K i 3)*v‖ := by rw [hk4]; congr 1; ring
        _ ≤ _ := norm_add_le _ _
    rw [norm_mul, hv, mul_one] at hn
    linarith
  have h5' : ‖H i 5-K i 5‖≤3*localPhaseError := by
    have hn : ‖H i 5-K i 5‖ ≤ ‖H i 5-H i 3*w‖+‖(H i 3-K i 3)*w‖ := by
      calc
        _ = ‖(H i 5-H i 3*w)+(H i 3-K i 3)*w‖ := by rw [hk5]; congr 1; ring
        _ ≤ _ := norm_add_le _ _
    rw [norm_mul, hw, mul_one] at hn
    linarith
  have hs1 := normSq_le_of_norm_le h1
  have hs2 := normSq_le_of_norm_le h2
  have hs3 := normSq_le_of_norm_le h3
  have hs4 := normSq_le_of_norm_le h4'
  have hs5 := normSq_le_of_norm_le h5'
  unfold rowSquaredError
  simp only [Fin.sum_univ_succ]
  change Complex.normSq (H i 0-K i 0)+(Complex.normSq (H i 1-K i 1)+
    (Complex.normSq (H i 2-K i 2)+(Complex.normSq (H i 3-K i 3)+
    (Complex.normSq (H i 4-K i 4)+(Complex.normSq (H i 5-K i 5)+0))))) ≤ _
  rw [h0, sub_self, map_zero]
  nlinarith

theorem matched_first_row_zero {H K : Mat6} (hd : Dephased H)
    (hk : ∀ j : Fin 6, K 0 j=1) : rowSquaredError H K 0=0 := by
  simp [rowSquaredError, hd.1, hk]

theorem physical_binary_row_squared_error {H K : Mat6} (hH : Physical H)
    (hd : Dephased H)
    (hk : ∀ j : Fin 6, K 1 j=if j.val<3 then 1 else -1) :
    rowSquaredError H K 1 =
      2*(Complex.normSq (H 1 1-1)+Complex.normSq (H 1 2-1)) := by
  have he := physical_complementary_row_defect hH hd
  unfold rowSquaredError
  simp only [Fin.sum_univ_succ, hk]
  norm_num [hd.2]
  change Complex.normSq (H 1 1-1)+(Complex.normSq (H 1 2-1)+
    (Complex.normSq (H 1 3+1)+(Complex.normSq (H 1 4+1)+
    Complex.normSq (H 1 5+1)))) = _
  nlinarith

theorem normalizedSquaredFrobenius_eq (H K : Mat6) :
    normalizedSquaredFrobenius H K = (∑ i : Fin 6, rowSquaredError H K i)/6 := by
  have hs : Complex.normSq (Real.sqrt 6 : ℂ)=6 := by
    simp only [Complex.normSq_ofReal]
    exact Real.mul_self_sqrt (by norm_num : (0:ℝ)≤6)
  unfold normalizedSquaredFrobenius rowSquaredError
  simp only [Complex.normSq_div, hs, div_eq_mul_inv, Finset.sum_mul]

/-- The complete entry-level H-to-K budget in the displayed coordinate matching. -/
theorem physical_matched_frobenius_lt {H K : Mat6} (hH : Physical H)
    (hd : Dephased H)
    (hsmall : Complex.normSq (H 1 1-1)+Complex.normSq (H 1 2-1)≤5*localDelta^2)
    (hk0 : ∀ j : Fin 6, K 0 j=1)
    (hk1 : ∀ j : Fin 6, K 1 j=if j.val<3 then 1 else -1)
    (hm : ∀ i : Fin 4, RowMatching H K (finalRow i)) :
    normalizedSquaredFrobenius H K < (1/75:ℝ)^2 := by
  have h0 := matched_first_row_zero hd hk0
  have h1 := physical_binary_row_squared_error hH hd hk1
  have h2 := matched_row_squared_budget (hm 0)
  have h3 := matched_row_squared_budget (hm 1)
  have h4 := matched_row_squared_budget (hm 2)
  have h5 := matched_row_squared_budget (hm 3)
  change rowSquaredError H K 2≤24*localPhaseError^2 at h2
  change rowSquaredError H K 3≤24*localPhaseError^2 at h3
  change rowSquaredError H K 4≤24*localPhaseError^2 at h4
  change rowSquaredError H K 5≤24*localPhaseError^2 at h5
  rw [normalizedSquaredFrobenius_eq]
  simp only [Fin.sum_univ_succ]
  change (rowSquaredError H K 0+(rowSquaredError H K 1+
    (rowSquaredError H K 2+(rowSquaredError H K 3+
    (rowSquaredError H K 4+(rowSquaredError H K 5+0))))))/6 < _
  have hc := local_normalized_frobenius_margin
  nlinarith

def reindexCarrier (H : Mat6) (rows cols : Equiv.Perm (Fin 6)) : Mat6 :=
  fun i j => H (rows i) (cols j)

theorem physical_reindexCarrier {H : Mat6} (hH : Physical H)
    (rows cols : Equiv.Perm (Fin 6)) : Physical (reindexCarrier H rows cols) := by
  constructor
  · intro i j
    exact hH.1 (rows i) (cols j)
  · intro i j
    change (∑ k : Fin 6, H (rows i) (cols k)*conj (H (rows j) (cols k))) = _
    have hs := Equiv.sum_comp cols
      (fun k : Fin 6 => H (rows i) k * conj (H (rows j) k))
    rw [hs]
    simpa only [Equiv.apply_eq_iff_eq] using hH.2 (rows i) (rows j)

theorem dephased_reindexCarrier {H : Mat6} (hd : Dephased H)
    (rows cols : Equiv.Perm (Fin 6)) (hr : rows 0=0) (hc : cols 0=0) :
    Dephased (reindexCarrier H rows cols) := by
  constructor
  · intro j; simp only [reindexCarrier, hr, hd.1]
  · intro i; simp only [reindexCarrier, hc, hd.2]

/-- Explicit row/column matching on the original physical matrix. -/
theorem physical_permuted_match_frobenius_lt {H K : Mat6} (hH : Physical H)
    (hd : Dephased H) (rows cols : Equiv.Perm (Fin 6))
    (hr : rows 0=0) (hc : cols 0=0)
    (hsmall : Complex.normSq (H (rows 1) (cols 1)-1)+
      Complex.normSq (H (rows 1) (cols 2)-1)≤5*localDelta^2)
    (hk0 : ∀ j : Fin 6, K 0 j=1)
    (hk1 : ∀ j : Fin 6, K 1 j=if j.val<3 then 1 else -1)
    (hm : ∀ i : Fin 4, RowMatching (reindexCarrier H rows cols) K (finalRow i)) :
    normalizedSquaredFrobenius (reindexCarrier H rows cols) K < (1/75:ℝ)^2 := by
  exact physical_matched_frobenius_lt (physical_reindexCarrier hH rows cols)
    (dephased_reindexCarrier hd rows cols hr hc) hsmall hk0 hk1 hm

end
end Seed0024Mathematical20261007

#print axioms Seed0024Mathematical20261007.matched_row_squared_budget
#print axioms Seed0024Mathematical20261007.physical_binary_row_squared_error
#print axioms Seed0024Mathematical20261007.physical_matched_frobenius_lt
#print axioms Seed0024Mathematical20261007.physical_permuted_match_frobenius_lt

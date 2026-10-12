import NoFourMUBs.Reuse.Archive.CriticalCounts
open scoped BigOperators

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace CriticalCounts20261003
open scoped BigOperators
noncomputable section

/-- Values on all twenty corners, without an assumed counting witness. -/
theorem no_twenty_values {p : ℝ}
    (hl : (572220/100000:ℝ)≤p) (hu : p≤(572221/100000:ℝ))
    (v : Fin 20 → ℝ) (hv : ∀ c, v c=0 ∨ v c=5 ∨ v c=p)
    (hsum : ∑ c, v c=108) : False := by
  classical
  let color : Fin 20 → Fin 3 := fun c => if v c=0 then 0 else if v c=5 then 1 else 2
  have he : ∀ c, v c=5*(if color c=1 then 1 else 0)+p*(if color c=2 then 1 else 0) := by
    intro c
    by_cases h0 : v c=0
    · simp [color,h0]
    · by_cases h5 : v c=5
      · simp [color,h0,h5]
      · rcases hv c with h | h | h
        · exact (h0 h).elim
        · exact (h5 h).elim
        · have hcolor : color c=2 := by simp [color,h0,h5]
          simpa [hcolor] using h
  let n5 : ℕ := ∑ c, if color c=1 then 1 else 0
  let ns : ℕ := ∑ c, if color c=2 then 1 else 0
  have ht : n5+ns≤20 := by
    dsimp [n5,ns]
    rw [← Finset.sum_add_distrib]
    calc
      _ ≤ ∑ c : Fin 20, (1:ℕ) := by
        apply Finset.sum_le_sum
        intro c _
        have hf : ∀ t : Fin 3, (if t=1 then 1 else 0 : ℕ)+
            (if t=2 then 1 else 0 : ℕ)≤1 := by decide +kernel
        exact hf (color c)
      _ = 20 := by norm_num
  have heq : 5*(n5:ℝ)+p*(ns:ℝ)=∑ c, v c := by
    dsimp [n5,ns]
    push_cast
    rw [Finset.mul_sum,Finset.mul_sum,← Finset.sum_add_distrib]
    apply Finset.sum_congr rfl
    intro c _
    simpa only [Nat.cast_ite,Nat.cast_one,Nat.cast_zero] using (he c).symm
  exact no_counts_in_band hl hu n5 ns ht (heq.trans hsum)

theorem no_twenty_special_values {k : ℝ} (hk : 0<k) (hc : cubic k=0)
    (v : Fin 20 → ℝ) (hv : ∀ c, v c=0 ∨ v c=5 ∨ v c=specialValue k)
    (hsum : ∑ c, v c=108) : False := by
  obtain ⟨hl,hu⟩ := special_bounds hk hc
  exact no_twenty_values hl hu v hv hsum

#print axioms no_twenty_values
#print axioms no_twenty_special_values
end
end CriticalCounts20261003

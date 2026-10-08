import RadianSeedBounds

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

namespace CriticalCounts20261003
noncomputable section

def cubic (k : ℝ) : ℝ := 3*k^3+k^2+k-1
def specialValue (k : ℝ) : ℝ := 9-4/(1+k^2)

/-- Exact rational enclosure of every positive root; no uniqueness premise. -/
theorem root_bounds {k : ℝ} (hk : 0<k) (hc : cubic k=0) :
    (469396/1000000:ℝ) ≤ k ∧ k ≤ (469397/1000000:ℝ) := by
  unfold cubic at hc
  constructor
  · by_contra h
    have hle : k ≤ (469396/1000000:ℝ) := le_of_lt (lt_of_not_ge h)
    have h2 := pow_le_pow_left₀ hk.le hle 2
    have h3 := pow_le_pow_left₀ hk.le hle 3
    norm_num at h2 h3
    nlinarith
  · by_contra h
    have hle : (469397/1000000:ℝ) ≤ k := le_of_lt (lt_of_not_ge h)
    have h2 := pow_le_pow_left₀ (by norm_num : (0:ℝ)≤469397/1000000) hle 2
    have h3 := pow_le_pow_left₀ (by norm_num : (0:ℝ)≤469397/1000000) hle 3
    norm_num at h2 h3
    nlinarith

theorem special_bounds {k : ℝ} (hk : 0<k) (hc : cubic k=0) :
    (572220/100000:ℝ) ≤ specialValue k ∧ specialValue k ≤ (572221/100000:ℝ) := by
  obtain ⟨hl,hu⟩ := root_bounds hk hc
  have hl2 := pow_le_pow_left₀ (by norm_num : (0:ℝ)≤469396/1000000) hl 2
  have hu2 := pow_le_pow_left₀ hk.le hu 2
  have hd : 0<1+k^2 := by positivity
  have hlow : 4/(1+k^2) ≤ 4/(1+(469396/1000000:ℝ)^2) :=
    div_le_div_of_nonneg_left (by norm_num) (by positivity) (by linarith)
  have hupp : 4/(1+(469397/1000000:ℝ)^2) ≤ 4/(1+k^2) :=
    div_le_div_of_nonneg_left (by norm_num) hd (by linarith)
  norm_num at hlow hupp
  unfold specialValue
  constructor <;> linarith

/-- The full finite count domain is checked with exact rational arithmetic. -/
theorem finite_separation : ∀ b c : Fin 21, b.val+c.val≤20 →
    (5*(b.val:ℚ)+(c.val:ℚ)*(572221/100000)<108 ∨
      108<5*(b.val:ℚ)+(c.val:ℚ)*(572220/100000)) := by
  decide +kernel

/-- Counts for the twenty corners cannot sum to 108 with these three values. -/
theorem no_counts_in_band {p : ℝ}
    (hl : (572220/100000:ℝ)≤p) (hu : p≤(572221/100000:ℝ))
    (n5 nstar : ℕ) (htotal : n5+nstar≤20)
    (hsum : 5*(n5:ℝ)+p*(nstar:ℝ)=108) : False := by
  let b : Fin 21 := ⟨n5,by omega⟩
  let c : Fin 21 := ⟨nstar,by omega⟩
  have ht : b.val+c.val≤20 := htotal
  rcases finite_separation b c ht with h | h
  · have hh : 5*(n5:ℝ)+(nstar:ℝ)*(572221/100000)<108 := by
      have he := (Rat.cast_lt (K := ℝ)).mpr h
      norm_num [b,c] at he ⊢
      exact he
    nlinarith [mul_le_mul_of_nonneg_left hu (Nat.cast_nonneg nstar : (0:ℝ)≤nstar)]
  · have hh : (108:ℝ)<5*(n5:ℝ)+(nstar:ℝ)*(572220/100000) := by
      have he := (Rat.cast_lt (K := ℝ)).mpr h
      norm_num [b,c] at he ⊢
      exact he
    nlinarith [mul_le_mul_of_nonneg_left hl (Nat.cast_nonneg nstar : (0:ℝ)≤nstar)]

/-- Terminal contradiction only: the physical classification and count/sum
rules must still be established for the actual row strip. -/
theorem no_critical_counts {k : ℝ} (hk : 0<k) (hc : cubic k=0)
    (n0 n5 nstar : ℕ) (htotal : n0+n5+nstar=20)
    (hsum : 5*(n5:ℝ)+specialValue k*(nstar:ℝ)=108) : False := by
  obtain ⟨hl,hu⟩ := special_bounds hk hc
  exact no_counts_in_band hl hu n5 nstar (by omega) hsum

#print axioms root_bounds
#print axioms special_bounds
#print axioms finite_separation
#print axioms no_counts_in_band
#print axioms no_critical_counts
end
end CriticalCounts20261003

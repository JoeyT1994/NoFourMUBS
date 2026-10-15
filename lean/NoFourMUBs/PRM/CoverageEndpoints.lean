import NoFourMUBs.PRM.CoverageEndEqui

/-!
# I5: the two endpoint exclusions

`endpointExclusions : EndpointExclusions` (`CoverageInputs`), from

* `p7Exclusion` — `CRITICAL_P7_EXCLUSION.md`, via `Endpoint.p7_strip` (`CoverageEndP7`);
* `equiExclusion` — `CRITICAL_EQUI_CORRELATION_EXCLUSION.md`, via `Endpoint.equi_strip`
  (`CoverageEndEqui`).

The corner `triBlock H 0 l` is the `inr` part of the top strip with its columns reordered by
`triPerm l` (`Endpoint.hrow`); its Gram entries are the corner correlations of that strip
(`Endpoint.blockS_hrow` …).  For `p = 7` the row opposite the large correlation is moved first
(`StripData.perm_bac`, `StripData.perm_cab`); `|J|` is unchanged (`jS_bac`, `jS_cab`).  Neither
`AllMinorsInvertible` hypothesis is used.
-/

open Matrix Hadamard6 ComplexConjugate

noncomputable section

namespace NoFourMUBs.PRM.Coverage

open Endpoint

theorem jS_bac (s t r : ℂ) : Side.jS (conj s) r t = Side.jS s t r := by
  simp only [Side.jS, Complex.conj_conj]
  have e : s * conj t * r = conj (conj s * conj r * t) := by
    simp only [map_mul, Complex.conj_conj]; ring
  rw [e, Complex.conj_re]

theorem jS_cab (s t r : ℂ) : Side.jS (conj t) (conj r) s = Side.jS s t r := by
  simp only [Side.jS, Complex.conj_conj]
  rw [show t * conj s * conj r = conj s * conj r * t by ring]

theorem blockJ_hrow (H : Mat6) (l : Fin 20) :
    blockJ (triBlock H 0 l) = Side.jS (cc (hrow H l 1) (hrow H l 0)) (cc (hrow H l 2) (hrow H l 0))
      (cc (hrow H l 2) (hrow H l 1)) := by
  rw [blockJ, blockS_hrow, blockT_hrow, blockR_hrow]

/-- **`CRITICAL_P7_EXCLUSION.md`.** -/
theorem p7Exclusion (H : Mat6) (hH : Hadamard6.IsHadamard H) (hc : AllCritical H) (l : Fin 20) :
    ¬ P7Endpoint (triBlock H 0 l) := by
  rintro ⟨hJ, hXYZ⟩
  have D := stripData_of hH hc l
  rw [blockJ_hrow] at hJ
  have hJ' := (abs_eq (by norm_num : (0 : ℝ) ≤ 2)).1 hJ
  simp only [blockX, blockY, blockZ, blockS_hrow, blockT_hrow, blockR_hrow] at hXYZ
  rcases hXYZ with ⟨h1, h2, h3⟩ | ⟨h1, h2, h3⟩ | ⟨h1, h2, h3⟩
  · exact p7_strip D h1 h2 h3 hJ'
  · refine p7_strip D.perm_bac (by rw [cc_swap, Complex.normSq_conj]; exact h1) h3 h2 ?_
    rw [cc_swap (hrow H l 1) (hrow H l 0), jS_bac]; exact hJ'
  · refine p7_strip D.perm_cab (by rw [cc_swap, Complex.normSq_conj]; exact h2)
      (by rw [cc_swap, Complex.normSq_conj]; exact h3) h1 ?_
    rw [cc_swap (hrow H l 2) (hrow H l 0), cc_swap (hrow H l 2) (hrow H l 1), jS_cab]; exact hJ'

/-- **`CRITICAL_EQUI_CORRELATION_EXCLUSION.md`.** -/
theorem equiExclusion (H : Mat6) (hH : Hadamard6.IsHadamard H) (hc : AllCritical H) (l : Fin 20) :
    ¬ EquiEndpoint (triBlock H 0 l) := by
  rintro ⟨h1, h2, h3, hJ⟩
  have D := stripData_of hH hc l
  rw [blockJ_hrow] at hJ
  have hJ' := (abs_eq (by norm_num : (0 : ℝ) ≤ 54 / 25)).1 hJ
  simp only [blockX, blockY, blockZ, blockS_hrow, blockT_hrow, blockR_hrow] at h1 h2 h3
  exact equi_strip D h1 h2 h3 hJ'

/-- **I5, the two endpoint exclusions.** -/
theorem endpointExclusions : EndpointExclusions :=
  fun H hH hc _ l => ⟨equiExclusion H hH hc l, p7Exclusion H hH hc l⟩

end NoFourMUBs.PRM.Coverage

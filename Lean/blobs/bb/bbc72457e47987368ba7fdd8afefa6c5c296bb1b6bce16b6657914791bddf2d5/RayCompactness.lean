import RayIncidence
import Mathlib.Tactic.FunProp

/-! Compactness and an explicit conditional finite-fibre principle. -/
namespace Mub6.Classification.Rays
open Mub6 Mub6.Numerical Mub6.Numerical.CircleCharts
open scoped BigOperators
noncomputable section

theorem continuous_circlePoint : Continuous circlePoint := by
  have he : circlePoint = fun t : ℝ =>
      (((1 - t ^ 2 : ℝ) : ℂ) + 2 * Complex.I * (t : ℂ)) /
        ((1 + t ^ 2 : ℝ) : ℂ) := funext circlePoint_quotient
  rw [he]
  apply Continuous.div
  · fun_prop
  · fun_prop
  · intro t
    exact_mod_cast ne_of_gt (denominator_pos t)

theorem continuous_signedCircle (s : Bool) : Continuous (signedCircle s) :=
  continuous_const.mul continuous_circlePoint

theorem continuous_chartRay (s : SignChart) : Continuous (chartRay s) := by
  apply continuous_pi
  intro r
  refine Fin.cases ?_ (fun j => ?_) r
  · exact continuous_const
  · exact (continuous_signedCircle (s j)).comp (continuous_apply j)

theorem continuous_carrierAmplitude (H : BasisMatrix) (k : Fin 6) :
    Continuous (fun z => carrierAmplitude H z k) := by
  unfold carrierAmplitude
  exact continuous_finset_sum _ fun r _ => continuous_const.mul (continuous_apply r)

theorem continuous_residual (H : BasisMatrix) (s : SignChart) (k : Fin 5) :
    Continuous (fun t => residual H s t k) :=
  (Complex.continuous_normSq.comp
    ((continuous_carrierAmplitude H k.succ).comp (continuous_chartRay s))).sub continuous_const

theorem isCompact_cube : IsCompact {t : Parameters | InCube t} := by
  have he : {t : Parameters | InCube t} =
      Set.Icc (fun _ => (-1 : ℝ)) (fun _ => (1 : ℝ)) := by
    ext t
    exact forall_and
  rw [he]
  exact isCompact_Icc

theorem isClosed_chart_zeroes (H : BasisMatrix) (s : SignChart) :
    IsClosed {t : Parameters | ∀ k, residual H s t k = 0} := by
  have he : {t : Parameters | ∀ k, residual H s t k = 0} =
      ⋂ k, {t | residual H s t k = 0} := by ext t; simp
  rw [he]
  exact isClosed_iInter fun k => isClosed_eq (continuous_residual H s k) continuous_const

theorem isCompact_chart_fibre (H : BasisMatrix) (s : SignChart) :
    IsCompact {t : Parameters | ChartIncidence H s t} :=
  isCompact_cube.inter_right (isClosed_chart_zeroes H s)

/-- Compactness plus certified local isolation is sufficient for finiteness.
The isolation witnesses are open neighborhoods in the full ambient space,
so this statement also covers solutions on the chart-cube boundary. -/
theorem finite_of_compact_isolated {X : Type*} [TopologicalSpace X] {S : Set X}
    (hcompact : IsCompact S)
    (hisolated : ∀ x ∈ S, ∃ U : Set X, IsOpen U ∧ x ∈ U ∧
      ∀ y ∈ S, y ∈ U → y = x) : S.Finite := by
  classical
  choose U hopen hmem hunique using fun x : S => hisolated x x.property
  have hcover : S ⊆ ⋃ x : S, U x := by
    intro x hx
    exact Set.mem_iUnion.mpr ⟨⟨x, hx⟩, hmem ⟨x, hx⟩⟩
  obtain ⟨centres, hcentres⟩ := hcompact.elim_finite_subcover U hopen hcover
  apply (centres.finite_toSet.image (fun x : S => (x : X))).subset
  intro y hy
  obtain ⟨x, hxc, hyU⟩ := Set.mem_iUnion₂.mp (hcentres hy)
  exact ⟨x, hxc, (hunique x y hy hyU).symm⟩

def LocallyIsolatedChartFibre (H : BasisMatrix) (s : SignChart) : Prop :=
  ∀ t, ChartIncidence H s t → ∃ U : Set Parameters,
    IsOpen U ∧ t ∈ U ∧ ∀ u, ChartIncidence H s u → u ∈ U → u = t

theorem finite_chart_fibre_of_isolated (H : BasisMatrix) (s : SignChart)
    (hisolated : LocallyIsolatedChartFibre H s) :
    {t : Parameters | ChartIncidence H s t}.Finite :=
  finite_of_compact_isolated (isCompact_chart_fibre H s) hisolated

/-- Local injectivity of the five-component residual is a sufficient
isolation certificate. No Jacobian nondegeneracy is silently assumed. -/
theorem isolated_of_local_residual_injective (H : BasisMatrix) (s : SignChart)
    (hlocal : ∀ t, ChartIncidence H s t → ∃ U : Set Parameters,
      IsOpen U ∧ t ∈ U ∧ Set.InjOn (residual H s) U) :
    LocallyIsolatedChartFibre H s := by
  intro t ht
  obtain ⟨U, hopen, htU, hinj⟩ := hlocal t ht
  refine ⟨U, hopen, htU, ?_⟩
  intro u hu huU
  apply hinj huU htU
  funext k
  rw [hu.2 k, ht.2 k]

/-- Every physical common-ray fibre is compact. The proof uses all 32 closed
charts and therefore preserves all boundary and sign-overlap cases. -/
theorem isCompact_common_ray_fibre {H : BasisMatrix} (hH : PhaseHadamard H) :
    IsCompact {z : Vector | IsRawCommonRay H z} := by
  have he : {z : Vector | IsRawCommonRay H z} =
      ⋃ s : SignChart, chartRay s '' {t | ChartIncidence H s t} := by
    ext z
    rw [Set.mem_setOf_eq, common_ray_chart_iff hH]
    simp only [Set.mem_iUnion, Set.mem_image, Set.mem_setOf_eq]
    constructor
    · rintro ⟨s, t, ht, he⟩
      exact ⟨s, t, ht, he.symm⟩
    · rintro ⟨s, t, ht, he⟩
      exact ⟨s, t, ht, he.symm⟩
  rw [he]
  exact isCompact_iUnion fun s =>
    (isCompact_chart_fibre H s).image (continuous_chartRay s)

theorem finite_common_ray_fibre_of_isolated {H : BasisMatrix} (hH : PhaseHadamard H)
    (hisolated : ∀ s, LocallyIsolatedChartFibre H s) :
    {z : Vector | IsRawCommonRay H z}.Finite := by
  have hfinite : (⋃ s : SignChart,
      chartRay s '' {t | ChartIncidence H s t}).Finite :=
    Set.finite_iUnion fun s =>
      (finite_chart_fibre_of_isolated H s (hisolated s)).image (chartRay s)
  apply hfinite.subset
  intro z hz
  obtain ⟨s, t, ht, he⟩ := (common_ray_chart_iff hH z).mp hz
  exact Set.mem_iUnion.mpr ⟨s, t, ht, he.symm⟩

#print axioms continuous_circlePoint
#print axioms continuous_chartRay
#print axioms continuous_residual
#print axioms isCompact_chart_fibre
#print axioms finite_of_compact_isolated
#print axioms finite_chart_fibre_of_isolated
#print axioms isolated_of_local_residual_injective
#print axioms isCompact_common_ray_fibre
#print axioms finite_common_ray_fibre_of_isolated
end
end Mub6.Classification.Rays

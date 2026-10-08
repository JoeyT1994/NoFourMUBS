import CriticalScalarGaugeAlgebra
import CriticalNewtonPhysical
import CriticalMomentBinding

set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace CriticalNewtonGauge20261003
open CriticalNewton20261003 CriticalPhysical20261003
noncomputable section

theorem phase_data_linear_conjugates (x y : Fin 3 → ℂ)
    (hx : ∀ j,Complex.normSq (x j)=1) (hy : ∀ j,Complex.normSq (y j)=1) :
    (dataOf x y).S=star (dataOf x y).s ∧
    (dataOf x y).T=star (dataOf x y).t ∧
    (dataOf x y).Q=star (dataOf x y).r := by
  refine ⟨(phase_data_conjugates hx hy).1,(phase_data_conjugates hx hy).2.1,?_⟩
  simp [dataOf,rowSum,ratio,div_eq_mul_inv,
    phase_inverse (hx 0),phase_inverse (hx 1),phase_inverse (hx 2),
    phase_inverse (hy 0),phase_inverse (hy 1),phase_inverse (hy 2),mul_comm]

theorem phase_data_actual_r (x y : Fin 3 → ℂ)
    (hx : ∀ j,Complex.normSq (x j)=1) :
    (dataOf x y).r=FourierPhysicalSide.r (x 0) (x 1) (x 2) (y 0) (y 1) (y 2) := by
  simp [dataOf,rowSum,ratio,FourierPhysicalSide.r,div_eq_mul_inv,
    phase_inverse (hx 0),phase_inverse (hx 1),phase_inverse (hx 2)]

theorem phase_data_moduli (x y : Fin 3 → ℂ)
    (hx : ∀ j,Complex.normSq (x j)=1) (hy : ∀ j,Complex.normSq (y j)=1) :
    let D := dataOf x y
    D.s*D.S=(Complex.normSq D.s : ℂ) ∧
    D.t*D.T=(Complex.normSq D.t : ℂ) ∧
    D.r*D.Q=(Complex.normSq D.r : ℂ) := by
  dsimp only
  rcases phase_data_linear_conjugates x y hx hy with ⟨hS,hT,hQ⟩
  rw [hS,hT,hQ]
  simp [Complex.normSq_eq_conj_mul_self,mul_comm]

theorem phase_data_trace (x y : Fin 3 → ℂ)
    (hx : ∀ j,Complex.normSq (x j)=1) (hy : ∀ j,Complex.normSq (y j)=1) :
    let D := dataOf x y
    traceData D=(momentJ D.s D.t D.r : ℂ) := by
  rcases phase_data_linear_conjugates x y hx hy with ⟨hS,hT,hQ⟩
  exact traceData_of_conjugates (dataOf x y) hS hT hQ

/-- Literal physical inputs used by the scalar verifier. The positive modulus
claims come from the original two nonzero correlations, not from a choice of
quadratic root. All occurrences of X,Y,Z,J below are actual physical values. -/
theorem phase_reciprocal_scalar_inputs (x y : Fin 3 → ℂ)
    (hx : ∀ j,Complex.normSq (x j)=1) (hy : ∀ j,Complex.normSq (y j)=1)
    (hs : (dataOf x y).s≠0) (ht : (dataOf x y).t≠0) :
    let D := dataOf x y
    let G := scaleData D.s⁻¹ D.t⁻¹ D
    let X := Complex.normSq D.s
    let Y := Complex.normSq D.t
    let Z := Complex.normSq D.r
    let J := momentJ D.s D.t D.r
    0<X ∧ 0<Y ∧ G.s=1 ∧ G.S=(X : ℂ) ∧ G.t=1 ∧ G.T=(Y : ℂ) ∧
    G.r*G.Q=(Z : ℂ) ∧
    G.Q=((J : ℂ)-(Y : ℂ)*G.r)/(X : ℂ) ∧
    G.r^2=((J : ℂ)/(Y : ℂ))*G.r-(X : ℂ)*(Z : ℂ)/(Y : ℂ) := by
  dsimp only
  let D := dataOf x y
  let G := scaleData D.s⁻¹ D.t⁻¹ D
  have hsn : Complex.normSq D.s≠0 := fun hz => hs (Complex.normSq_eq_zero.mp hz)
  have htn : Complex.normSq D.t≠0 := fun hz => ht (Complex.normSq_eq_zero.mp hz)
  have hsp : 0<Complex.normSq D.s := lt_of_le_of_ne (Complex.normSq_nonneg _) (Ne.symm hsn)
  have htp : 0<Complex.normSq D.t := lt_of_le_of_ne (Complex.normSq_nonneg _) (Ne.symm htn)
  rcases phase_data_linear_conjugates x y hx hy with ⟨hS,hT,hQ⟩
  have hsstar : star D.s≠0 := by
    intro hz
    apply hs
    have hh := congrArg star hz
    simpa using hh
  have htstar : star D.t≠0 := by
    intro hz
    apply ht
    have hh := congrArg star hz
    simpa using hh
  have hXn : D.s*D.S≠0 := by rw [hS]; exact mul_ne_zero hs hsstar
  have hYn : D.t*D.T≠0 := by rw [hT]; exact mul_ne_zero ht htstar
  rcases phase_data_moduli x y hx hy with ⟨hX,hY,hZ⟩
  have hJ := phase_data_trace x y hx hy
  rcases reciprocal_gauge_inputs D hs ht with ⟨hgs,hgS,hgt,hgT,_,_⟩
  refine ⟨hsp,htp,hgs,?_,hgt,?_,?_,?_,?_⟩
  · exact hgS.trans hX
  · exact hgT.trans hY
  · exact (reciprocal_trace_relations D hs ht).1.trans hZ
  · simpa only [D,hX,hY,hJ] using reciprocal_Q_formula D hs ht hXn
  · simpa only [D,hX,hY,hZ,hJ] using reciprocal_r_square D hs ht hYn

end
#print axioms phase_data_linear_conjugates
#print axioms phase_data_actual_r
#print axioms phase_data_moduli
#print axioms phase_data_trace
#print axioms phase_reciprocal_scalar_inputs
end CriticalNewtonGauge20261003

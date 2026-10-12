import NoFourMUBs.Reuse.Archive.CriticalDataGauge

set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace CriticalNewtonGauge20261003
open CriticalNewton20261003
noncomputable section

def traceData (D : Data) : ℂ := D.r*D.s*D.T+D.Q*D.S*D.t

theorem scaleData_moduli (a b : ℂ) (D : Data) (ha : a≠0) (hb : b≠0) :
    (scaleData a b D).s*(scaleData a b D).S=D.s*D.S ∧
    (scaleData a b D).t*(scaleData a b D).T=D.t*D.T ∧
    (scaleData a b D).r*(scaleData a b D).Q=D.r*D.Q := by
  dsimp only [scaleData]
  constructor
  · field_simp [ha]
  constructor
  · field_simp [hb]
  · field_simp [ha,hb]

theorem scaleData_trace (a b : ℂ) (D : Data) (ha : a≠0) (hb : b≠0) :
    traceData (scaleData a b D)=traceData D := by
  dsimp only [traceData,scaleData]
  field_simp [ha,hb]

theorem traceData_of_conjugates (D : Data)
    (hS : D.S=star D.s) (hT : D.T=star D.t) (hQ : D.Q=star D.r) :
    traceData D=((2*(D.r*D.s*star D.t).re : ℝ) : ℂ) := by
  calc
    _ = D.r*D.s*star D.t+star (D.r*D.s*star D.t) := by
      simp only [traceData,hS,hT,hQ,star_mul,star_star]
      ring
    _ = _ := by
      apply Complex.ext <;> simp <;> ring

/-- The quadratic-extension relation before dividing by either modulus.
The only nonzero assumptions are those defining the common reciprocal gauge. -/
theorem reciprocal_trace_relations (D : Data) (hs : D.s≠0) (ht : D.t≠0) :
    let G := scaleData D.s⁻¹ D.t⁻¹ D
    G.r*G.Q=D.r*D.Q ∧
    (D.t*D.T)*G.r+(D.s*D.S)*G.Q=traceData D ∧
    (D.t*D.T)*G.r^2-traceData D*G.r+(D.s*D.S)*(D.r*D.Q)=0 := by
  let G := scaleData D.s⁻¹ D.t⁻¹ D
  change G.r*G.Q=D.r*D.Q ∧
    (D.t*D.T)*G.r+(D.s*D.S)*G.Q=traceData D ∧
    (D.t*D.T)*G.r^2-traceData D*G.r+(D.s*D.S)*(D.r*D.Q)=0
  have hmod := (scaleData_moduli D.s⁻¹ D.t⁻¹ D (inv_ne_zero hs) (inv_ne_zero ht)).2.2
  have htrace := scaleData_trace D.s⁻¹ D.t⁻¹ D (inv_ne_zero hs) (inv_ne_zero ht)
  change G.r*G.s*G.T+G.Q*G.S*G.t=traceData D at htrace
  rcases reciprocal_gauge_inputs D hs ht with ⟨hgs,hgS,hgt,hgT,_,_⟩
  change G.s=1 at hgs
  change G.S=D.s*D.S at hgS
  change G.t=1 at hgt
  change G.T=D.t*D.T at hgT
  rw [hgs,hgS,hgt,hgT] at htrace
  have hlin : (D.t*D.T)*G.r+(D.s*D.S)*G.Q=traceData D := by
    linear_combination htrace
  refine ⟨hmod,hlin,?_⟩
  linear_combination G.r*hlin-(D.s*D.S)*hmod

theorem reciprocal_Q_formula (D : Data) (hs : D.s≠0) (ht : D.t≠0)
    (hX : D.s*D.S≠0) :
    let G := scaleData D.s⁻¹ D.t⁻¹ D
    G.Q=(traceData D-(D.t*D.T)*G.r)/(D.s*D.S) := by
  dsimp only
  apply (eq_div_iff hX).2
  have h := (reciprocal_trace_relations D hs ht).2.1
  linear_combination h

theorem reciprocal_r_square (D : Data) (hs : D.s≠0) (ht : D.t≠0)
    (hY : D.t*D.T≠0) :
    let G := scaleData D.s⁻¹ D.t⁻¹ D
    G.r^2=(traceData D/(D.t*D.T))*G.r-(D.s*D.S)*(D.r*D.Q)/(D.t*D.T) := by
  dsimp only
  have h := (reciprocal_trace_relations D hs ht).2.2
  rw [div_mul_eq_mul_div,← sub_div]
  apply (eq_div_iff hY).2
  linear_combination h

end
#print axioms scaleData_moduli
#print axioms scaleData_trace
#print axioms traceData_of_conjugates
#print axioms reciprocal_trace_relations
#print axioms reciprocal_Q_formula
#print axioms reciprocal_r_square
end CriticalNewtonGauge20261003

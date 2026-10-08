import Mathlib.Data.Complex.Basic
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Ring

/- Concrete complex polynomial bindings for the new cancellation identities.
   No physical Hadamard transport or native Taylor/interval correctness is
   asserted here. Unit phases and the exact seed algebra are explicit inputs. -/
set_option autoImplicit false
open ComplexConjugate
namespace CancellationBinding
noncomputable section

theorem complex_secant_product (rho : ℝ) (a da b db : ℂ) :
    (a+(rho:ℂ)*da)*(b+(rho:ℂ)*db) =
      a*b+(rho:ℂ)*(a*db+da*b+(rho:ℂ)*da*db) := by ring

theorem complex_secant_conjugate (rho : ℝ) (a da : ℂ) :
    conj (a+(rho:ℂ)*da) = conj a+(rho:ℂ)*conj da := by
  simp only [map_add,map_mul,Complex.conj_ofReal]

theorem complex_secant_normSq (rho : ℝ) (a da : ℂ) :
    Complex.normSq (a+(rho:ℂ)*da) =
      Complex.normSq a+rho*(2*(a*conj da).re+rho*Complex.normSq da) := by
  simp [Complex.normSq_apply,Complex.mul_re,Complex.mul_im]
  ring

def rootA (eta : ℝ) : ℂ := ⟨-1/2, eta/2⟩
def rootB (eta : ℝ) : ℂ := ⟨-1/2, -eta/2⟩

theorem cube_root_relations (eta : ℝ) (heta : eta^2=3) :
    conj (rootA eta)=rootB eta ∧ conj (rootB eta)=rootA eta ∧
    rootA eta+rootB eta=-1 ∧ rootA eta*rootB eta=1 ∧
    (rootA eta)^2=rootB eta ∧ (rootB eta)^2=rootA eta := by
  repeat' apply And.intro
  all_goals apply Complex.ext
  all_goals simp [rootA,rootB,pow_two,Complex.mul_re,Complex.mul_im] <;> nlinarith [heta]

theorem unit_secant_conjugate {rho : ℝ} {a da : ℂ}
    (hrho : rho ≠ 0) (ha : a*conj a=1)
    (hunit : (a+(rho:ℂ)*da)*conj (a+(rho:ℂ)*da)=1) :
    conj da = -(conj a)^2*da-(rho:ℂ)*conj a*(da*conj da) := by
  have hc : (rho:ℂ) ≠ 0 := Complex.ofReal_ne_zero.mpr hrho
  have hu : (a+(rho:ℂ)*da)*(conj a+(rho:ℂ)*conj da)=1 := by
    simpa only [map_add,map_mul,Complex.conj_ofReal] using hunit
  have hp : (rho:ℂ)*(a*conj da+conj a*da+(rho:ℂ)*(da*conj da))=0 := by
    calc
      _ = (a+(rho:ℂ)*da)*(conj a+(rho:ℂ)*conj da)-a*conj a := by ring
      _ = 0 := by rw [hu,ha]; ring
  have hz := (mul_eq_zero.mp hp).resolve_left hc
  calc
    conj da = (a*conj a)*conj da := by rw [ha]; ring
    _ = conj a*(a*conj da+conj a*da+(rho:ℂ)*(da*conj da))
        -(conj a)^2*da-(rho:ℂ)*conj a*(da*conj da) := by ring
    _ = _ := by rw [hz]; ring

theorem cube_secant_conjugate {rho : ℝ} {a b da : ℂ}
    (hrho : rho ≠ 0) (hconj : conj a=b) (hab : a*b=1) (hb2 : b^2=a)
    (hunit : (a+(rho:ℂ)*da)*conj (a+(rho:ℂ)*da)=1) :
    conj da = -a*da-(rho:ℂ)*b*(Complex.normSq da:ℂ) := by
  have ha : a*conj a=1 := by rw [hconj,hab]
  have h := unit_secant_conjugate hrho ha hunit
  simpa only [hconj,hb2,Complex.mul_conj] using h

theorem unit_phase_U_binding {rho : ℝ} {a b da db dc dd : ℂ}
    (hrho : rho ≠ 0) (hca : conj a=b) (hcb : conj b=a)
    (hab : a*b=1) (ha2 : a^2=b) (hb2 : b^2=a)
    (hua : (a+(rho:ℂ)*da)*conj (a+(rho:ℂ)*da)=1)
    (hub : (b+(rho:ℂ)*db)*conj (b+(rho:ℂ)*db)=1)
    (huc : (b+(rho:ℂ)*dc)*conj (b+(rho:ℂ)*dc)=1)
    (hud : (a+(rho:ℂ)*dd)*conj (a+(rho:ℂ)*dd)=1) :
    -(b*conj da+b*dc+a*conj db+a*dd+(rho:ℂ)*(dc*conj da+dd*conj db)) =
      -(-da-db)-conj (-dc-dd)+(rho:ℂ)*
        (a*((Complex.normSq da:ℂ)+(Complex.normSq dc:ℂ))+
         b*((Complex.normSq db:ℂ)+(Complex.normSq dd:ℂ))-dc*conj da-dd*conj db) := by
  have hba : b*a=1 := by rw [mul_comm,hab]
  have hA := cube_secant_conjugate hrho hca hab hb2 hua
  have hB := cube_secant_conjugate hrho hcb hba ha2 hub
  have hC := cube_secant_conjugate hrho hcb hba ha2 huc
  have hD := cube_secant_conjugate hrho hca hab hb2 hud
  have htA : b*conj da = -da-(rho:ℂ)*a*(Complex.normSq da:ℂ) := by
    rw [hA]
    calc
      _ = -(a*b)*da-(rho:ℂ)*b^2*(Complex.normSq da:ℂ) := by ring
      _ = _ := by rw [hab,hb2]; ring
  have htB : a*conj db = -db-(rho:ℂ)*b*(Complex.normSq db:ℂ) := by
    rw [hB]
    calc
      _ = -(a*b)*db-(rho:ℂ)*a^2*(Complex.normSq db:ℂ) := by ring
      _ = _ := by rw [hab,ha2]; ring
  have htC : b*dc = -conj dc-(rho:ℂ)*a*(Complex.normSq dc:ℂ) := by rw [hC]; ring
  have htD : a*dd = -conj dd-(rho:ℂ)*b*(Complex.normSq dd:ℂ) := by rw [hD]; ring
  rw [htA,htB,htC,htD]
  simp only [map_sub,map_neg]
  ring

def coeffs (A B ai bi : ℂ) : List ℂ :=
  [-(A-B)^2*(A+B)*ai^2*bi^2,
   (A-B)*(A+B)*(A*B-1)*ai^2*bi,
   (B-1)^2*(B+1)*ai*bi,
   -(A^2-B)*(B-1)*(B+1)*ai*bi^2,
   (A-1)^2*(A+1)*ai*bi,
   (A-1)*(A+1)*(A-B^2)*ai^2*bi]

theorem cube_root_coefficients {a b : ℂ}
    (hsum : a+b=-1) (hab : a*b=1) (ha2 : a^2=b) (hb2 : b^2=a) :
    coeffs a b b a = [-3,0,3,0,3,0] := by
  have hd : (a-b)^2=-3 := by
    calc
      _ = (a+b)^2-4*(a*b) := by ring
      _ = _ := by rw [hsum,hab]; ring
  have ha3 : a^3=1 := by calc
    _ = a*a^2 := by ring
    _ = 1 := by rw [ha2,hab]
  have hb3 : b^3=1 := by calc
    _ = b^2*b := by ring
    _ = 1 := by rw [hb2,hab]
  have h0 : -(a-b)^2*(a+b)*b^2*a^2=-3 := by
    calc
      _ = -(a-b)^2*(a+b)*(a*b)^2 := by ring
      _ = _ := by rw [hd,hsum,hab]; ring
  have h1 : (a-b)*(a+b)*(a*b-1)*b^2*a=0 := by rw [hab]; ring
  have h2 : (b-1)^2*(b+1)*b*a=3 := by
    calc
      _ = (b^3-b^2-b+1)*(a*b) := by ring
      _ = 2-(a+b) := by rw [hb3,hb2,hab]; ring
      _ = 3 := by rw [hsum]; ring
  have h3 : -(a^2-b)*(b-1)*(b+1)*b*a^2=0 := by rw [ha2]; ring
  have h4 : (a-1)^2*(a+1)*b*a=3 := by
    calc
      _ = (a^3-a^2-a+1)*(a*b) := by ring
      _ = 2-(a+b) := by rw [ha3,ha2,hab]; ring
      _ = 3 := by rw [hsum]; ring
  have h5 : (a-1)*(a+1)*(a-b^2)*b^2*a=0 := by rw [hb2]; ring
  simp only [coeffs,h0,h1,h2,h3,h4,h5]

def weightedThirdCoeffs (a b : ℂ) : List ℂ :=
  List.zipWith (fun x y => x*y) (coeffs (b*b) (a*a) (a*a) (b*b))
    [b*a,b*b,b^2*b,a,a*a^2,b]

theorem all_three_anchor_coefficients {a b : ℂ}
    (hsum : a+b=-1) (hab : a*b=1) (ha2 : a^2=b) (hb2 : b^2=a) :
    coeffs a b b a=[-3,0,3,0,3,0] ∧
    coeffs b a a b=[-3,0,3,0,3,0] ∧
    weightedThirdCoeffs a b=[-3,0,3,0,3,0] := by
  have hba : b*a=1 := by rw [mul_comm,hab]
  have hsum' : b+a=-1 := by rw [add_comm,hsum]
  have ha : a*a=b := by simpa only [pow_two] using ha2
  have hb : b*b=a := by simpa only [pow_two] using hb2
  constructor
  · exact cube_root_coefficients hsum hab ha2 hb2
  constructor
  · exact cube_root_coefficients hsum' hba hb2 ha2
  · unfold weightedThirdCoeffs
    rw [ha,hb,cube_root_coefficients hsum hab ha2 hb2]
    simp [ha2,hb2,hab,hba]

def f0 (s t u : ℂ) : ℂ :=
  (3*s*t)*(Complex.normSq (3*u*conj s):ℂ)*(Complex.normSq (3*conj u*conj t):ℂ)*(1/2)
def f1 (s t u : ℂ) : ℂ :=
  conj (3*u*conj s)*(Complex.normSq (3*s*t):ℂ)*(Complex.normSq (3*conj u*conj t):ℂ)*(1/2)
def f2 (s t u : ℂ) : ℂ :=
  conj (3*conj u*conj t)*(Complex.normSq (3*s*t):ℂ)*(Complex.normSq (3*u*conj s):ℂ)*(1/2)
def lscale (s t u : ℂ) : ℝ := 243/2*Complex.normSq s*Complex.normSq t*Complex.normSq u

theorem base_f0 (s t u : ℂ) :
    f0 s t u=(lscale s t u:ℂ)*(Complex.normSq u:ℂ)*s*t := by
  simp [f0,lscale,Complex.normSq_mul,Complex.normSq_conj,Complex.ofReal_mul]
  ring

theorem base_f1 (s t u : ℂ) :
    f1 s t u=(lscale s t u:ℂ)*(Complex.normSq t:ℂ)*s*conj u := by
  simp [f1,lscale,Complex.normSq_mul,Complex.normSq_conj,Complex.ofReal_mul,map_mul,Complex.conj_ofNat]
  ring

theorem base_f2 (s t u : ℂ) :
    f2 s t u=(lscale s t u:ℂ)*(Complex.normSq s:ℂ)*u*t := by
  simp [f2,lscale,Complex.normSq_mul,Complex.normSq_conj,Complex.ofReal_mul,map_mul,Complex.conj_ofNat]
  ring

def extractMean (z : ℂ) : ℝ := ((z-conj z)*Complex.I).re
def meanA (l : ℝ) (s t : ℂ) : ℝ :=
  let u := -s-conj t
  let x := Complex.normSq s
  let y := Complex.normSq t
  let z := Complex.normSq u
  extractMean (3*((9*(x+y-z):ℝ):ℂ)*((l:ℂ)*(z:ℂ)*s*t)-
    3*((9*(x+z-y):ℝ):ℂ)*((l:ℂ)*(y:ℂ)*s*conj u)-
    3*((9*(y+z-x):ℝ):ℂ)*((l:ℂ)*(x:ℂ)*u*t))
def meanB (l : ℝ) (s t : ℂ) : ℝ :=
  let u := -s-conj t
  let x := Complex.normSq s
  let y := Complex.normSq t
  let z := Complex.normSq u
  extractMean (3*Complex.I*((l:ℂ)*(z:ℂ)*s*t+(l:ℂ)*(y:ℂ)*s*conj u+(l:ℂ)*(x:ℂ)*u*t))

theorem meanA_closed (l : ℝ) (s t : ℂ) : meanA l s t=-216*l*(s*t).im^3 := by
  simp [meanA,extractMean,Complex.normSq_apply,Complex.mul_re,Complex.mul_im]
  ring

theorem meanB_closed (l : ℝ) (s t : ℂ) : meanB l s t=12*l*(s*t).im^2 := by
  simp [meanB,extractMean,Complex.normSq_apply,Complex.mul_re,Complex.mul_im]
  ring

def rawA (s t : ℂ) : ℝ :=
  let u := -s-conj t
  let x := Complex.normSq s
  let y := Complex.normSq t
  let z := Complex.normSq u
  extractMean ((-3)*(-((9*(x+y-z):ℝ):ℂ)*f0 s t u)+
    3*(-((9*(x+z-y):ℝ):ℂ)*f1 s t u)+3*(-((9*(y+z-x):ℝ):ℂ)*f2 s t u))
def rawB (s t : ℂ) : ℝ :=
  let u := -s-conj t
  extractMean ((-3)*(-Complex.I*f0 s t u)+3*(Complex.I*f1 s t u)+3*(Complex.I*f2 s t u))

theorem rawA_binding (s t : ℂ) : rawA s t=meanA (lscale s t (-s-conj t)) s t := by
  unfold rawA meanA
  apply congrArg extractMean
  rw [base_f0,base_f1,base_f2]
  ring

theorem rawB_binding (s t : ℂ) : rawB s t=meanB (lscale s t (-s-conj t)) s t := by
  unfold rawB meanB
  apply congrArg extractMean
  rw [base_f0,base_f1,base_f2]
  ring

theorem actual_base_A_relation (s t : ℂ) : rawA s t=-18*(s*t).im*rawB s t := by
  rw [rawA_binding,rawB_binding,meanA_closed,meanB_closed]
  ring

theorem actual_base_B_value (s t : ℂ) :
    rawB s t=1458*Complex.normSq s*Complex.normSq t*Complex.normSq (-s-conj t)*(s*t).im^2 := by
  rw [rawB_binding,meanB_closed]
  unfold lscale
  ring

theorem actual_base_R_value (s t : ℂ) :
    let x := Complex.normSq s
    let y := Complex.normSq t
    let z := Complex.normSq (-s-conj t)
    324*(x*y+x*z+y*z)-81*(x+y+z)^2=324*(s*t).im^2 := by
  simp [Complex.normSq_apply,Complex.mul_re,Complex.mul_im]
  ring

#print axioms complex_secant_product
#print axioms complex_secant_conjugate
#print axioms complex_secant_normSq
#print axioms cube_root_relations
#print axioms unit_secant_conjugate
#print axioms cube_secant_conjugate
#print axioms unit_phase_U_binding
#print axioms cube_root_coefficients
#print axioms all_three_anchor_coefficients
#print axioms base_f0
#print axioms base_f1
#print axioms base_f2
#print axioms meanA_closed
#print axioms meanB_closed
#print axioms rawA_binding
#print axioms rawB_binding
#print axioms actual_base_A_relation
#print axioms actual_base_B_value
#print axioms actual_base_R_value

end
end CancellationBinding

import CriticalNonzeroLightData

set_option autoImplicit false
namespace CriticalNonzeroSumDenominator20261003
open CriticalNonzeroLight20261003
noncomputable section
variable {F : Type*} [Field F] [CharZero F]

/-- The six small integer factors of the normalized external denominator.
The X/Y factors use the same two functions. The last two use Z=p-X-Y. -/
def plusFactor (M k : F) : F := (M-9)*(k+1)*h k+6*h k+4*k
def minusFactor (M k : F) : F := (M-9)*(k-1)*h k-6*h k+4*k
def thirdPlusFactor (X Y k : F) : F := (X+Y)*(k+1)*h k-6*h k+4
def thirdMinusFactor (X Y k : F) : F := (X+Y)*(k-1)*h k+6*h k-4

def commonDenominator (X Y k : F) : F :=
  (h k)^4*(plusFactor X k)^5*(minusFactor X k)^5*
    (plusFactor Y k)^5*(minusFactor Y k)^5*
    (thirdPlusFactor X Y k)^5*(thirdMinusFactor X Y k)^5

theorem plusFactor_pole (M k : F) (hh : h k≠0) :
    plusFactor M k=(h k)^2/2*pole k 1 M := by
  unfold plusFactor pole gram sheet q J
  field_simp [hh]
  ring

theorem minusFactor_pole (M k : F) (hh : h k≠0) :
    minusFactor M k= -((h k)^2/2)*pole k (-1) M := by
  unfold minusFactor pole gram sheet q J
  field_simp [hh]
  ring

theorem thirdPlusFactor_pole (X Y k : F) (hh : h k≠0) :
    thirdPlusFactor X Y k= -((h k)^2/2)*pole k 1 (p k-X-Y) := by
  unfold thirdPlusFactor pole gram sheet p q J
  field_simp [hh]
  ring

theorem thirdMinusFactor_pole (X Y k : F) (hh : h k≠0) :
    thirdMinusFactor X Y k=(h k)^2/2*pole k (-1) (p k-X-Y) := by
  unfold thirdMinusFactor pole gram sheet p q J
  field_simp [hh]
  ring

/-- No exceptional pole is erased: all six literal pole guards are hypotheses.
This proves only nonvanishing of the proposed denominator, not that the
proposed numerator equals the physical 66-term expression. -/
theorem commonDenominator_ne_zero (X Y k : F) (hh : h k≠0)
    (hXp : pole k 1 X≠0) (hXm : pole k (-1) X≠0)
    (hYp : pole k 1 Y≠0) (hYm : pole k (-1) Y≠0)
    (hZp : pole k 1 (p k-X-Y)≠0) (hZm : pole k (-1) (p k-X-Y)≠0) :
    commonDenominator X Y k≠0 := by
  have hs : (h k)^2/(2 : F)≠0 := div_ne_zero (pow_ne_zero 2 hh) (by norm_num)
  unfold commonDenominator
  rw [plusFactor_pole X k hh,minusFactor_pole X k hh,
    plusFactor_pole Y k hh,minusFactor_pole Y k hh,
    thirdPlusFactor_pole X Y k hh,thirdMinusFactor_pole X Y k hh]
  exact mul_ne_zero
    (mul_ne_zero
      (mul_ne_zero
        (mul_ne_zero
          (mul_ne_zero
            (mul_ne_zero (pow_ne_zero 4 hh) (pow_ne_zero 5 (mul_ne_zero hs hXp)))
            (pow_ne_zero 5 (mul_ne_zero (neg_ne_zero.mpr hs) hXm)))
          (pow_ne_zero 5 (mul_ne_zero hs hYp)))
        (pow_ne_zero 5 (mul_ne_zero (neg_ne_zero.mpr hs) hYm)))
      (pow_ne_zero 5 (mul_ne_zero (neg_ne_zero.mpr hs) hZp)))
    (pow_ne_zero 5 (mul_ne_zero hs hZm))

end
#print axioms plusFactor_pole
#print axioms minusFactor_pole
#print axioms thirdPlusFactor_pole
#print axioms thirdMinusFactor_pole
#print axioms commonDenominator_ne_zero
end CriticalNonzeroSumDenominator20261003

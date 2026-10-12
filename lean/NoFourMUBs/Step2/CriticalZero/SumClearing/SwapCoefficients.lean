import NoFourMUBs.Reuse.Archive.CriticalZeroSumDenseCoefficients

set_option autoImplicit false
namespace NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.SwapCoefficients
open CriticalZeroSplitReduction20261003
open IntegerReflector
abbrev DC := CriticalZeroSumAssembly20261003.DenseCoefficients.XY
variable {R : Type*} [CommRing R]

/-- Transpose a coefficient table using the existing addition and shifts. -/
def swapII : DC → DC
  | [] => []
  | a::as => Coefficients.add2 (a.map (fun c => [c]))
      (Coefficients.shiftZ 1 (swapII as))

theorem evalII_column (X Y : R) (a : List ℤ) :
    evalII X Y (a.map (fun c => [c])) = evalI X a := by
  induction a with
  | nil => rfl
  | cons c cs ih => simp [evalII,evalI,ih]

theorem evalII_swap (X Y : R) (a : DC) :
    evalII X Y (swapII a) = evalII Y X a := by
  induction a with
  | nil => rfl
  | cons c cs ih =>
    simp only [swapII,evalII_add,evalII_column,
      HornerReflector.evalII_shiftY,pow_one,ih,evalII]

def swap (a : List DC) : List DC := a.map swapII
def shiftY (n : ℕ) (a : List DC) : List DC := a.map (Coefficients.shiftZ n)
def shiftX (n : ℕ) (a : List DC) : List DC := a.map (Coefficients.shiftK n)

open CriticalZeroSumAssembly20261003.DenseCoefficients

theorem interpret_swap (X Y : R) (a : List DC) :
    interpret X Y (swap a) = interpret Y X a := by
  induction a with
  | nil => rfl
  | cons c cs ih => simp only [swap,List.map_cons,interpret,evalII_swap] at *; rw [ih]

theorem interpret_shiftY (X Y : R) (n : ℕ) (a : List DC) :
    interpret X Y (shiftY n a) = Coefficients.scale (Y^n) (interpret X Y a) := by
  induction a with
  | nil => rfl
  | cons c cs ih =>
    simp only [shiftY,List.map_cons,interpret,HornerReflector.evalII_shiftY,
      Coefficients.scale] at *
    rw [ih]

theorem interpret_shiftX (X Y : R) (n : ℕ) (a : List DC) :
    interpret X Y (shiftX n a) = Coefficients.scale (X^n) (interpret X Y a) := by
  induction a with
  | nil => rfl
  | cons c cs ih =>
    simp only [shiftX,List.map_cons,interpret,HornerReflector.evalII_shiftX,
      Coefficients.scale] at *
    rw [ih]

end NoFourMUBs.Step2.Critical.NonzeroClearing.SumClearing.SwapCoefficients

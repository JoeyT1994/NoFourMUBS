import NoFourMUBs.Reuse.Archive.CriticalZeroSplitCore

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 1500000
namespace CriticalZeroSplitReduction20261003.Coefficients
variable {R : Type*} [CommRing R]

def eval (t : R) : List R → R
  | [] => 0
  | a::as => a+t*eval t as
def add : List R → List R → List R
  | [], bs => bs
  | as, [] => as
  | a::as, b::bs => (a+b)::add as bs
def neg (as : List R) : List R := as.map (fun a => -a)
def scale (c : R) (as : List R) : List R := as.map (fun a => c*a)
def shift (n : ℕ) (as : List R) : List R := List.replicate n 0 ++ as
def allZero : List R → Prop
  | [] => True
  | a::as => a=0 ∧ allZero as

theorem eval_add (t : R) (as bs : List R) : eval t (add as bs)=eval t as+eval t bs := by
  induction as generalizing bs with
  | nil => simp [add,eval]
  | cons a as ih =>
    cases bs with
    | nil => simp [add,eval]
    | cons b bs => simp only [add,eval,ih]; ring

theorem eval_neg (t : R) (as : List R) : eval t (neg as)= -eval t as := by
  induction as with
  | nil => simp [neg,eval]
  | cons a as ih => simp only [neg,List.map_cons,eval] at *; rw [ih]; ring

theorem eval_scale (c t : R) (as : List R) : eval t (scale c as)=c*eval t as := by
  induction as with
  | nil => simp [scale,eval]
  | cons a as ih => simp only [scale,List.map_cons,eval] at *; rw [ih]; ring

theorem eval_shift (n : ℕ) (t : R) (as : List R) : eval t (shift n as)=t^n*eval t as := by
  induction n with
  | zero => simp [shift,eval]
  | succ n ih => simp only [shift,List.replicate_succ,List.cons_append,eval,zero_add] at *
                 rw [ih,pow_succ]; ring

theorem eval_allZero (t : R) (as : List R) (h : allZero as) : eval t as=0 := by
  induction as with
  | nil => rfl
  | cons a as ih => rcases h with ⟨ha,hs⟩; simp [eval,ha,ih hs]

def eval2 (K z : R) : List (List R) → R
  | [] => 0
  | a::as => eval z a+K*eval2 K z as
def add2 : List (List R) → List (List R) → List (List R)
  | [], bs => bs
  | as, [] => as
  | a::as, b::bs => add a b::add2 as bs
def neg2 (as : List (List R)) : List (List R) := as.map neg
def scale2 (c : R) (as : List (List R)) : List (List R) := as.map (scale c)
def shiftZ (n : ℕ) (as : List (List R)) : List (List R) := as.map (shift n)
def shiftK (n : ℕ) (as : List (List R)) : List (List R) := List.replicate n [] ++ as
def allZero2 : List (List R) → Prop
  | [] => True
  | a::as => allZero a ∧ allZero2 as

theorem eval2_add (K z : R) (as bs : List (List R)) :
    eval2 K z (add2 as bs)=eval2 K z as+eval2 K z bs := by
  induction as generalizing bs with
  | nil => simp [add2,eval2]
  | cons a as ih =>
    cases bs with
    | nil => simp [add2,eval2]
    | cons b bs => simp only [add2,eval2,eval_add,ih]; ring

theorem eval2_neg (K z : R) (as : List (List R)) :
    eval2 K z (neg2 as)= -eval2 K z as := by
  induction as with
  | nil => simp [neg2,eval2]
  | cons a as ih => simp only [neg2,List.map_cons,eval2,eval_neg] at *; rw [ih]; ring

theorem eval2_scale (c K z : R) (as : List (List R)) :
    eval2 K z (scale2 c as)=c*eval2 K z as := by
  induction as with
  | nil => simp [scale2,eval2]
  | cons a as ih => simp only [scale2,List.map_cons,eval2,eval_scale] at *; rw [ih]; ring

theorem eval2_shiftZ (n : ℕ) (K z : R) (as : List (List R)) :
    eval2 K z (shiftZ n as)=z^n*eval2 K z as := by
  induction as with
  | nil => simp [shiftZ,eval2]
  | cons a as ih => simp only [shiftZ,List.map_cons,eval2,eval_shift] at *; rw [ih]; ring

theorem eval2_shiftK (n : ℕ) (K z : R) (as : List (List R)) :
    eval2 K z (shiftK n as)=K^n*eval2 K z as := by
  induction n with
  | zero => simp [shiftK,eval2]
  | succ n ih => simp only [shiftK,List.replicate_succ,List.cons_append,eval2,eval,zero_add] at *
                 rw [ih,pow_succ]; ring

theorem eval2_allZero (K z : R) (as : List (List R)) (h : allZero2 as) :
    eval2 K z as=0 := by
  induction as with
  | nil => rfl
  | cons a as ih => rcases h with ⟨ha,hs⟩; simp [eval2,eval_allZero z a ha,ih hs]

def mulFy (X Y : R) (q : List (List R)) : List (List R) :=
  add2 (scale2 (X^2+X*Y+Y^2-9*X-9*Y) q)
    (add2 (scale2 (X+Y+9) (shiftZ 2 q))
      (add2 (scale2 6 (shiftZ 3 q)) (add2 (shiftZ 4 q) (shiftK 1 q))))
def mulFx (X : R) (q : List (List R)) : List (List R) :=
  add2 (scale2 (X^3-9*X^2) q)
    (add2 (scale2 (X^2+9*X) (shiftZ 2 q))
      (add2 (scale2 (6*X) (shiftZ 3 q))
        (add2 (scale2 X (shiftZ 4 q)) (scale2 (X-1) (shiftK 1 q)))))

theorem eval2_mulFy (X Y K z : R) (q : List (List R)) :
    eval2 K z (mulFy X Y q)=fy X Y z K*eval2 K z q := by
  simp only [mulFy,eval2_add,eval2_scale,eval2_shiftZ,eval2_shiftK,fy]
  ring

theorem eval2_mulFx (X K z : R) (q : List (List R)) :
    eval2 K z (mulFx X q)=fx X z K*eval2 K z q := by
  simp only [mulFx,eval2_add,eval2_scale,eval2_shiftZ,eval2_shiftK,fx]
  ring

/-- The finite coefficient certificate proves an ideal reduction in any
commutative ring. Neither a field nor a nonzero denominator is required. -/
theorem ideal_reduction (X Y z K : R) (n qy qx r : List (List R))
    (hcert : allZero2 (add2 n (neg2 (add2 (mulFy X Y qy) (add2 (mulFx X qx) r)))))
    (hy : fy X Y z K=0) (hx : fx X z K=0) : eval2 K z n=eval2 K z r := by
  have he := eval2_allZero K z _ hcert
  simp only [eval2_add,eval2_neg,eval2_mulFy,eval2_mulFx,hy,hx,zero_mul,zero_add] at he
  linear_combination he

#print axioms eval_add
#print axioms eval_neg
#print axioms eval_scale
#print axioms eval_shift
#print axioms eval_allZero
#print axioms eval2_add
#print axioms eval2_neg
#print axioms eval2_scale
#print axioms eval2_shiftZ
#print axioms eval2_shiftK
#print axioms eval2_allZero
#print axioms eval2_mulFy
#print axioms eval2_mulFx
#print axioms ideal_reduction
end CriticalZeroSplitReduction20261003.Coefficients

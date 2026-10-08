module
public import ReflectedLargeTables
import all ReflectedLargeTables
import all ReflectedLaurentList
public section
set_option autoImplicit false
set_option maxHeartbeats 2000000
namespace Centiradian20261006.ReflectedLaurent

@[expose] def mergeNormalize (p q : List Term) : List Term :=
  dropZeros (compress (mergeFuel (p.length+q.length) p q))

@[expose] def productFuel : Nat → List Term → List Term → List Term
  | 0, p, q => rawMul p q
  | _+1, [], _ => []
  | _+1, [a], q => q.map (mulTerm a)
  | n+1, a::b::p, q =>
      let all := a::b::p
      let k := all.length/2
      mergeNormalize (productFuel n (all.take k) q) (productFuel n (all.drop k) q)

@[expose] def fastMul (p q : List Term) : List Term := productFuel 32 p q

theorem eval_mergeNormalize (h : Exp4 → ℂ) (p q : List Term) :
    eval h (mergeNormalize p q) = eval h p+eval h q := by
  rw [mergeNormalize,eval_dropZeros,eval_compress,eval_mergeFuel]

theorem eval_productFuel (h : Exp4 → ℂ)
    (hm : ∀ a b, h (addExp a b)=h a*h b) (n : Nat) (p q : List Term) :
    eval h (productFuel n p q)=eval h p*eval h q := by
  induction n generalizing p q with
  | zero => exact eval_rawMul h hm p q
  | succ n ih =>
    cases p with
    | nil => simp [productFuel,eval_nil]
    | cons a p =>
      cases p with
      | nil => simp [productFuel,eval_map_mulTerm h hm,eval_cons,eval_nil]
      | cons b p =>
        simp only [productFuel,eval_mergeNormalize,ih,← add_mul,← eval_append,
          List.take_append_drop]

theorem eval_fastMul (h : Exp4 → ℂ)
    (hm : ∀ a b, h (addExp a b)=h a*h b) (p q : List Term) :
    eval h (fastMul p q)=eval h p*eval h q :=
  eval_productFuel h hm 32 p q

end Centiradian20261006.ReflectedLaurent
#print axioms Centiradian20261006.ReflectedLaurent.eval_mergeNormalize
#print axioms Centiradian20261006.ReflectedLaurent.eval_productFuel
#print axioms Centiradian20261006.ReflectedLaurent.eval_fastMul

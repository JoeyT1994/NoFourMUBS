module
public import ReflectedFullTable
import all ReflectedFullTable
import all ReflectedLaurentList
public section
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 3000000
namespace Centiradian20261006.ReflectedLaurent

structure Nat4 where
  n0 : ℕ
  n1 : ℕ
  n2 : ℕ
  n3 : ℕ
  deriving DecidableEq, Repr

/-- Integer pair A,B representing the unscaled Fourier moment A+B*omega at
seed2442. Its analytic phase interpretation is a separate explicit bridge. -/
@[expose] def momentTerm (α : Nat4) (t : Term) : ℤ × ℤ :=
  let e := t.exponent
  let v := t.coefficient * e.x0^α.n0 * e.x1^α.n1 * e.x2^α.n2 * e.x3^α.n3
  let residue := (e.x0+2*e.x1+2*e.x2+e.x3)%3
  if residue=0 then (v,0) else if residue=1 then (0,v) else (-v,-v)

@[expose] def momentAdd (a b : ℤ × ℤ) : ℤ × ℤ := (a.1+b.1,a.2+b.2)
@[expose] def momentList (p : List Term) (α : Nat4) : ℤ × ℤ :=
  p.foldl (fun acc t => momentAdd acc (momentTerm α t)) (0,0)
@[expose] def seedMoment (α : Nat4) : ℤ × ℤ := momentList tableFullR α

theorem seedMoment_zero_order : seedMoment ⟨0,0,0,0⟩=(0,0) := by decide

end Centiradian20261006.ReflectedLaurent
#print axioms Centiradian20261006.ReflectedLaurent.seedMoment_zero_order

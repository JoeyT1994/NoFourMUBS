import CriticalZeroHornerReflector

set_option autoImplicit false
namespace CriticalPseudoReduction20261003
variable {F : Type*} [Field F]

/-- One exact step of the pinned pseudo-remainder algorithm. The denominator
clearing multiplier is h^3; `removed` records every cancelled h factor. -/
structure Step (F : Type*) where
  next : F
  quotient : F
  removed : ℕ

def ValidTrace (h relation current : F) : List (Step F) → Prop
  | [] => True
  | s::ss => h^s.removed*s.next=h^3*current-s.quotient*relation ∧
      ValidTrace h relation s.next ss

def endpoint (current : F) : List (Step F) → F
  | [] => current
  | s::ss => endpoint s.next ss

theorem step_preserves_zero (h relation current : F) (s : Step F)
    (hh : h≠0) (hf : relation=0) (hc : current=0)
    (hs : h^s.removed*s.next=h^3*current-s.quotient*relation) : s.next=0 := by
  rw [hf,hc,mul_zero,mul_zero,sub_self] at hs
  exact (mul_eq_zero.mp hs).resolve_left (pow_ne_zero s.removed hh)

/-- Soundness is independent of the number or sizes of steps. A certificate
must supply the literal equality at every step, and h≠0 is never inferred. -/
theorem trace_preserves_zero (h relation current : F) (ss : List (Step F))
    (hh : h≠0) (hf : relation=0) (hc : current=0)
    (hs : ValidTrace h relation current ss) : endpoint current ss=0 := by
  induction ss generalizing current with
  | nil => exact hc
  | cons s ss ih =>
      exact ih s.next (step_preserves_zero h relation current s hh hf hc hs.1) hs.2

theorem two_traces_preserve_zero (h fy fx initial : F)
    (ys xs : List (Step F)) (hh : h≠0) (hy : fy=0) (hx : fx=0)
    (hN : initial=0) (hys : ValidTrace h fy initial ys)
    (hxs : ValidTrace h fx (endpoint initial ys) xs) :
    endpoint (endpoint initial ys) xs=0 := by
  exact trace_preserves_zero h fx (endpoint initial ys) xs hh hx
    (trace_preserves_zero h fy initial ys hh hy hN hys) hxs

#print axioms step_preserves_zero
#print axioms trace_preserves_zero
#print axioms two_traces_preserve_zero
end CriticalPseudoReduction20261003

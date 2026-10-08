import ExactPhaseInput
import ExactMeanTerminal

/-! Matrix-specific phase box rejection. The exact interval interpreter and
phase enclosure are connected before importing maximal-quartet transport.
-/
set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace ExactMeanChecker20261006
open Centiradian20261006 Mub6.GlobalBoxCover20261006

attribute [local irreducible] certificate rejectsPlus rejectsMinus rejectsBoth

theorem phase_box_rejects_physical {H : Mat6}
    (hH : Physical H) (hd : Dephased H) (hm : Maximal H) (hR : 0 < leadingR H)
    (b : Box 4) (p : PhaseInput) (hp : p.check b=true)
    (ht : rejectsBoth p.rectangles=true) {x : Fin 4 → ℝ}
    (hx : b.Contains x)
    (hphase : ∀ i : Fin 4, Complex.exp ((x i:ℂ)*Complex.I)=seedEntry H i) : False := by
  have hseed : ∀ i : Fin 4, (p.rectangles i).Contains (seedEntry H i) := by
    intro i
    have hi : (p.rectangles i).Contains (Complex.exp ((x i:ℂ)*Complex.I)) :=
      PhaseInput.sound p b hp hx i
    exact (hphase i) ▸ hi
  exact rejectsBoth_physical hH hd hm hR p.rectangles hseed ht

end ExactMeanChecker20261006
#print axioms ExactMeanChecker20261006.phase_box_rejects_physical

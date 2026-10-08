import D0FullInterface
import ChartPartitionJoined
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1025770 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 15) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 12)))
def hex_1025770 : String := "400A444341424006440608400A4443090743414205404443050505054206400A07084206400644064306060A4341420840440A08084206400A444342064140060806060808"
theorem cover_1025770 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1025770 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 14) (count := 69) (hex := hex_1025770)
  decide +kernel
#print axioms cover_1025770

def state_1025840 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 15) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 12)))
def hex_1025840 : String := "4443420A0A0A43420A4140074407070A0A"
theorem cover_1025840 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1025840 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 17) (hex := hex_1025840)
  decide +kernel
#print axioms cover_1025840

def state_1025858 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 15) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 24)))
def hex_1025858 : String := "434241404443420A0A0A43420A41400A440A0A0A0A444342414044094309090909414044094309090909420941400A09094342414044434241400A050941400A44094305054009090A43424105400A0541400A05400A444309080808444309084342054105404405050508404443090943420A41400A0A0A0A4409430909414044434241404443090943420A070A4409430909400A0941404443060907064044090A09420A0A4342414044430707074443420506420806430608400A4443090943424105400A0541064007060A410740440A0744430606430606420A0A44434209064209094342410640440943420506080606420841060640444342090909434241400A4409434209090A0A41400A4409434209060A400A090A440943420909420909420A41400A444342080908080A400A4409434241400A0907414044094342090A0A09400A090A4140444342414405400543050505050A43424140074443070A07400544050A050A44434241404408430842090506094105054241400A090905434241404443424106400806064241060A0643074241060A06064044430805434241404405070608050A44094342090642090641064005064241400A44430606430606400A4409434209060A4106400506404405430505444305054342414044054305050940050905420A05420A41400A44420A0A420A0A0A"
theorem cover_1025858 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1025858 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 20) (count := 507) (hex := hex_1025858)
  decide +kernel
#print axioms cover_1025858


end Mub6.Numerical.CircleFullD0.Forest

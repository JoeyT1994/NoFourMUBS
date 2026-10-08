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
def state_1307750 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 11) else (if j.val < 3 then 12 else (if j.val < 4 then 15 else 11)))
def hex_1307750 : String := "414244400643420641440640064306060606404342440505050543424441400A43420A44410A060A0606410A400606444140434244050505054342444140430605434206060606410A0644410906414005430705400643060606064140054344420A41074008430806420A07054008434442060608064206054440094341090606400543444142400543440942410708070509424006060841424005430705050805420644064006430806"
theorem cover_1307750 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1307750 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 17) (count := 171) (hex := hex_1307750)
  decide +kernel
#print axioms cover_1307750

def state_1307922 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 11) else (if j.val < 3 then 12 else (if j.val < 4 then 14 else 11)))
def hex_1307922 : String := "41424440430542054144054043054205440541404305090505050505404305424441404305424405054405410A050505410905444140430542444140430542440541080544410905410705050541404305420A4441070507050544414043054244090707050541400705404305440542050705050541404305444241400705054107400705420907050505444043054142440A40430542440941090509050A0A0540430544414240430544424107404305440607050742410740070507050742404305440A0805084142400705074240080508054205440A40430541440A080805"
theorem cover_1307922 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1307922 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 19) (count := 225) (hex := hex_1307922)
  decide +kernel
#print axioms cover_1307922


end Mub6.Numerical.CircleFullD0.Forest

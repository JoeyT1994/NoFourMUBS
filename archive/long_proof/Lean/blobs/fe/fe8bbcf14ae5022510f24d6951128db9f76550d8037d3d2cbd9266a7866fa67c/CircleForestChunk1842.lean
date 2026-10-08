import CircleFullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_2315252 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 55) else (if j.val < 3 then 20 else (if j.val < 4 then 57 else 44)))
def hex_2315252 : String := "424044094309094443094142050509434142090509414240094405094009050940440909444305094309410709"
theorem cover_2315252 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2315252 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 45) (hex := hex_2315252)
  decide +kernel
#print axioms cover_2315252

def state_2315298 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 27) else (if j.val < 3 then 20 else (if j.val < 4 then 56 else 45)))
def hex_2315298 : String := "4142404443070707070742404443090943410706084443064142060706430641070607"
theorem cover_2315298 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2315298 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 35) (hex := hex_2315298)
  decide +kernel
#print axioms cover_2315298

def state_2315334 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 54) else (if j.val < 3 then 20 else (if j.val < 4 then 57 else 45)))
def hex_2315334 : String := "424044434241070807420807430708444307424107400807070707"
theorem cover_2315334 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2315334 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 27) (hex := hex_2315334)
  decide +kernel
#print axioms cover_2315334

def state_2315361 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 55) else (if j.val < 3 then 20 else (if j.val < 4 then 57 else 45)))
def hex_2315361 : String := "42404443410808080844434142400844090707094142400844430808080842080843410708084044430908084443070707"
theorem cover_2315361 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2315361 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 49) (hex := hex_2315361)
  decide +kernel
#print axioms cover_2315361

def state_2315411 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 27) else (if j.val < 3 then 20 else (if j.val < 4 then 29 else 22)))
def hex_2315411 : String := "4443414206064240084409080A41064206064341080808"
theorem cover_2315411 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2315411 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_2315411)
  decide +kernel
#print axioms cover_2315411

def state_2315437 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 54) else (if j.val < 3 then 20 else (if j.val < 4 then 58 else 44)))
def hex_2315437 : String := "42404443420606064342060606444305424105400605054342410540440508054105404405050542410640064405060640440606440543054105420605"
theorem cover_2315437 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2315437 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 61) (hex := hex_2315437)
  decide +kernel
#print axioms cover_2315437
end Mub6.Numerical.CircleFullD0.Forest

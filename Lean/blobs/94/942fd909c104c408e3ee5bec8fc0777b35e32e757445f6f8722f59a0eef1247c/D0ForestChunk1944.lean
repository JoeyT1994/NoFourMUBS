import D0FullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_2547121 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 44) else (if j.val < 3 then 32 else (if j.val < 4 then 33 else 44)))
def hex_2547121 : String := "404144434240090606064342074440050605074409054144060744434208060643420740050707"
theorem cover_2547121 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2547121 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 39) (hex := hex_2547121)
  decide +kernel
#print axioms cover_2547121

def state_2547160 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 44) else (if j.val < 3 then 33 else (if j.val < 4 then 16 else 44)))
def hex_2547160 : String := "4340414442434008060606084442430A41400506050A054144064243090606440A42430A40050A0A40414406084409054106440642434005060606"
theorem cover_2547160 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2547160 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 59) (hex := hex_2547160)
  decide +kernel
#print axioms cover_2547160

def state_2547219 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 44) else (if j.val < 3 then 16 else (if j.val < 4 then 16 else 45)))
def hex_2547219 : String := "4243444005410705054440050705434440054108050544400541080505"
theorem cover_2547219 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2547219 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 29) (hex := hex_2547219)
  decide +kernel
#print axioms cover_2547219

def state_2547248 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 45) else (if j.val < 3 then 16 else (if j.val < 4 then 16 else 22)))
def hex_2547248 : String := "4442434140054408050541400544080505434140050A054140054409050505"
theorem cover_2547248 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2547248 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 31) (hex := hex_2547248)
  decide +kernel
#print axioms cover_2547248

def state_2547280 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 44) else (if j.val < 3 then 16 else (if j.val < 4 then 16 else 22)))
def hex_2547280 : String := "4442434041440507440842434041070707074309404107070741050840410644060706434041060A06064207430940444106070707"
theorem cover_2547280 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2547280 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 53) (hex := hex_2547280)
  decide +kernel
#print axioms cover_2547280

def state_2547333 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 45) else (if j.val < 3 then 16 else (if j.val < 4 then 16 else 22)))
def hex_2547333 : String := "444208430A404144060A0808424340054107054005074340050A4005410705"
theorem cover_2547333 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2547333 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 31) (hex := hex_2547333)
  decide +kernel
#print axioms cover_2547333
end Mub6.Numerical.CircleFullD0.Forest

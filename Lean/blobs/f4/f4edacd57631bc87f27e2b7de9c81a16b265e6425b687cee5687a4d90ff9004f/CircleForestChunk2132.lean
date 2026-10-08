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
def state_2592280 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 19) else (if j.val < 3 then 49 else (if j.val < 4 then 23 else 20)))
def hex_2592280 : String := "434041440906060940414443424041070609094240070740070907444309420A09064144090709"
theorem cover_2592280 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2592280 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 39) (hex := hex_2592280)
  decide +kernel
#print axioms cover_2592280

def state_2592319 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 9) else (if j.val < 3 then 24 else (if j.val < 4 then 23 else 21)))
def hex_2592319 : String := "41074206430607"
theorem cover_2592319 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2592319 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_2592319)
  decide +kernel
#print axioms cover_2592319

def state_2592326 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 27 else 9) else (if j.val < 3 then 24 else (if j.val < 4 then 23 else 10)))
def hex_2592326 : String := "44414243054108084309414044060806094243054109090941424344050707430944410707074243090709"
theorem cover_2592326 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2592326 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 43) (hex := hex_2592326)
  decide +kernel
#print axioms cover_2592326

def state_2592370 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 9) else (if j.val < 3 then 25 else (if j.val < 4 then 22 else 10)))
def hex_2592370 : String := "40440941090909"
theorem cover_2592370 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2592370 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_2592370)
  decide +kernel
#print axioms cover_2592370

def state_2592379 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 9) else (if j.val < 3 then 25 else (if j.val < 4 then 23 else 20)))
def hex_2592379 : String := "41434240414409070909094240414443424005090542070507444309424005070507414409070940410505094309424041440907090909"
theorem cover_2592379 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2592379 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 55) (hex := hex_2592379)
  decide +kernel
#print axioms cover_2592379

def state_2592434 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 9) else (if j.val < 3 then 25 else (if j.val < 4 then 23 else 21)))
def hex_2592434 : String := "4143420707074309420707"
theorem cover_2592434 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2592434 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 11) (hex := hex_2592434)
  decide +kernel
#print axioms cover_2592434

def state_2592445 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 27 else 9) else (if j.val < 3 then 25 else (if j.val < 4 then 23 else 10)))
def hex_2592445 : String := "44410909414309424409070909"
theorem cover_2592445 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2592445 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 13) (hex := hex_2592445)
  decide +kernel
#print axioms cover_2592445

def state_2592458 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 11 else 11)))
def hex_2592458 : String := "414243444006414243440506074309074243060709060743444007414243090709090707424306444006070643444006090644400741070707"
theorem cover_2592458 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2592458 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 57) (hex := hex_2592458)
  decide +kernel
#print axioms cover_2592458

def state_2592516 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 4) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 5)))
def hex_2592516 : String := "440941440940060909"
theorem cover_2592516 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2592516 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_2592516)
  decide +kernel
#print axioms cover_2592516
end Mub6.Numerical.CircleFullD0.Forest

import CircleFullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_47338 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 19) else (if j.val < 3 then 20 else (if j.val < 4 then 47 else 42)))
def hex_47338 : String := "41424308444041420608064108064007084344404105090808444041050741084243084490074308054005084206434440060909444007414206090607"
theorem cover_47338 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_47338 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 61) (hex := hex_47338)
  decide +kernel
#print axioms cover_47338

def state_47399 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 19) else (if j.val < 3 then 20 else (if j.val < 4 then 47 else 42)))
def hex_47399 : String := "4142084308444108404208080808424306444006050643440908444041424308449040070809420609414208094205094041090709"
theorem cover_47399 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_47399 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 53) (hex := hex_47399)
  decide +kernel
#print axioms cover_47399

def state_47452 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 20 else (if j.val < 4 then 47 else 43)))
def hex_47452 : String := "4041420805074108420609"
theorem cover_47452 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_47452 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 11) (hex := hex_47452)
  decide +kernel
#print axioms cover_47452

def state_47465 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 9) else (if j.val < 3 then 21 else (if j.val < 4 then 23 else 20)))
def hex_47465 : String := "41430A05430A42414005440A050A0A"
theorem cover_47465 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_47465 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_47465)
  decide +kernel
#print axioms cover_47465

def state_47481 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 18) else (if j.val < 3 then 21 else (if j.val < 4 then 23 else 20)))
def hex_47481 : String := "434240410744070807400A06424041054407050606"
theorem cover_47481 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_47481 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 21) (hex := hex_47481)
  decide +kernel
#print axioms cover_47481

def state_47503 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 21 else (if j.val < 4 then 46 else 20)))
def hex_47503 : String := "42400A41074407090A"
theorem cover_47503 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_47503 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_47503)
  decide +kernel
#print axioms cover_47503

def state_47514 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 19) else (if j.val < 3 then 42 else (if j.val < 4 then 47 else 20)))
def hex_47514 : String := "4144430A42404144070A0A07400A064342400A41090909424041050A410644430A429006430905400506440A430A42400A41440A090A0A"
theorem cover_47514 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_47514 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 55) (hex := hex_47514)
  decide +kernel
#print axioms cover_47514
end Mub6.Numerical.CircleFullPrototype.Forest

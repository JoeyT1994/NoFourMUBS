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
def state_2584239 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 20) else (if j.val < 3 then 23 else (if j.val < 4 then 25 else 9)))
def hex_2584239 : String := "444243404441080A08080843404441424340050805430A050A41420843400508050A4441080A084044050508420843404441080A080808"
theorem cover_2584239 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2584239 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 55) (hex := hex_2584239)
  decide +kernel
#print axioms cover_2584239

def state_2584294 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 21) else (if j.val < 3 then 23 else (if j.val < 4 then 25 else 9)))
def hex_2584294 : String := "4442430A0A0A4208430A0A"
theorem cover_2584294 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2584294 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 11) (hex := hex_2584294)
  decide +kernel
#print axioms cover_2584294

def state_2584305 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 27 else 10) else (if j.val < 3 then 23 else (if j.val < 4 then 25 else 9)))
def hex_2584305 : String := "41440808444208434108080808"
theorem cover_2584305 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2584305 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 13) (hex := hex_2584305)
  decide +kernel
#print axioms cover_2584305

def state_2584318 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 10) else (if j.val < 3 then 11 else (if j.val < 4 then 13 else 4)))
def hex_2584318 : String := "44424041080A08404143444240050605420805050A414306064344424106080642084106080542084041434408080543440A080508"
theorem cover_2584318 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2584318 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 53) (hex := hex_2584318)
  decide +kernel
#print axioms cover_2584318

def state_2584372 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 11) else (if j.val < 3 then 10 else (if j.val < 4 then 6 else 4)))
def hex_2584372 : String := "434441430608060644410840060708"
theorem cover_2584372 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2584372 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 15) (hex := hex_2584372)
  decide +kernel
#print axioms cover_2584372

def state_2584388 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 12 else 4)))
def hex_2584388 : String := "44414243400644434142050A0A4142080A0A4341080608400A444142080A0A08430A0A4243060A0A414243064006084340060A400A440A0842060A"
theorem cover_2584388 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2584388 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 59) (hex := hex_2584388)
  decide +kernel
#print axioms cover_2584388

def state_2584447 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 13 else 4)))
def hex_2584447 : String := "444142400A080A0A414208400A0842080A"
theorem cover_2584447 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2584447 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 17) (hex := hex_2584447)
  decide +kernel
#print axioms cover_2584447
end Mub6.Numerical.CircleFullD0.Forest

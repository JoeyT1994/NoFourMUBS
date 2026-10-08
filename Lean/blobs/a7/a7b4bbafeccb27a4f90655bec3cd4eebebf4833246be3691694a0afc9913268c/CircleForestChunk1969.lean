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
def state_2553136 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 47) else (if j.val < 3 then 29 else (if j.val < 4 then 28 else 47)))
def hex_2553136 : String := "430505"
theorem cover_2553136 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2553136 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_2553136)
  decide +kernel
#print axioms cover_2553136

def state_2553139 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 29 else (if j.val < 4 then 29 else 23)))
def hex_2553139 : String := "4144054006054440060540424341440540060544400605404243E2060642434105440540E205410508434105440509060606420505"
theorem cover_2553139 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2553139 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 14) (count := 53) (hex := hex_2553139)
  decide +kernel
#print axioms cover_2553139

def state_2553192 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 11) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 11)))
def hex_2553192 : String := "41054405420505"
theorem cover_2553192 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2553192 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_2553192)
  decide +kernel
#print axioms cover_2553192

def state_2553199 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 14 else (if j.val < 4 then 15 else 11)))
def hex_2553199 : String := "404105440542434105440540420808050843410544054006050605"
theorem cover_2553199 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2553199 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 27) (hex := hex_2553199)
  decide +kernel
#print axioms cover_2553199

def state_2553226 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 15 else (if j.val < 4 then 7 else 11)))
def hex_2553226 : String := "434041054405434241054405404309090509424105440540060506054041050605"
theorem cover_2553226 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2553226 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 33) (hex := hex_2553226)
  decide +kernel
#print axioms cover_2553226

def state_2553261 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
def hex_2553261 : String := "42430A4442080A080A"
theorem cover_2553261 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2553261 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_2553261)
  decide +kernel
#print axioms cover_2553261

def state_2553272 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 3)))
def hex_2553272 : String := "44410A42430A0A4344400A08080A08"
theorem cover_2553272 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2553272 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_2553272)
  decide +kernel
#print axioms cover_2553272

def state_2553289 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 10) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 6)))
def hex_2553289 : String := "4244400A430A42444109400A090844410A400A430A44060A0A0844400A430A0A0A"
theorem cover_2553289 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2553289 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 33) (hex := hex_2553289)
  decide +kernel
#print axioms cover_2553289

def state_2553323 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 11) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 6)))
def hex_2553323 : String := "44400A43410A420A0A414244404309420907090A4440074344090A4407410A4209070A42444009090A444007430941440707070A0A"
theorem cover_2553323 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2553323 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 53) (hex := hex_2553323)
  decide +kernel
#print axioms cover_2553323
end Mub6.Numerical.CircleFullD0.Forest

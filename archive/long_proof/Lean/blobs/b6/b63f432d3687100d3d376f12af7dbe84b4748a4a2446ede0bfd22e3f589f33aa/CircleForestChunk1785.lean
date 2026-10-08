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
def state_2301555 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 26) else (if j.val < 3 then 19 else (if j.val < 4 then 26 else 46)))
def hex_2301555 : String := "41074342444043060706060742444041074308084107430607404107080707"
theorem cover_2301555 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2301555 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 31) (hex := hex_2301555)
  decide +kernel
#print axioms cover_2301555

def state_2301586 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 26) else (if j.val < 3 then 19 else (if j.val < 4 then 26 else 47)))
def hex_2301586 : String := "40414307074342444308080807084107430707"
theorem cover_2301586 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2301586 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_2301586)
  decide +kernel
#print axioms cover_2301586

def state_2301608 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 26) else (if j.val < 3 then 18 else (if j.val < 4 then 27 else 46)))
def hex_2301608 : String := "41424344410A050505430A0605"
theorem cover_2301608 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2301608 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 13) (hex := hex_2301608)
  decide +kernel
#print axioms cover_2301608

def state_2301627 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 104) else (if j.val < 3 then 36 else (if j.val < 4 then 54 else 92)))
def hex_2301627 : String := "42434441400AC4400AC441400A074005434244C405070544410A0841080543444107400AC441070A0A"
theorem cover_2301627 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2301627 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 41) (hex := hex_2301627)
  decide +kernel
#print axioms cover_2301627

def state_2301668 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 105) else (if j.val < 3 then 36 else (if j.val < 4 then 54 else 92)))
def hex_2301668 : String := "424344400541C443050505054344400841C4084005414307050508"
theorem cover_2301668 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2301668 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 27) (hex := hex_2301668)
  decide +kernel
#print axioms cover_2301668

def state_2301696 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 104) else (if j.val < 3 then 36 else (if j.val < 4 then 54 else 92)))
def hex_2301696 : String := "424344C44041074307070744C440410742050841074243070707430744C407"
theorem cover_2301696 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2301696 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 31) (hex := hex_2301696)
  decide +kernel
#print axioms cover_2301696

def state_2301728 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 105) else (if j.val < 3 then 72 else (if j.val < 4 then 54 else 92)))
def hex_2301728 : String := "43444041C4430642050841C40640414306050506444041C40541C4424306054306084005414243050543070505"
theorem cover_2301728 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2301728 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 45) (hex := hex_2301728)
  decide +kernel
#print axioms cover_2301728

def state_2301773 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 105) else (if j.val < 3 then 73 else (if j.val < 4 then 54 else 92)))
def hex_2301773 : String := "43444041C4434206060841070640410743060507444041080841C442430808084008410708"
theorem cover_2301773 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2301773 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 37) (hex := hex_2301773)
  decide +kernel
#print axioms cover_2301773
end Mub6.Numerical.CircleFullD0.Forest

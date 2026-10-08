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
def state_1010481 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 17 else (if j.val < 4 then 26 else 22)))
def hex_1010481 : String := "440743414205404409090907410807"
theorem cover_1010481 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1010481 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_1010481)
  decide +kernel
#print axioms cover_1010481

def state_1010496 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 29) else (if j.val < 3 then 8 else (if j.val < 4 then 26 else 22)))
def hex_1010496 : String := "42074044060907"
theorem cover_1010496 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1010496 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1010496)
  decide +kernel
#print axioms cover_1010496

def state_1010503 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 8 else (if j.val < 4 then 27 else 22)))
def hex_1010503 : String := "4142400605404441430706060A44070807"
theorem cover_1010503 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1010503 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_1010503)
  decide +kernel
#print axioms cover_1010503

def state_1010523 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 16 else (if j.val < 4 then 26 else 23)))
def hex_1010523 : String := "40444305050505"
theorem cover_1010523 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1010523 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1010523)
  decide +kernel
#print axioms cover_1010523

def state_1010532 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 28) else (if j.val < 3 then 17 else (if j.val < 4 then 26 else 46)))
def hex_1010532 : String := "4341420540444341054205400A4409050A4341050505444341050505054240064409054044430A0A0A44094341050941050941080A"
theorem cover_1010532 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1010532 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 53) (hex := hex_1010532)
  decide +kernel
#print axioms cover_1010532

def state_1010585 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 28) else (if j.val < 3 then 17 else (if j.val < 4 then 26 else 47)))
def hex_1010585 : String := "434105420544400A430505400A0508"
theorem cover_1010585 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1010585 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_1010585)
  decide +kernel
#print axioms cover_1010585

def state_1010600 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 17 else (if j.val < 4 then 26 else 23)))
def hex_1010600 : String := "44434105420509084341050505"
theorem cover_1010600 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1010600 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_1010600)
  decide +kernel
#print axioms cover_1010600

def state_1010613 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 29) else (if j.val < 3 then 8 else (if j.val < 4 then 26 else 23)))
def hex_1010613 : String := "424006440705404443414206400609060A4341420A44400A4309090A0A0A4409434142054044094305050909410807"
theorem cover_1010613 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1010613 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 47) (hex := hex_1010613)
  decide +kernel
#print axioms cover_1010613

def state_1010660 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 8 else (if j.val < 4 then 27 else 23)))
def hex_1010660 : String := "41080A"
theorem cover_1010660 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1010660 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_1010660)
  decide +kernel
#print axioms cover_1010660

def state_1010669 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 28) else (if j.val < 3 then 18 else (if j.val < 4 then 26 else 22)))
def hex_1010669 : String := "4443080A0A"
theorem cover_1010669 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1010669 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1010669)
  decide +kernel
#print axioms cover_1010669

def state_1010675 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 28) else (if j.val < 3 then 18 else (if j.val < 4 then 26 else 44)))
def hex_1010675 : String := "4341424044050A4443054142060505430841420A050A050541420A4005440543050A0A"
theorem cover_1010675 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1010675 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 35) (hex := hex_1010675)
  decide +kernel
#print axioms cover_1010675
end Mub6.Numerical.CircleFullD0.Forest

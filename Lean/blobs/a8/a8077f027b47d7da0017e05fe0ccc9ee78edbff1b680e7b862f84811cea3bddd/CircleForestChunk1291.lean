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
def state_1610380 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 20) else (if j.val < 3 then 26 else (if j.val < 4 then 29 else 50)))
def hex_1610380 : String := "424341084406054144080844404243064144409F06409F05064341080A410844400A064042050808420508404205430841080505430808"
theorem cover_1610380 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1610380 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 55) (hex := hex_1610380)
  decide +kernel
#print axioms cover_1610380

def state_1610435 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 20) else (if j.val < 3 then 26 else (if j.val < 4 then 29 else 51)))
def hex_1610435 : String := "424341050541080508"
theorem cover_1610435 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1610435 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_1610435)
  decide +kernel
#print axioms cover_1610435

def state_1610444 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 20) else (if j.val < 3 then 26 else (if j.val < 4 then 29 else 25)))
def hex_1610444 : String := "44424306080808"
theorem cover_1610444 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1610444 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1610444)
  decide +kernel
#print axioms cover_1610444

def state_1610451 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 20) else (if j.val < 3 then 27 else (if j.val < 4 then 14 else 25)))
def hex_1610451 : String := "430808"
theorem cover_1610451 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1610451 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_1610451)
  decide +kernel
#print axioms cover_1610451

def state_1610456 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 21) else (if j.val < 3 then 26 else (if j.val < 4 then 28 else 25)))
def hex_1610456 : String := "40444106050505"
theorem cover_1610456 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1610456 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1610456)
  decide +kernel
#print axioms cover_1610456

def state_1610466 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 42) else (if j.val < 3 then 26 else (if j.val < 4 then 29 else 50)))
def hex_1610466 : String := "42430544404205414306444042050A060505050543440A0A4440410A42430A440A400A050A0A40410A42050A0A"
theorem cover_1610466 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1610466 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 45) (hex := hex_1610466)
  decide +kernel
#print axioms cover_1610466

def state_1610511 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 43) else (if j.val < 3 then 26 else (if j.val < 4 then 29 else 50)))
def hex_1610511 : String := "42054344060544404142090A094142050A054041050505"
theorem cover_1610511 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1610511 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_1610511)
  decide +kernel
#print axioms cover_1610511

def state_1610534 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 21) else (if j.val < 3 then 26 else (if j.val < 4 then 29 else 51)))
def hex_1610534 : String := "41420543054044410805050505"
theorem cover_1610534 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1610534 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1610534)
  decide +kernel
#print axioms cover_1610534

def state_1610547 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 21) else (if j.val < 3 then 26 else (if j.val < 4 then 29 else 25)))
def hex_1610547 : String := "444142050A0505"
theorem cover_1610547 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1610547 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1610547)
  decide +kernel
#print axioms cover_1610547

def state_1610554 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 21) else (if j.val < 3 then 27 else (if j.val < 4 then 14 else 25)))
def hex_1610554 : String := "430A4044410A430A42440A0A084108430A4240440A050508440A08"
theorem cover_1610554 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1610554 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 27) (hex := hex_1610554)
  decide +kernel
#print axioms cover_1610554

def state_1610581 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 14 else 12)))
def hex_1610581 : String := "44410A42060A41424305080842050A"
theorem cover_1610581 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1610581 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 15) (hex := hex_1610581)
  decide +kernel
#print axioms cover_1610581

def state_1610602 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 20) else (if j.val < 3 then 26 else (if j.val < 4 then 30 else 48)))
def hex_1610602 : String := "404241434405400507054344074042070507440540424105050542070505424107070A"
theorem cover_1610602 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1610602 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 35) (hex := hex_1610602)
  decide +kernel
#print axioms cover_1610602
end Mub6.Numerical.CircleFullD0.Forest

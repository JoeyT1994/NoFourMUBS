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
def state_2300377 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 52) else (if j.val < 3 then 19 else (if j.val < 4 then 27 else 45)))
def hex_2300377 : String := "424344400A05400A074406400641060A430706"
theorem cover_2300377 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2300377 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 19) (hex := hex_2300377)
  decide +kernel
#print axioms cover_2300377

def state_2300398 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 53) else (if j.val < 3 then 38 else (if j.val < 4 then 54 else 45)))
def hex_2300398 : String := "444041424309090A0941424305440540090543050542090940414243080808084142430744400807080742430908430908"
theorem cover_2300398 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2300398 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 49) (hex := hex_2300398)
  decide +kernel
#print axioms cover_2300398

def state_2300447 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 53) else (if j.val < 3 then 38 else (if j.val < 4 then 55 else 45)))
def hex_2300447 : String := "44404106084142434440060508060A4243090843080840084142080808"
theorem cover_2300447 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2300447 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 29) (hex := hex_2300447)
  decide +kernel
#print axioms cover_2300447

def state_2300476 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 53) else (if j.val < 3 then 39 else (if j.val < 4 then 27 else 45)))
def hex_2300476 : String := "4344400A410509400A07444008410A0A0A"
theorem cover_2300476 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2300476 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 17) (hex := hex_2300476)
  decide +kernel
#print axioms cover_2300476

def state_2300494 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 27) else (if j.val < 3 then 9 else (if j.val < 4 then 26 else 22)))
def hex_2300494 : String := "42440940094306420609440940094309420909"
theorem cover_2300494 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2300494 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 19) (hex := hex_2300494)
  decide +kernel
#print axioms cover_2300494

def state_2300514 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 27) else (if j.val < 3 then 18 else (if j.val < 4 then 27 else 22)))
def hex_2300514 : String := "4440074207094042054143080505424143090707414344090944090509"
theorem cover_2300514 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2300514 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 29) (hex := hex_2300514)
  decide +kernel
#print axioms cover_2300514

def state_2300543 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 27) else (if j.val < 3 then 19 else (if j.val < 4 then 27 else 22)))
def hex_2300543 : String := "4440094241430909090940424108054108084241434409400809440908094143440940080944090809"
theorem cover_2300543 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2300543 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 41) (hex := hex_2300543)
  decide +kernel
#print axioms cover_2300543
end Mub6.Numerical.CircleFullD0.Forest

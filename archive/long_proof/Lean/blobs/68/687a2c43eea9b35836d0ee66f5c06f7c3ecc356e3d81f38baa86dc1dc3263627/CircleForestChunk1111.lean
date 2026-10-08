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
def state_1567008 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 30) else (if j.val < 3 then 27 else (if j.val < 4 then 21 else 23)))
def hex_1567008 : String := "44404307424108444008430708084105440807430742070507"
theorem cover_1567008 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1567008 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 25) (hex := hex_1567008)
  decide +kernel
#print axioms cover_1567008

def state_1567036 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 31) else (if j.val < 3 then 27 else (if j.val < 4 then 42 else 46)))
def hex_1567036 : String := "42414440430708070744404309424108050943074241074406074107064043074208070741074440090707"
theorem cover_1567036 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1567036 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 43) (hex := hex_1567036)
  decide +kernel
#print axioms cover_1567036

def state_1567081 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 62) else (if j.val < 3 then 54 else (if j.val < 4 then 43 else 46)))
def hex_1567081 : String := "4440430808434241074440080707074208084008430708"
theorem cover_1567081 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1567081 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 23) (hex := hex_1567081)
  decide +kernel
#print axioms cover_1567081

def state_1567105 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 63) else (if j.val < 3 then 54 else (if j.val < 4 then 43 else 92)))
def hex_1567105 : String := "40434205084205084342414440054307054008070541444043070843064207060744404306050640430705430642050642054144400843420808080805"
theorem cover_1567105 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1567105 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 61) (hex := hex_1567105)
  decide +kernel
#print axioms cover_1567105

def state_1567166 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 63) else (if j.val < 3 then 54 else (if j.val < 4 then 43 else 93)))
def hex_1567166 : String := "4043080843424107050742054108440505"
theorem cover_1567166 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1567166 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 17) (hex := hex_1567166)
  decide +kernel
#print axioms cover_1567166

def state_1567184 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 62) else (if j.val < 3 then 55 else (if j.val < 4 then 43 else 46)))
def hex_1567184 : String := "4440084307420808400807"
theorem cover_1567184 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1567184 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_1567184)
  decide +kernel
#print axioms cover_1567184

def state_1567197 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 63) else (if j.val < 3 then 55 else (if j.val < 4 then 43 else 92)))
def hex_1567197 : String := "4342080808"
theorem cover_1567197 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1567197 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1567197)
  decide +kernel
#print axioms cover_1567197

def state_1567202 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 63) else (if j.val < 3 then 55 else (if j.val < 4 then 43 else 92)))
def hex_1567202 : String := "4342414440080607440640080641070642414440084308080844404308084306420506400843420606084144400843060808444008064008430608"
theorem cover_1567202 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1567202 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 59) (hex := hex_1567202)
  decide +kernel
#print axioms cover_1567202

def state_1567261 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 63) else (if j.val < 3 then 55 else (if j.val < 4 then 43 else 93)))
def hex_1567261 : String := "40084307420808"
theorem cover_1567261 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1567261 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1567261)
  decide +kernel
#print axioms cover_1567261
end Mub6.Numerical.CircleFullD0.Forest

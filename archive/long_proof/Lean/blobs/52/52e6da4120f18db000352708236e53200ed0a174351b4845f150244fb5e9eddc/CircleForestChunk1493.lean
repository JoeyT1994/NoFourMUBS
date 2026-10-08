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
def state_1659015 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 48) else (if j.val < 3 then 29 else (if j.val < 4 then 57 else 46)))
def hex_1659015 : String := "424144054005434241054405050505444005074006430A0606"
theorem cover_1659015 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1659015 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 25) (hex := hex_1659015)
  decide +kernel
#print axioms cover_1659015

def state_1659041 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 48) else (if j.val < 3 then 29 else (if j.val < 4 then 28 else 47)))
def hex_1659041 : String := "430706"
theorem cover_1659041 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1659041 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_1659041)
  decide +kernel
#print axioms cover_1659041

def state_1659045 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 48) else (if j.val < 3 then 29 else (if j.val < 4 then 56 else 47)))
def hex_1659045 : String := "4241444009430942410944400943094209090909074440094309420A4109094007430742090709"
theorem cover_1659045 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1659045 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 39) (hex := hex_1659045)
  decide +kernel
#print axioms cover_1659045

def state_1659084 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 48) else (if j.val < 3 then 29 else (if j.val < 4 then 57 else 47)))
def hex_1659084 : String := "42414440064342414405400943094241050A0544400A43420A41050A0A4009434209090A41054405094241050A0540064342EA0942EA06440A0A06"
theorem cover_1659084 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1659084 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 59) (hex := hex_1659084)
  decide +kernel
#print axioms cover_1659084

def state_1659143 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 49) else (if j.val < 3 then 29 else (if j.val < 4 then 28 else 23)))
def hex_1659143 : String := "44400A4342410A0A41444006430A064006430A060A0A400A43420A444140064309060A070A"
theorem cover_1659143 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1659143 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 37) (hex := hex_1659143)
  decide +kernel
#print axioms cover_1659143

def state_1659180 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 24) else (if j.val < 3 then 29 else (if j.val < 4 then 29 else 23)))
def hex_1659180 : String := "06"
theorem cover_1659180 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1659180 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1659180)
  decide +kernel
#print axioms cover_1659180

def state_1659181 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 25) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 11)))
def hex_1659181 : String := "44400A420A430A060A"
theorem cover_1659181 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1659181 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1659181)
  decide +kernel
#print axioms cover_1659181

def state_1659190 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 14 else (if j.val < 4 then 15 else 11)))
def hex_1659190 : String := "41440840064206060A"
theorem cover_1659190 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1659190 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1659190)
  decide +kernel
#print axioms cover_1659190

def state_1659199 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 15 else (if j.val < 4 then 7 else 11)))
def hex_1659199 : String := "434144400543424105060605400643060644060A06"
theorem cover_1659199 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1659199 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 21) (hex := hex_1659199)
  decide +kernel
#print axioms cover_1659199

def state_1659220 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 5)))
def hex_1659220 : String := "44424340064144060A0606060A"
theorem cover_1659220 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1659220 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1659220)
  decide +kernel
#print axioms cover_1659220

def state_1659235 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 10)))
def hex_1659235 : String := "42434041070707074340414405074409434207060641070707"
theorem cover_1659235 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1659235 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 25) (hex := hex_1659235)
  decide +kernel
#print axioms cover_1659235

def state_1659265 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 24) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 22)))
def hex_1659265 : String := "4207434107404407070707"
theorem cover_1659265 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1659265 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_1659265)
  decide +kernel
#print axioms cover_1659265
end Mub6.Numerical.CircleFullD0.Forest

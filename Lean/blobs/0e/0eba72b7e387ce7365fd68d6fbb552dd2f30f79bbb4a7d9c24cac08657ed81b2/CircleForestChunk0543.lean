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
def state_1319051 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 126) else (if j.val < 3 then 75 else (if j.val < 4 then 206 else 205)))
def hex_1319051 : String := "420741404443060943054207054443420705424140440905058005430542070580"
theorem cover_1319051 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1319051 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 33) (hex := hex_1319051)
  decide +kernel
#print axioms cover_1319051

def state_1319084 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 126) else (if j.val < 3 then 75 else (if j.val < 4 then 207 else 205)))
def hex_1319084 : String := "424140084443420741070708088041400944094342414008444305050508050880"
theorem cover_1319084 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1319084 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 33) (hex := hex_1319084)
  decide +kernel
#print axioms cover_1319084

def state_1319118 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 191 else 126) else (if j.val < 3 then 75 else (if j.val < 4 then 103 else 204)))
def hex_1319118 : String := "43424140440A070A40440A070A08420A4140440943420A07090A40090A"
theorem cover_1319118 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1319118 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 29) (hex := hex_1319118)
  decide +kernel
#print axioms cover_1319118

def state_1319148 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 191 else 126) else (if j.val < 3 then 75 else (if j.val < 4 then 206 else 205)))
def hex_1319148 : String := "42074140444308424105800543054207054408430542070580"
theorem cover_1319148 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1319148 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 25) (hex := hex_1319148)
  decide +kernel
#print axioms cover_1319148

def state_1319173 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 191 else 126) else (if j.val < 3 then 75 else (if j.val < 4 then 207 else 205)))
def hex_1319173 : String := "42414044430A0A4307060A804140444342414044094305090A80410580420A07434241058005424106804105094443420A080A434206050680"
theorem cover_1319173 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1319173 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 57) (hex := hex_1319173)
  decide +kernel
#print axioms cover_1319173

def state_1319230 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 127) else (if j.val < 3 then 75 else (if j.val < 4 then 103 else 102)))
def hex_1319230 : String := "40444306098044434205080A80"
theorem cover_1319230 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1319230 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_1319230)
  decide +kernel
#print axioms cover_1319230

def state_1319243 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 63) else (if j.val < 3 then 37 else (if j.val < 4 then 103 else 103)))
def hex_1319243 : String := "4207414043444207410580070843444207410580074442074140444342070506060680420641050880"
theorem cover_1319243 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1319243 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 41) (hex := hex_1319243)
  decide +kernel
#print axioms cover_1319243

def state_1319285 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 30) else (if j.val < 3 then 19 else (if j.val < 4 then 25 else 25)))
def hex_1319285 : String := "05"
theorem cover_1319285 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1319285 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1319285)
  decide +kernel
#print axioms cover_1319285

def state_1319287 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 31) else (if j.val < 3 then 19 else (if j.val < 4 then 25 else 25)))
def hex_1319287 : String := "4344060A440942410A400643060909"
theorem cover_1319287 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1319287 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_1319287)
  decide +kernel
#print axioms cover_1319287
end Mub6.Numerical.CircleFullD0.Forest

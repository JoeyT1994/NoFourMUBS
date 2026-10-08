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
def state_1338191 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 58 else 96) else (if j.val < 3 then 88 else (if j.val < 4 then 32 else 88)))
def hex_1338191 : String := "4043C841424440430605064043C84107440642064005090944094043C80509420644064043C8050909"
theorem cover_1338191 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1338191 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 41) (hex := hex_1338191)
  decide +kernel
#print axioms cover_1338191

def state_1338234 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 116 else 96) else (if j.val < 3 then 88 else (if j.val < 4 then 64 else 89)))
def hex_1338234 : String := "4144C8420A40060544C8420807"
theorem cover_1338234 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1338234 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_1338234)
  decide +kernel
#print axioms cover_1338234

def state_1338250 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 116 else 192) else (if j.val < 3 then 176 else (if j.val < 4 then 65 else 178)))
def hex_1338250 : String := "4043C841444207400507420A40060A44424043080543C807400543C8054240080A4043C80543C8410A444208050843C8410A44420609420A0A"
theorem cover_1338250 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1338250 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 57) (hex := hex_1338250)
  decide +kernel
#print axioms cover_1338250

def state_1338307 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 116 else 192) else (if j.val < 3 then 177 else (if j.val < 4 then 65 else 178)))
def hex_1338307 : String := "4043C8414442400509050644424005090542400543C8050609"
theorem cover_1338307 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1338307 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 25) (hex := hex_1338307)
  decide +kernel
#print axioms cover_1338307

def state_1338332 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 116 else 192) else (if j.val < 3 then 88 else (if j.val < 4 then 65 else 179)))
def hex_1338332 : String := "424043410A08410A44420840080A080A400643410A44090A410A44090A"
theorem cover_1338332 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1338332 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 29) (hex := hex_1338332)
  decide +kernel
#print axioms cover_1338332

def state_1338363 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 116 else 193) else (if j.val < 3 then 176 else (if j.val < 4 then 65 else 178)))
def hex_1338363 : String := "4043C8414442064005430641440542050506080843C84144064206404309090606"
theorem cover_1338363 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1338363 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 33) (hex := hex_1338363)
  decide +kernel
#print axioms cover_1338363

def state_1338396 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 116 else 193) else (if j.val < 3 then 177 else (if j.val < 4 then 65 else 178)))
def hex_1338396 : String := "4043C84144424005090542400543C8410544050840050944424005060542080709"
theorem cover_1338396 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1338396 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 33) (hex := hex_1338396)
  decide +kernel
#print axioms cover_1338396
end Mub6.Numerical.CircleFullD0.Forest

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
def state_1526168 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 59) else (if j.val < 3 then 44 else (if j.val < 4 then 16 else 44)))
def hex_1526168 : String := "43404244414306050505444143064005060641430605050640420544414340054205050505054244410A050A4441430640420505060641430640050605"
theorem cover_1526168 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1526168 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 61) (hex := hex_1526168)
  decide +kernel
#print axioms cover_1526168

def state_1526230 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 58) else (if j.val < 3 then 44 else (if j.val < 4 then 16 else 45)))
def hex_1526230 : String := "43404442414340080708434005060541074340070608084442414307090607074044420808084442094109434044420507050609420807"
theorem cover_1526230 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1526230 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 55) (hex := hex_1526230)
  decide +kernel
#print axioms cover_1526230

def state_1526285 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 59) else (if j.val < 3 then 44 else (if j.val < 4 then 16 else 45)))
def hex_1526285 : String := "43404442050505064005444205414306050505"
theorem cover_1526285 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1526285 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_1526285)
  decide +kernel
#print axioms cover_1526285

def state_1526310 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 58) else (if j.val < 3 then 90 else (if j.val < 4 then 32 else 88)))
def hex_1526310 : String := "4143400A074042440A0A0A4244414307400A0743400A06400A08070743400A064042440A0A0A424406414306400A0606440606"
theorem cover_1526310 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1526310 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 51) (hex := hex_1526310)
  decide +kernel
#print axioms cover_1526310

def state_1526361 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 58) else (if j.val < 3 then 90 else (if j.val < 4 then 32 else 89)))
def hex_1526361 : String := "4107434007064042440A050742444107060707"
theorem cover_1526361 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1526361 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_1526361)
  decide +kernel
#print axioms cover_1526361

def state_1526380 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 58) else (if j.val < 3 then 91 else (if j.val < 4 then 32 else 44)))
def hex_1526380 : String := "440A07"
theorem cover_1526380 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1526380 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_1526380)
  decide +kernel
#print axioms cover_1526380

def state_1526383 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 58) else (if j.val < 3 then 45 else (if j.val < 4 then 32 else 44)))
def hex_1526383 : String := "424441430740424408070707060707"
theorem cover_1526383 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1526383 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_1526383)
  decide +kernel
#print axioms cover_1526383
end Mub6.Numerical.CircleFullD0.Forest

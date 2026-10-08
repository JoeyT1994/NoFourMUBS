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
def state_1612350 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 42) else (if j.val < 3 then 53 else (if j.val < 4 then 61 else 99)))
def hex_1612350 : String := "4041424344400542090540424105090542090A44054006420905054209434405404105050A440506414243440A09090A420909"
theorem cover_1612350 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1612350 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 51) (hex := hex_1612350)
  decide +kernel
#print axioms cover_1612350

def state_1612401 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 43) else (if j.val < 3 then 26 else (if j.val < 4 then 30 else 49)))
def hex_1612401 : String := "4209434440414209430A440540050909094041420943440A0A4440410A0909090909444041420809080909"
theorem cover_1612401 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1612401 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 43) (hex := hex_1612401)
  decide +kernel
#print axioms cover_1612401

def state_1612444 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 21) else (if j.val < 3 then 26 else (if j.val < 4 then 30 else 49)))
def hex_1612444 : String := "414209430A4440410A090740410A090909"
theorem cover_1612444 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1612444 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_1612444)
  decide +kernel
#print axioms cover_1612444

def state_1612462 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 21) else (if j.val < 3 then 26 else (if j.val < 4 then 31 else 48)))
def hex_1612462 : String := "404142090509414209434407090909"
theorem cover_1612462 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1612462 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 15) (hex := hex_1612462)
  decide +kernel
#print axioms cover_1612462

def state_1612477 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 21) else (if j.val < 3 then 26 else (if j.val < 4 then 31 else 49)))
def hex_1612477 : String := "4041420943444005410509404142434405060605420905414209430A0509444005410509400641060909414209434440414209050909090909"
theorem cover_1612477 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1612477 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 57) (hex := hex_1612477)
  decide +kernel
#print axioms cover_1612477

def state_1612536 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 21) else (if j.val < 3 then 27 else (if j.val < 4 then 30 else 48)))
def hex_1612536 : String := "404105424344050A05050A"
theorem cover_1612536 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1612536 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_1612536)
  decide +kernel
#print axioms cover_1612536

def state_1612547 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 21) else (if j.val < 3 then 27 else (if j.val < 4 then 30 else 49)))
def hex_1612547 : String := "404142430A440540050A054243444041050A0A40410A42430A440A090A0A44400541050A404142430A0505420906410A090A410A0A"
theorem cover_1612547 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1612547 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 53) (hex := hex_1612547)
  decide +kernel
#print axioms cover_1612547
end Mub6.Numerical.CircleFullD0.Forest

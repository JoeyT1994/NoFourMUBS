import CircleFullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_171981 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 25 else (if j.val < 4 then 24 else 15)))
def hex_171981 : String := "40414443424041440909050505424007074041440A43050A050543420905424041060709404144430506064405084106054409094144090905"
theorem cover_171981 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_171981 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 57) (hex := hex_171981)
  decide +kernel
#print axioms cover_171981

def state_172038 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 25 else (if j.val < 4 then 25 else 15)))
def hex_172038 : String := "4041440742074340410607060607410A07"
theorem cover_172038 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_172038 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 17) (hex := hex_172038)
  decide +kernel
#print axioms cover_172038

def state_172055 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 12 else (if j.val < 4 then 13 else 7)))
def hex_172055 : String := "440707"
theorem cover_172055 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_172055 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_172055)
  decide +kernel
#print axioms cover_172055

def state_172058 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 6 else 7)))
def hex_172058 : String := "4344434041420505050540410A070A434005054041424443420A050A434240080A05420A0808424407080541420A0505440740410A070A"
theorem cover_172058 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_172058 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 55) (hex := hex_172058)
  decide +kernel
#print axioms cover_172058

def state_172113 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 7)))
def hex_172113 : String := "4243440741420743050707440707430507"
theorem cover_172113 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_172113 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_172113)
  decide +kernel
#print axioms cover_172113

def state_172130 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 7)))
def hex_172130 : String := "414243444042070A0840420943050A090743050A42430907430507"
theorem cover_172130 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_172130 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 27) (hex := hex_172130)
  decide +kernel
#print axioms cover_172130

def state_172157 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 3)))
def hex_172157 : String := "440A40414243440706060A42434441074207074107420707440A410642060A434407070A410A4243070A07"
theorem cover_172157 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_172157 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 43) (hex := hex_172157)
  decide +kernel
#print axioms cover_172157
end Mub6.Numerical.CircleFullPrototype.Forest

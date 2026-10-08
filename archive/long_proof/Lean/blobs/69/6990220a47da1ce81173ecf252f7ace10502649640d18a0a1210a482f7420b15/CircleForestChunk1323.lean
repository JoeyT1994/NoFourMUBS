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
def state_1618123 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 24 else (if j.val < 4 then 11 else 8)))
def hex_1618123 : String := "430640444206430641064007060606"
theorem cover_1618123 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1618123 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_1618123)
  decide +kernel
#print axioms cover_1618123

def state_1618139 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 25 else (if j.val < 4 then 22 else 8)))
def hex_1618139 : String := "4009440605"
theorem cover_1618139 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1618139 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1618139)
  decide +kernel
#print axioms cover_1618139

def state_1618147 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 25) else (if j.val < 3 then 25 else (if j.val < 4 then 46 else 16)))
def hex_1618147 : String := "41420609420909"
theorem cover_1618147 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1618147 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 7) (hex := hex_1618147)
  decide +kernel
#print axioms cover_1618147

def state_1618155 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 50) else (if j.val < 3 then 25 else (if j.val < 4 then 47 else 16)))
def hex_1618155 : String := "4240090640094443064106420640090606"
theorem cover_1618155 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1618155 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 17) (hex := hex_1618155)
  decide +kernel
#print axioms cover_1618155

def state_1618173 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 51) else (if j.val < 3 then 50 else (if j.val < 4 then 47 else 16)))
def hex_1618173 : String := "40094443064206410640090606"
theorem cover_1618173 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1618173 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1618173)
  decide +kernel
#print axioms cover_1618173

def state_1618187 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 51) else (if j.val < 3 then 51 else (if j.val < 4 then 47 else 16)))
def hex_1618187 : String := "09"
theorem cover_1618187 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1618187 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1618187)
  decide +kernel
#print axioms cover_1618187

def state_1618189 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 51) else (if j.val < 3 then 51 else (if j.val < 4 then 47 else 32)))
def hex_1618189 : String := "4341420609420909414240090640094443410609414206400806D34309410609424009444342060942410607D34309420609400944D34309410909"
theorem cover_1618189 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1618189 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 59) (hex := hex_1618189)
  decide +kernel
#print axioms cover_1618189

def state_1618248 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 51) else (if j.val < 3 then 51 else (if j.val < 4 then 47 else 33)))
def hex_1618248 : String := "4309410909"
theorem cover_1618248 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1618248 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1618248)
  decide +kernel
#print axioms cover_1618248

def state_1618253 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 25) else (if j.val < 3 then 25 else (if j.val < 4 then 23 else 17)))
def hex_1618253 : String := "4309410909"
theorem cover_1618253 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1618253 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1618253)
  decide +kernel
#print axioms cover_1618253

def state_1618260 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 25 else (if j.val < 4 then 46 else 16)))
def hex_1618260 : String := "4106420540444305060505"
theorem cover_1618260 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1618260 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_1618260)
  decide +kernel
#print axioms cover_1618260

def state_1618272 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 50) else (if j.val < 3 then 25 else (if j.val < 4 then 47 else 16)))
def hex_1618272 : String := "06"
theorem cover_1618272 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1618272 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1618272)
  decide +kernel
#print axioms cover_1618272

def state_1618274 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 51) else (if j.val < 3 then 50 else (if j.val < 4 then 47 else 16)))
def hex_1618274 : String := "06"
theorem cover_1618274 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1618274 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1618274)
  decide +kernel
#print axioms cover_1618274

def state_1618278 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 51) else (if j.val < 3 then 51 else (if j.val < 4 then 94 else 32)))
def hex_1618278 : String := "41064205404443054106050505"
theorem cover_1618278 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1618278 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1618278)
  decide +kernel
#print axioms cover_1618278

def state_1618291 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 51) else (if j.val < 3 then 51 else (if j.val < 4 then 95 else 32)))
def hex_1618291 : String := "414206404443064106D3060642404443064206D306054044D34341064205054142064044D30606424044D305054044D3090544D306"
theorem cover_1618291 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1618291 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 53) (hex := hex_1618291)
  decide +kernel
#print axioms cover_1618291

def state_1618344 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 51) else (if j.val < 3 then 51 else (if j.val < 4 then 47 else 33)))
def hex_1618344 : String := "4306410642054044430641064205050605"
theorem cover_1618344 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1618344 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 17) (hex := hex_1618344)
  decide +kernel
#print axioms cover_1618344

def state_1618361 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 51) else (if j.val < 3 then 51 else (if j.val < 4 then 47 else 16)))
def hex_1618361 : String := "06"
theorem cover_1618361 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1618361 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1618361)
  decide +kernel
#print axioms cover_1618361

def state_1618362 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 25 else (if j.val < 4 then 23 else 17)))
def hex_1618362 : String := "430606"
theorem cover_1618362 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1618362 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_1618362)
  decide +kernel
#print axioms cover_1618362

def state_1618365 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 12) else (if j.val < 3 then 12 else (if j.val < 4 then 11 else 9)))
def hex_1618365 : String := "410642064305400906"
theorem cover_1618365 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1618365 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1618365)
  decide +kernel
#print axioms cover_1618365

def state_1618375 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 4)))
def hex_1618375 : String := "07"
theorem cover_1618375 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1618375 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1618375)
  decide +kernel
#print axioms cover_1618375

def state_1618377 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 12) else (if j.val < 3 then 13 else (if j.val < 4 then 11 else 4)))
def hex_1618377 : String := "4441430709430742090709"
theorem cover_1618377 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1618377 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_1618377)
  decide +kernel
#print axioms cover_1618377
end Mub6.Numerical.CircleFullD0.Forest

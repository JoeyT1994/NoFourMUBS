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
def state_6290 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 53) else (if j.val < 3 then 53 else (if j.val < 4 then 34 else 17)))
def hex_6290 : String := "44414240430A05430A44070540090942400A0A4043444109060A440905434441090A0A44094109420A40090941420540054443080505420A40050A"
theorem cover_6290 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_6290 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 59) (hex := hex_6290)
  decide +kernel
#print axioms cover_6290

def state_6349 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 53) else (if j.val < 3 then 53 else (if j.val < 4 then 35 else 17)))
def hex_6349 : String := "444109424005434407050540050905"
theorem cover_6349 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_6349 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_6349)
  decide +kernel
#print axioms cover_6349

def state_6365 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 26) else (if j.val < 3 then 26 else (if j.val < 4 then 16 else 8)))
def hex_6365 : String := "4441420708420740430544054107050541420608420A4044430841080A0A08"
theorem cover_6365 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_6365 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 31) (hex := hex_6365)
  decide +kernel
#print axioms cover_6365

def state_6397 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 26) else (if j.val < 3 then 26 else (if j.val < 4 then 17 else 16)))
def hex_6397 : String := "414206094207404344074107070907"
theorem cover_6397 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_6397 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_6397)
  decide +kernel
#print axioms cover_6397

def state_6413 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 52) else (if j.val < 3 then 26 else (if j.val < 4 then 17 else 17)))
def hex_6413 : String := "06"
theorem cover_6413 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_6413 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_6413)
  decide +kernel
#print axioms cover_6413

def state_6415 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 53) else (if j.val < 3 then 52 else (if j.val < 4 then 17 else 17)))
def hex_6415 : String := "06"
theorem cover_6415 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_6415 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_6415)
  decide +kernel
#print axioms cover_6415

def state_6418 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 53) else (if j.val < 3 then 53 else (if j.val < 4 then 34 else 17)))
def hex_6418 : String := "44414206084207404344070844074109420740090743070741420608420A4044430841080A0A440806"
theorem cover_6418 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_6418 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 41) (hex := hex_6418)
  decide +kernel
#print axioms cover_6418

def state_6459 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 53) else (if j.val < 3 then 53 else (if j.val < 4 then 35 else 17)))
def hex_6459 : String := "444142060942074043440741094207090943070641064206404344410542059A050506"
theorem cover_6459 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_6459 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 35) (hex := hex_6459)
  decide +kernel
#print axioms cover_6459

def state_6494 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 53) else (if j.val < 3 then 53 else (if j.val < 4 then 17 else 17)))
def hex_6494 : String := "43444106070606"
theorem cover_6494 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_6494 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_6494)
  decide +kernel
#print axioms cover_6494

def state_6504 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 26) else (if j.val < 3 then 27 else (if j.val < 4 then 16 else 16)))
def hex_6504 : String := "410940064243050905"
theorem cover_6504 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_6504 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_6504)
  decide +kernel
#print axioms cover_6504
end Mub6.Numerical.CircleFullPrototype.Forest

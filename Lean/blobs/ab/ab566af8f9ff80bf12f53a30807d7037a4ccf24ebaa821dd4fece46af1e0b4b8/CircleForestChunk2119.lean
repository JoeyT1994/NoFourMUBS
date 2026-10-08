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
def state_2589191 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 8) else (if j.val < 3 then 24 else (if j.val < 4 then 23 else 18)))
def hex_2589191 : String := "41064243404406410607050606"
theorem cover_2589191 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2589191 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_2589191)
  decide +kernel
#print axioms cover_2589191

def state_2589205 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 16) else (if j.val < 3 then 24 else (if j.val < 4 then 23 else 19)))
def hex_2589205 : String := "4243404406410A420A43400A0506060606"
theorem cover_2589205 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2589205 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 17) (hex := hex_2589205)
  decide +kernel
#print axioms cover_2589205

def state_2589226 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 17) else (if j.val < 3 then 48 else (if j.val < 4 then 46 else 38)))
def hex_2589226 : String := "4142050642054305404406410642050605"
theorem cover_2589226 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2589226 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 17) (hex := hex_2589226)
  decide +kernel
#print axioms cover_2589226

def state_2589244 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 34) else (if j.val < 3 then 48 else (if j.val < 4 then 46 else 39)))
def hex_2589244 : String := "4243050A43404405410A420543050505400A06"
theorem cover_2589244 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2589244 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 19) (hex := hex_2589244)
  decide +kernel
#print axioms cover_2589244

def state_2589263 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 35) else (if j.val < 3 then 48 else (if j.val < 4 then 46 else 39)))
def hex_2589263 : String := "424305404405050543404405410505054044410A4243050A4309400A0641420A43400A050A4243050A430940074406074405410505"
theorem cover_2589263 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2589263 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 53) (hex := hex_2589263)
  decide +kernel
#print axioms cover_2589263

def state_2589316 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 53 else 17) else (if j.val < 3 then 48 else (if j.val < 4 then 46 else 19)))
def hex_2589316 : String := "440505"
theorem cover_2589316 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2589316 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_2589316)
  decide +kernel
#print axioms cover_2589316

def state_2589319 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 17) else (if j.val < 3 then 48 else (if j.val < 4 then 47 else 19)))
def hex_2589319 : String := "404406410A4243400A080A434044060A060606"
theorem cover_2589319 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2589319 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 19) (hex := hex_2589319)
  decide +kernel
#print axioms cover_2589319

def state_2589341 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 17) else (if j.val < 3 then 49 else (if j.val < 4 then 46 else 38)))
def hex_2589341 : String := "41064243090606"
theorem cover_2589341 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2589341 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_2589341)
  decide +kernel
#print axioms cover_2589341

def state_2589349 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 34) else (if j.val < 3 then 49 else (if j.val < 4 then 46 else 39)))
def hex_2589349 : String := "424340440641420A06424309400A0609060643404406090606"
theorem cover_2589349 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2589349 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 25) (hex := hex_2589349)
  decide +kernel
#print axioms cover_2589349

def state_2589374 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 35) else (if j.val < 3 then 49 else (if j.val < 4 then 46 else 39)))
def hex_2589374 : String := "424309404441060941424340440607060643090642430940070909440609430940440641060906"
theorem cover_2589374 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2589374 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 39) (hex := hex_2589374)
  decide +kernel
#print axioms cover_2589374

def state_2589413 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 53 else 17) else (if j.val < 3 then 49 else (if j.val < 4 then 46 else 19)))
def hex_2589413 : String := "4406410609"
theorem cover_2589413 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2589413 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_2589413)
  decide +kernel
#print axioms cover_2589413

def state_2589418 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 17) else (if j.val < 3 then 49 else (if j.val < 4 then 47 else 19)))
def hex_2589418 : String := "4044064106434240440641064342400706060606060606"
theorem cover_2589418 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2589418 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 23) (hex := hex_2589418)
  decide +kernel
#print axioms cover_2589418

def state_2589441 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 27 else 8) else (if j.val < 3 then 24 else (if j.val < 4 then 23 else 9)))
def hex_2589441 : String := "06"
theorem cover_2589441 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2589441 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_2589441)
  decide +kernel
#print axioms cover_2589441
end Mub6.Numerical.CircleFullD0.Forest

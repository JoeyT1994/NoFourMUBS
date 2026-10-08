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
def state_284154 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 57) else (if j.val < 3 then 18 else (if j.val < 4 then 56 else 48)))
def hex_284154 : String := "424440410543054205054143054244400506054406054306424408400506064005054440050605"
theorem cover_284154 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_284154 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 39) (hex := hex_284154)
  decide +kernel
#print axioms cover_284154

def state_284196 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 57) else (if j.val < 3 then 36 else (if j.val < 4 then 57 else 96)))
def hex_284196 : String := "4143420505094342440A054408050A"
theorem cover_284196 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_284196 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 15) (hex := hex_284196)
  decide +kernel
#print axioms cover_284196

def state_284212 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 114) else (if j.val < 3 then 36 else (if j.val < 4 then 57 else 96)))
def hex_284212 : String := "4342444041094342D5080941094342D50642D5094005090909"
theorem cover_284212 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_284212 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 25) (hex := hex_284212)
  decide +kernel
#print axioms cover_284212

def state_284238 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 115) else (if j.val < 3 then 36 else (if j.val < 4 then 114 else 96)))
def hex_284238 : String := "424440434142D508080A434142D506084142D5440809420A08404341050741420709074341420606064142D5094207440606444008084043080906"
theorem cover_284238 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_284238 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 59) (hex := hex_284238)
  decide +kernel
#print axioms cover_284238

def state_284297 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 115) else (if j.val < 3 then 36 else (if j.val < 4 then 115 else 96)))
def hex_284297 : String := "4244400A4143420A09090A400A4109434207090A09"
theorem cover_284297 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_284297 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_284297)
  decide +kernel
#print axioms cover_284297

def state_284318 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 57) else (if j.val < 3 then 36 else (if j.val < 4 then 57 else 97)))
def hex_284318 : String := "4041050741094342070942444007090709"
theorem cover_284318 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_284318 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_284318)
  decide +kernel
#print axioms cover_284318

def state_284335 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 57) else (if j.val < 3 then 37 else (if j.val < 4 then 57 else 48)))
def hex_284335 : String := "09"
theorem cover_284335 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_284335 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_284335)
  decide +kernel
#print axioms cover_284335

def state_284336 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 28) else (if j.val < 3 then 18 else (if j.val < 4 then 28 else 49)))
def hex_284336 : String := "400541054305420505"
theorem cover_284336 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_284336 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_284336)
  decide +kernel
#print axioms cover_284336

def state_284345 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 28) else (if j.val < 3 then 18 else (if j.val < 4 then 29 else 24)))
def hex_284345 : String := "44404109420A094109424344400A41090A09090909"
theorem cover_284345 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_284345 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 21) (hex := hex_284345)
  decide +kernel
#print axioms cover_284345

def state_284366 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 28) else (if j.val < 3 then 19 else (if j.val < 4 then 14 else 24)))
def hex_284366 : String := "09"
theorem cover_284366 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_284366 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_284366)
  decide +kernel
#print axioms cover_284366

def state_284371 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 29) else (if j.val < 3 then 18 else (if j.val < 4 then 28 else 48)))
def hex_284371 : String := "43414207440805074142070A07"
theorem cover_284371 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_284371 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_284371)
  decide +kernel
#print axioms cover_284371

def state_284385 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 29) else (if j.val < 3 then 18 else (if j.val < 4 then 56 else 48)))
def hex_284385 : String := "41424440430707430841424408070608074408400506420708"
theorem cover_284385 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_284385 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 25) (hex := hex_284385)
  decide +kernel
#print axioms cover_284385
end Mub6.Numerical.CircleFullPrototype.Forest

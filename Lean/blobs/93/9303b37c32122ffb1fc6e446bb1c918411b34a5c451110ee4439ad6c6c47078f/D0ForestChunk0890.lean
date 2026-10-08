import D0FullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1514158 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 88) else (if j.val < 3 then 85 else (if j.val < 4 then 106 else 61)))
def hex_1514158 : String := "4440410A4243050905414243050705424307070705"
theorem cover_1514158 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1514158 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 21) (hex := hex_1514158)
  decide +kernel
#print axioms cover_1514158

def state_1514180 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 88) else (if j.val < 3 then 85 else (if j.val < 4 then 107 else 122)))
def hex_1514180 : String := "4041424344090A080A4209094142430744074007060742434407400707440740090707"
theorem cover_1514180 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1514180 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 35) (hex := hex_1514180)
  decide +kernel
#print axioms cover_1514180

def state_1514215 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 88) else (if j.val < 3 then 85 else (if j.val < 4 then 107 else 123)))
def hex_1514215 : String := "40410A42430508054142430506054243444041050506054440080606430507"
theorem cover_1514215 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1514215 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 31) (hex := hex_1514215)
  decide +kernel
#print axioms cover_1514215

def state_1514250 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 89) else (if j.val < 3 then 84 else (if j.val < 4 then 106 else 122)))
def hex_1514250 : String := "414342090942090909"
theorem cover_1514250 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1514250 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 9) (hex := hex_1514250)
  decide +kernel
#print axioms cover_1514250

def state_1514261 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 178) else (if j.val < 3 then 84 else (if j.val < 4 then 212 else 122)))
def hex_1514261 : String := "4244404109094143420A070A0A40414342440905054209094309094143420644400506050643420A4409050A4440094107074041050941430507430509"
theorem cover_1514261 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1514261 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 61) (hex := hex_1514261)
  decide +kernel
#print axioms cover_1514261

def state_1514322 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 178) else (if j.val < 3 then 84 else (if j.val < 4 then 213 else 122)))
def hex_1514322 : String := "424440090A404143420609080941060A4440094143070709400941434244070607420607430909"
theorem cover_1514322 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1514322 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 39) (hex := hex_1514322)
  decide +kernel
#print axioms cover_1514322

def state_1514361 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 179) else (if j.val < 3 then 84 else (if j.val < 4 then 106 else 122)))
def hex_1514361 : String := "4342440940090A09420A09"
theorem cover_1514361 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1514361 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_1514361)
  decide +kernel
#print axioms cover_1514361

def state_1514373 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 89) else (if j.val < 3 then 84 else (if j.val < 4 then 106 else 123)))
def hex_1514373 : String := "414305420805434244090505420909"
theorem cover_1514373 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1514373 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 15) (hex := hex_1514373)
  decide +kernel
#print axioms cover_1514373
end Mub6.Numerical.CircleFullD0.Forest

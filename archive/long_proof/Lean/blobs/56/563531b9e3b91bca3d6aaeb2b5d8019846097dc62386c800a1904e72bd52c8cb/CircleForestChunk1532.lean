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
def state_2241242 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 4 else 4)))
def hex_2241242 : String := "43444041094209434440410942094344404107420943090709094440070707090944404107420507410742070707090944404107420507410742090707"
theorem cover_2241242 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2241242 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 17) (count := 61) (hex := hex_2241242)
  decide +kernel
#print axioms cover_2241242

def state_2241308 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 20) else (if j.val < 3 then 22 else (if j.val < 4 then 8 else 8)))
def hex_2241308 : String := "07"
theorem cover_2241308 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2241308 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_2241308)
  decide +kernel
#print axioms cover_2241308

def state_2241312 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 21) else (if j.val < 3 then 22 else (if j.val < 4 then 16 else 16)))
def hex_2241312 : String := "4241074344404241074344E70707410743440A0707424107430907410543050740070744400707074107434442400A05050707"
theorem cover_2241312 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2241312 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 51) (hex := hex_2241312)
  decide +kernel
#print axioms cover_2241312

def state_2241363 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 21) else (if j.val < 3 then 22 else (if j.val < 4 then 16 else 16)))
def hex_2241363 : String := "4241074344404209050507074105430507"
theorem cover_2241363 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2241363 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_2241363)
  decide +kernel
#print axioms cover_2241363

def state_2241380 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 21) else (if j.val < 3 then 22 else (if j.val < 4 then 16 else 17)))
def hex_2241380 : String := "400707"
theorem cover_2241380 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2241380 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_2241380)
  decide +kernel
#print axioms cover_2241380

def state_2241383 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 21) else (if j.val < 3 then 22 else (if j.val < 4 then 17 else 8)))
def hex_2241383 : String := "4440070707"
theorem cover_2241383 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2241383 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_2241383)
  decide +kernel
#print axioms cover_2241383

def state_2241388 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 10) else (if j.val < 3 then 23 else (if j.val < 4 then 8 else 8)))
def hex_2241388 : String := "4107434442400A05050707"
theorem cover_2241388 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2241388 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_2241388)
  decide +kernel
#print axioms cover_2241388

def state_2241399 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 10) else (if j.val < 3 then 11 else (if j.val < 4 then 8 else 8)))
def hex_2241399 : String := "4241074344404209050507074105430507"
theorem cover_2241399 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2241399 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_2241399)
  decide +kernel
#print axioms cover_2241399

def state_2241416 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 11 else (if j.val < 4 then 8 else 9)))
def hex_2241416 : String := "07"
theorem cover_2241416 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2241416 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_2241416)
  decide +kernel
#print axioms cover_2241416

def state_2241417 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 11 else (if j.val < 4 then 9 else 4)))
def hex_2241417 : String := "07"
theorem cover_2241417 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2241417 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_2241417)
  decide +kernel
#print axioms cover_2241417

def state_2241424 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 20 else (if j.val < 4 then 8 else 8)))
def hex_2241424 : String := "05"
theorem cover_2241424 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2241424 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_2241424)
  decide +kernel
#print axioms cover_2241424

def state_2241427 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 21 else (if j.val < 4 then 16 else 16)))
def hex_2241427 : String := "404142054344404142054344E740050944400541080505054142094309444041060606090A40050A4440054142054344060706050505414209430A44060A0A"
theorem cover_2241427 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2241427 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 63) (hex := hex_2241427)
  decide +kernel
#print axioms cover_2241427

def state_2241490 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 21 else (if j.val < 4 then 16 else 17)))
def hex_2241490 : String := "40050A"
theorem cover_2241490 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2241490 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_2241490)
  decide +kernel
#print axioms cover_2241490

def state_2241493 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 21 else (if j.val < 4 then 17 else 8)))
def hex_2241493 : String := "444005414205434406400506060505"
theorem cover_2241493 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2241493 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_2241493)
  decide +kernel
#print axioms cover_2241493

def state_2241508 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 10 else (if j.val < 4 then 8 else 8)))
def hex_2241508 : String := "05"
theorem cover_2241508 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2241508 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_2241508)
  decide +kernel
#print axioms cover_2241508
end Mub6.Numerical.CircleFullD0.Forest

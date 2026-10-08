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
def state_376445 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 23) else (if j.val < 3 then 10 else (if j.val < 4 then 22 else 12)))
def hex_376445 : String := "444240074144430940074244410A07410A070907070707"
theorem cover_376445 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_376445 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 23) (hex := hex_376445)
  decide +kernel
#print axioms cover_376445

def state_376471 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 23) else (if j.val < 3 then 20 else (if j.val < 4 then 23 else 24)))
def hex_376471 : String := "07"
theorem cover_376471 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_376471 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_376471)
  decide +kernel
#print axioms cover_376471

def state_376474 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 46) else (if j.val < 3 then 20 else (if j.val < 4 then 46 else 24)))
def hex_376474 : String := "4440074244414340424441080507070A4042440507054205054307054143080807444108070740074241080707"
theorem cover_376474 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_376474 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 45) (hex := hex_376474)
  decide +kernel
#print axioms cover_376474

def state_376519 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 46) else (if j.val < 3 then 20 else (if j.val < 4 then 47 else 24)))
def hex_376519 : String := "44404243070506424344054108050543080508"
theorem cover_376519 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_376519 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_376519)
  decide +kernel
#print axioms cover_376519

def state_376538 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 47) else (if j.val < 3 then 20 else (if j.val < 4 then 23 else 24)))
def hex_376538 : String := "430707"
theorem cover_376538 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_376538 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_376538)
  decide +kernel
#print axioms cover_376538

def state_376541 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 23) else (if j.val < 3 then 21 else (if j.val < 4 then 23 else 24)))
def hex_376541 : String := "4007410807"
theorem cover_376541 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_376541 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_376541)
  decide +kernel
#print axioms cover_376541

def state_376546 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 23) else (if j.val < 3 then 10 else (if j.val < 4 then 23 else 25)))
def hex_376546 : String := "07"
theorem cover_376546 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_376546 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_376546)
  decide +kernel
#print axioms cover_376546

def state_376547 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 11) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 13)))
def hex_376547 : String := "08"
theorem cover_376547 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_376547 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_376547)
  decide +kernel
#print axioms cover_376547

def state_376548 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 5 else 6)))
def hex_376548 : String := "4344080808"
theorem cover_376548 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_376548 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_376548)
  decide +kernel
#print axioms cover_376548

def state_376553 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 7)))
def hex_376553 : String := "41084243050843404408050808"
theorem cover_376553 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_376553 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 13) (hex := hex_376553)
  decide +kernel
#print axioms cover_376553

def state_376568 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 2 else 3)))
def hex_376568 : String := "4344060544404305444142074305444042050A0605420743064440410707060605430A444107064142070606400543054105420505"
theorem cover_376568 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_376568 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 53) (hex := hex_376568)
  decide +kernel
#print axioms cover_376568

def state_376621 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 2 else 3)))
def hex_376621 : String := "43440A064440424306440A060A0A08"
theorem cover_376621 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_376621 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_376621)
  decide +kernel
#print axioms cover_376621

def state_376638 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 4 else 3)))
def hex_376638 : String := "44404105444206430606050606"
theorem cover_376638 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_376638 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_376638)
  decide +kernel
#print axioms cover_376638

def state_376654 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 6)))
def hex_376654 : String := "43064442074344404106070606444041074207430A09074041420508090606"
theorem cover_376654 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_376654 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 31) (hex := hex_376654)
  decide +kernel
#print axioms cover_376654

def state_376686 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 4 else (if j.val < 4 then 10 else 6)))
def hex_376686 : String := "44420641060606"
theorem cover_376686 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_376686 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_376686)
  decide +kernel
#print axioms cover_376686

def state_376695 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 8 else (if j.val < 4 then 11 else 12)))
def hex_376695 : String := "4109430609"
theorem cover_376695 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_376695 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_376695)
  decide +kernel
#print axioms cover_376695
end Mub6.Numerical.CircleFullPrototype.Forest

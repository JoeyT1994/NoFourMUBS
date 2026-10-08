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
def state_53175 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 20) else (if j.val < 3 then 20 else (if j.val < 4 then 24 else 10)))
def hex_53175 : String := "44404340064142060806074340414205440543400641420508050705054008414205080540074344400741420543444007050707050707"
theorem cover_53175 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_53175 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 55) (hex := hex_53175)
  decide +kernel
#print axioms cover_53175

def state_53231 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 20) else (if j.val < 3 then 21 else (if j.val < 4 then 24 else 20)))
def hex_53231 : String := "4043420808084342400841440543424008054008414405090508054008414408434240080909080808"
theorem cover_53231 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_53231 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 41) (hex := hex_53231)
  decide +kernel
#print axioms cover_53231

def state_53272 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 20) else (if j.val < 3 then 21 else (if j.val < 4 then 24 else 21)))
def hex_53272 : String := "400743424440074143424440070907090707074440074109070707"
theorem cover_53272 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_53272 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 27) (hex := hex_53272)
  decide +kernel
#print axioms cover_53272

def state_53299 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 21) else (if j.val < 3 then 10 else (if j.val < 4 then 24 else 10)))
def hex_53299 : String := "42440806440807"
theorem cover_53299 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_53299 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 7) (hex := hex_53299)
  decide +kernel
#print axioms cover_53299

def state_53306 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 25 else 10)))
def hex_53306 : String := "4142440807440807420708"
theorem cover_53306 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_53306 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 11) (hex := hex_53306)
  decide +kernel
#print axioms cover_53306

def state_53317 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 11)))
def hex_53317 : String := "07"
theorem cover_53317 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_53317 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_53317)
  decide +kernel
#print axioms cover_53317

def state_53318 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 5)))
def hex_53318 : String := "444007414207080707"
theorem cover_53318 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_53318 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_53318)
  decide +kernel
#print axioms cover_53318

def state_53330 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 10) else (if j.val < 3 then 11 else (if j.val < 4 then 12 else 10)))
def hex_53330 : String := "42430A070A"
theorem cover_53330 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_53330 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_53330)
  decide +kernel
#print axioms cover_53330

def state_53335 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 10) else (if j.val < 3 then 11 else (if j.val < 4 then 12 else 10)))
def hex_53335 : String := "42434144400A4342400841440606080A08400543094244400741060707064408400743070741440840070608434144400A420A0A4005090A4144060608"
theorem cover_53335 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_53335 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 61) (hex := hex_53335)
  decide +kernel
#print axioms cover_53335

def state_53396 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 10) else (if j.val < 3 then 11 else (if j.val < 4 then 12 else 11)))
def hex_53396 : String := "40054207430707"
theorem cover_53396 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_53396 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_53396)
  decide +kernel
#print axioms cover_53396

def state_53403 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 10) else (if j.val < 3 then 11 else (if j.val < 4 then 13 else 5)))
def hex_53403 : String := "4440080807"
theorem cover_53403 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_53403 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_53403)
  decide +kernel
#print axioms cover_53403

def state_53408 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 11) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 5)))
def hex_53408 : String := "4243444007414307070707074344400A41080807440807"
theorem cover_53408 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_53408 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_53408)
  decide +kernel
#print axioms cover_53408
end Mub6.Numerical.CircleFullPrototype.Forest

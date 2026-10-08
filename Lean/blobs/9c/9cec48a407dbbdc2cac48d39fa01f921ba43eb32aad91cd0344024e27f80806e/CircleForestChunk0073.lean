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
def state_17410 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 27 else 59) else (if j.val < 3 then 58 else (if j.val < 4 then 20 else 20)))
def hex_17410 : String := "4043440706064344420740070742064006430806440706"
theorem cover_17410 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_17410 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_17410)
  decide +kernel
#print axioms cover_17410

def state_17433 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 27 else 59) else (if j.val < 3 then 59 else (if j.val < 4 then 20 else 20)))
def hex_17433 : String := "40434405060643444043054405410605434441080508440741424006070842070540430806430841064206084440440706440741060706"
theorem cover_17433 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_17433 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 55) (hex := hex_17433)
  decide +kernel
#print axioms cover_17433

def state_17488 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 27 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 20 else 21)))
def hex_17488 : String := "4106420606"
theorem cover_17488 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_17488 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_17488)
  decide +kernel
#print axioms cover_17488

def state_17493 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 27 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 21 else 10)))
def hex_17493 : String := "44410642060606"
theorem cover_17493 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_17493 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_17493)
  decide +kernel
#print axioms cover_17493

def state_17501 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 14) else (if j.val < 3 then 15 else (if j.val < 4 then 10 else 10)))
def hex_17501 : String := "434441084240054143050605050606"
theorem cover_17501 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_17501 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_17501)
  decide +kernel
#print axioms cover_17501

def state_17519 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 27 else 28) else (if j.val < 3 then 15 else (if j.val < 4 then 20 else 20)))
def hex_17519 : String := "4241080808"
theorem cover_17519 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_17519 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_17519)
  decide +kernel
#print axioms cover_17519

def state_17526 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 27 else 58) else (if j.val < 3 then 30 else (if j.val < 4 then 20 else 20)))
def hex_17526 : String := "404308440A0643084442414006440906400A440A4308060A420606"
theorem cover_17526 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_17526 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 27) (hex := hex_17526)
  decide +kernel
#print axioms cover_17526

def state_17553 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 27 else 59) else (if j.val < 3 then 30 else (if j.val < 4 then 20 else 20)))
def hex_17553 : String := "4043054405064344050844424044050A44410A054143424005410605050643050A05424006410643444206050606400A0A"
theorem cover_17553 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_17553 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 49) (hex := hex_17553)
  decide +kernel
#print axioms cover_17553

def state_17602 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 27 else 29) else (if j.val < 3 then 31 else (if j.val < 4 then 20 else 20)))
def hex_17602 : String := "4140050805"
theorem cover_17602 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_17602 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_17602)
  decide +kernel
#print axioms cover_17602

def state_17607 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 27 else 14) else (if j.val < 3 then 15 else (if j.val < 4 then 20 else 21)))
def hex_17607 : String := "41074244410640064307060607"
theorem cover_17607 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_17607 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_17607)
  decide +kernel
#print axioms cover_17607

def state_17620 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 27 else 14) else (if j.val < 3 then 15 else (if j.val < 4 then 21 else 10)))
def hex_17620 : String := "4441420606424341064006440A06060A06"
theorem cover_17620 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_17620 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 17) (hex := hex_17620)
  decide +kernel
#print axioms cover_17620

def state_17639 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 15) else (if j.val < 3 then 14 else (if j.val < 4 then 10 else 10)))
def hex_17639 : String := "434442074140054243050605050606"
theorem cover_17639 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_17639 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_17639)
  decide +kernel
#print axioms cover_17639

def state_17657 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 27 else 15) else (if j.val < 3 then 28 else (if j.val < 4 then 20 else 20)))
def hex_17657 : String := "4142070707"
theorem cover_17657 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_17657 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_17657)
  decide +kernel
#print axioms cover_17657
end Mub6.Numerical.CircleFullPrototype.Forest

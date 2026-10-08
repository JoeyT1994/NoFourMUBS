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
def state_1573340 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 9) else (if j.val < 3 then 25 else (if j.val < 4 then 14 else 11)))
def hex_1573340 : String := "44054005414309054344420605420640050644054240050705"
theorem cover_1573340 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1573340 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 25) (hex := hex_1573340)
  decide +kernel
#print axioms cover_1573340

def state_1573365 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 9) else (if j.val < 3 then 12 else (if j.val < 4 then 15 else 11)))
def hex_1573365 : String := "4244054008414342070542080543080805"
theorem cover_1573365 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1573365 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_1573365)
  decide +kernel
#print axioms cover_1573365

def state_1573382 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 4) else (if j.val < 3 then 13 else (if j.val < 4 then 7 else 5)))
def hex_1573382 : String := "05"
theorem cover_1573382 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1573382 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1573382)
  decide +kernel
#print axioms cover_1573382

def state_1573384 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 5)))
def hex_1573384 : String := "4407414307404207070743404207440741070706404244074107074405414307440509430744074042410507050707"
theorem cover_1573384 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1573384 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 47) (hex := hex_1573384)
  decide +kernel
#print axioms cover_1573384

def state_1573431 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 4) else (if j.val < 3 then 13 else (if j.val < 4 then 7 else 5)))
def hex_1573431 : String := "44054143400507400507434044054241070A050740054405420707"
theorem cover_1573431 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1573431 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 27) (hex := hex_1573431)
  decide +kernel
#print axioms cover_1573431

def state_1573458 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 3 else 2)))
def hex_1573458 : String := "434440050A404309050A44054005440541050A"
theorem cover_1573458 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1573458 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 19) (hex := hex_1573458)
  decide +kernel
#print axioms cover_1573458

def state_1573482 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 4)))
def hex_1573482 : String := "4243060743440A43060505"
theorem cover_1573482 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1573482 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_1573482)
  decide +kernel
#print axioms cover_1573482

def state_1573493 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 4)))
def hex_1573493 : String := "424344060607434441430A0843404206080608414306404206050643404206440606064042084405410508420644060644084105400707"
theorem cover_1573493 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1573493 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 55) (hex := hex_1573493)
  decide +kernel
#print axioms cover_1573493

def state_1573548 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 4)))
def hex_1573548 : String := "4142060A42074344060607"
theorem cover_1573548 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1573548 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_1573548)
  decide +kernel
#print axioms cover_1573548

def state_1573562 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 12 else (if j.val < 4 then 6 else 5)))
def hex_1573562 : String := "43440606444206404105080642064440410606064041060606"
theorem cover_1573562 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1573562 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 25) (hex := hex_1573562)
  decide +kernel
#print axioms cover_1573562
end Mub6.Numerical.CircleFullD0.Forest

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
def state_48745 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 10)))
def hex_48745 : String := "434041424405090942050941420509420505404142440543440509440540414205090505444342050942054041440509050509420544050941420544050905"
theorem cover_48745 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_48745 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 63) (hex := hex_48745)
  decide +kernel
#print axioms cover_48745

def state_48808 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 11)))
def hex_48808 : String := "09"
theorem cover_48808 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_48808 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_48808)
  decide +kernel
#print axioms cover_48808

def state_48809 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 11 else (if j.val < 4 then 5 else 5)))
def hex_48809 : String := "09"
theorem cover_48809 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_48809 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_48809)
  decide +kernel
#print axioms cover_48809

def state_48810 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 5)))
def hex_48810 : String := "424309444143400642050540420505054306400642050541090743094441090A09"
theorem cover_48810 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_48810 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 33) (hex := hex_48810)
  decide +kernel
#print axioms cover_48810

def state_48844 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 5)))
def hex_48844 : String := "424309444043410742050541420505054307410742050540090843094440090609"
theorem cover_48844 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_48844 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 33) (hex := hex_48844)
  decide +kernel
#print axioms cover_48844

def state_48879 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 10 else (if j.val < 4 then 10 else 5)))
def hex_48879 : String := "4440094109424308090909"
theorem cover_48879 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_48879 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_48879)
  decide +kernel
#print axioms cover_48879

def state_48890 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 5)))
def hex_48890 : String := "44404143420505054342060942050541434244050509420505434244404105064107434206094205050909424405054405054009410909"
theorem cover_48890 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_48890 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 55) (hex := hex_48890)
  decide +kernel
#print axioms cover_48890

def state_48945 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 5 else 5)))
def hex_48945 : String := "430944400941090909"
theorem cover_48945 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_48945 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_48945)
  decide +kernel
#print axioms cover_48945

def state_48958 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 4 else 3)))
def hex_48958 : String := "444408404108424305440807080807"
theorem cover_48958 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_48958 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_48958)
  decide +kernel
#print axioms cover_48958

def state_48975 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 10 else 6)))
def hex_48975 : String := "444041084244060A0A0840410A420A0A4142070842430944080709"
theorem cover_48975 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_48975 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 27) (hex := hex_48975)
  decide +kernel
#print axioms cover_48975
end Mub6.Numerical.CircleFullPrototype.Forest

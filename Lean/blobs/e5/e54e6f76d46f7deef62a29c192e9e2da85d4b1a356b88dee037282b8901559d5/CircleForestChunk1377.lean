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
def state_1631275 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 25) else (if j.val < 3 then 26 else (if j.val < 4 then 49 else 17)))
def hex_1631275 : String := "414206404408430608064240444341060907430607064044434109090943414206404443060806064205404443050905054142090942090909"
theorem cover_1631275 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1631275 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 57) (hex := hex_1631275)
  decide +kernel
#print axioms cover_1631275

def state_1631333 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 25) else (if j.val < 3 then 27 else (if j.val < 4 then 24 else 16)))
def hex_1631333 : String := "434140420A070A4042440A430741400709400709070A4140420808094042094406434107060609"
theorem cover_1631333 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1631333 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 39) (hex := hex_1631333)
  decide +kernel
#print axioms cover_1631333

def state_1631374 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 50) else (if j.val < 3 then 27 else (if j.val < 4 then 48 else 17)))
def hex_1631374 : String := "404244430A4108404208070A43064106404206070644070742060A"
theorem cover_1631374 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1631374 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 27) (hex := hex_1631374)
  decide +kernel
#print axioms cover_1631374

def state_1631403 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 51) else (if j.val < 3 then 54 else (if j.val < 4 then 48 else 17)))
def hex_1631403 : String := "444341070741404244430709430741084205070742090740424443050943054105050742050543410505414042444305414205070505074205054042050505"
theorem cover_1631403 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1631403 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 63) (hex := hex_1631403)
  decide +kernel
#print axioms cover_1631403

def state_1631466 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 51) else (if j.val < 3 then 55 else (if j.val < 4 then 48 else 17)))
def hex_1631466 : String := "440707"
theorem cover_1631466 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1631466 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_1631466)
  decide +kernel
#print axioms cover_1631466

def state_1631469 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 41 else 51) else (if j.val < 3 then 27 else (if j.val < 4 then 48 else 17)))
def hex_1631469 : String := "42440A05440A4305410505"
theorem cover_1631469 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1631469 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_1631469)
  decide +kernel
#print axioms cover_1631469

def state_1631481 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 50) else (if j.val < 3 then 27 else (if j.val < 4 then 49 else 17)))
def hex_1631481 : String := "4042440843410840420808420608084408434108400742080708424409430609440943410842090A410809"
theorem cover_1631481 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1631481 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 43) (hex := hex_1631481)
  decide +kernel
#print axioms cover_1631481
end Mub6.Numerical.CircleFullD0.Forest

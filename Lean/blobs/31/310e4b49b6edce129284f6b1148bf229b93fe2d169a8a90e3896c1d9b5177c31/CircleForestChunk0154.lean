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
def state_58302 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 18) else (if j.val < 3 then 26 else (if j.val < 4 then 23 else 17)))
def hex_58302 : String := "43420A4041050A410844430A420A400641080A0A42400541050A404105440905414409054443420A400941090A094342050505"
theorem cover_58302 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_58302 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 51) (hex := hex_58302)
  decide +kernel
#print axioms cover_58302

def state_58353 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 19) else (if j.val < 3 then 26 else (if j.val < 4 then 23 else 8)))
def hex_58353 : String := "44430A42084140090A08430A420A41400A440A0A0A"
theorem cover_58353 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_58353 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_58353)
  decide +kernel
#print axioms cover_58353

def state_58376 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 18) else (if j.val < 3 then 26 else (if j.val < 4 then 23 else 16)))
def hex_58376 : String := "430742074041070707"
theorem cover_58376 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_58376 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_58376)
  decide +kernel
#print axioms cover_58376

def state_58386 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 18) else (if j.val < 3 then 26 else (if j.val < 4 then 46 else 17)))
def hex_58386 : String := "424041070A0740410844430742074041070707084107440707"
theorem cover_58386 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_58386 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 25) (hex := hex_58386)
  decide +kernel
#print axioms cover_58386

def state_58412 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 18) else (if j.val < 3 then 52 else (if j.val < 4 then 47 else 17)))
def hex_58412 : String := "4041440606440743070606"
theorem cover_58412 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_58412 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_58412)
  decide +kernel
#print axioms cover_58412

def state_58425 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 36) else (if j.val < 3 then 53 else (if j.val < 4 then 47 else 17)))
def hex_58425 : String := "444342070709430805"
theorem cover_58425 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_58425 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_58425)
  decide +kernel
#print axioms cover_58425

def state_58435 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 37) else (if j.val < 3 then 53 else (if j.val < 4 then 47 else 34)))
def hex_58435 : String := "4342074041074407430707074207400907"
theorem cover_58435 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_58435 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_58435)
  decide +kernel
#print axioms cover_58435

def state_58452 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 37) else (if j.val < 3 then 53 else (if j.val < 4 then 47 else 35)))
def hex_58452 : String := "43424041050A07404105444308420A0808410844070842400506404105444342050505054106444307064342050805"
theorem cover_58452 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_58452 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 47) (hex := hex_58452)
  decide +kernel
#print axioms cover_58452

def state_58499 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 18) else (if j.val < 3 then 53 else (if j.val < 4 then 47 else 17)))
def hex_58499 : String := "414406064407430706"
theorem cover_58499 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_58499 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_58499)
  decide +kernel
#print axioms cover_58499

def state_58509 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 26 else (if j.val < 4 then 23 else 16)))
def hex_58509 : String := "434207400A054207404144074307070807"
theorem cover_58509 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_58509 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_58509)
  decide +kernel
#print axioms cover_58509

def state_58527 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 26 else (if j.val < 4 then 46 else 17)))
def hex_58527 : String := "420A400A4144050905"
theorem cover_58527 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_58527 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_58527)
  decide +kernel
#print axioms cover_58527

def state_58537 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 52 else (if j.val < 4 then 47 else 17)))
def hex_58537 : String := "400A410707"
theorem cover_58537 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_58537 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_58537)
  decide +kernel
#print axioms cover_58537
end Mub6.Numerical.CircleFullPrototype.Forest

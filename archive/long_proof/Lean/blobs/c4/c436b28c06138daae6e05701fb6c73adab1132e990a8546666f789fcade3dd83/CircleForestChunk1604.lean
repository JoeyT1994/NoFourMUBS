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
def state_2258170 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 52) else (if j.val < 3 then 42 else (if j.val < 4 then 45 else 53)))
def hex_2258170 : String := "434142094405094209440A400A0941420944090942094440430A41090A0909"
theorem cover_2258170 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2258170 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 31) (hex := hex_2258170)
  decide +kernel
#print axioms cover_2258170

def state_2258202 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 52) else (if j.val < 3 then 43 else (if j.val < 4 then 45 else 52)))
def hex_2258202 : String := "404305410608430541054244050505"
theorem cover_2258202 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2258202 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 15) (hex := hex_2258202)
  decide +kernel
#print axioms cover_2258202

def state_2258219 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 52) else (if j.val < 3 then 43 else (if j.val < 4 then 90 else 53)))
def hex_2258219 : String := "414244054043054105420A0505054244400A05400A430A0A440505"
theorem cover_2258219 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2258219 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 27) (hex := hex_2258219)
  decide +kernel
#print axioms cover_2258219

def state_2258249 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 104) else (if j.val < 3 then 86 else (if j.val < 4 then 91 else 106)))
def hex_2258249 : String := "4043064106424406404306084341050A41060806430507"
theorem cover_2258249 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2258249 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 23) (hex := hex_2258249)
  decide +kernel
#print axioms cover_2258249

def state_2258274 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 72 else 104) else (if j.val < 3 then 86 else (if j.val < 4 then 182 else 107)))
def hex_2258274 : String := "4142440509054244400A0A400A4309094405BE"
theorem cover_2258274 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2258274 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 19) (hex := hex_2258274)
  decide +kernel
#print axioms cover_2258274

def state_2258293 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 72 else 104) else (if j.val < 3 then 86 else (if j.val < 4 then 183 else 107)))
def hex_2258293 : String := "4142444043060907094405BE42444043414209060A4142094406090A4341090A41094209440709404341090A410942090A094440430608430507BE"
theorem cover_2258293 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2258293 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 59) (hex := hex_2258293)
  decide +kernel
#print axioms cover_2258293

def state_2258352 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 73 else 104) else (if j.val < 3 then 86 else (if j.val < 4 then 91 else 107)))
def hex_2258352 : String := "434105424405090541074244090907"
theorem cover_2258352 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2258352 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 15) (hex := hex_2258352)
  decide +kernel
#print axioms cover_2258352

def state_2258367 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 104) else (if j.val < 3 then 87 else (if j.val < 4 then 91 else 53)))
def hex_2258367 : String := "44054043054105424405BE0505"
theorem cover_2258367 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2258367 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_2258367)
  decide +kernel
#print axioms cover_2258367

def state_2258382 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 105) else (if j.val < 3 then 86 else (if j.val < 4 then 91 else 106)))
def hex_2258382 : String := "404341420A0508084341420A050A41424408400A070808"
theorem cover_2258382 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2258382 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_2258382)
  decide +kernel
#print axioms cover_2258382
end Mub6.Numerical.CircleFullD0.Forest

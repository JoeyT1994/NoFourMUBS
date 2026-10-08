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
def state_49262 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 8 else (if j.val < 4 then 22 else 13)))
def hex_49262 : String := "4440414243084408400A07430844080A4206430944060A08400A410742054305400A05"
theorem cover_49262 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_49262 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 35) (hex := hex_49262)
  decide +kernel
#print axioms cover_49262

def state_49301 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 18) else (if j.val < 3 then 16 else (if j.val < 4 then 23 else 26)))
def hex_49301 : String := "434440410806084041094206430609410842064308440640090709"
theorem cover_49301 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_49301 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 27) (hex := hex_49301)
  decide +kernel
#print axioms cover_49301

def state_49328 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 18) else (if j.val < 3 then 17 else (if j.val < 4 then 23 else 26)))
def hex_49328 : String := "4344084041050A41084243084408400A0808444005084041054209054142090542434408400908094344050505"
theorem cover_49328 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_49328 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 45) (hex := hex_49328)
  decide +kernel
#print axioms cover_49328

def state_49374 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 19) else (if j.val < 3 then 16 else (if j.val < 4 then 23 else 26)))
def hex_49374 : String := "430644064140060606"
theorem cover_49374 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_49374 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_49374)
  decide +kernel
#print axioms cover_49374

def state_49384 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 19) else (if j.val < 3 then 17 else (if j.val < 4 then 46 else 26)))
def hex_49384 : String := "44414006080641400A424306440641400606060A4006420606"
theorem cover_49384 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_49384 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 25) (hex := hex_49384)
  decide +kernel
#print axioms cover_49384

def state_49410 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 19) else (if j.val < 3 then 17 else (if j.val < 4 then 47 else 52)))
def hex_49410 : String := "4140420607420643060706"
theorem cover_49410 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_49410 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_49410)
  decide +kernel
#print axioms cover_49410

def state_49423 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 38) else (if j.val < 3 then 17 else (if j.val < 4 then 47 else 53)))
def hex_49423 : String := "424344060609430A05"
theorem cover_49423 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_49423 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_49423)
  decide +kernel
#print axioms cover_49423

def state_49433 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 38) else (if j.val < 3 then 34 else (if j.val < 4 then 47 else 53)))
def hex_49433 : String := "4344064140064206430606064406410906"
theorem cover_49433 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_49433 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_49433)
  decide +kernel
#print axioms cover_49433

def state_49450 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 38) else (if j.val < 3 then 35 else (if j.val < 4 then 47 else 53)))
def hex_49450 : String := "4344414005080641400542430844080A0A400A42060A44410507414005424344050505054007424306064344050A05"
theorem cover_49450 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_49450 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 47) (hex := hex_49450)
  decide +kernel
#print axioms cover_49450

def state_49497 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 39) else (if j.val < 3 then 17 else (if j.val < 4 then 47 else 53)))
def hex_49497 : String := "404206074206430607"
theorem cover_49497 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_49497 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_49497)
  decide +kernel
#print axioms cover_49497
end Mub6.Numerical.CircleFullPrototype.Forest

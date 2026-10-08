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
def state_1010220 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 9 else (if j.val < 4 then 27 else 10)))
def hex_1010220 : String := "440741424044074142074307070707404405414243054044054207050705054407414207050707"
theorem cover_1010220 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1010220 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 39) (hex := hex_1010220)
  decide +kernel
#print axioms cover_1010220

def state_1010259 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 15) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 10)))
def hex_1010259 : String := "4206400507"
theorem cover_1010259 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1010259 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1010259)
  decide +kernel
#print axioms cover_1010259

def state_1010267 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 14) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 11)))
def hex_1010267 : String := "44434142064006444341420640064406434142064006440606060606064341420640064443410A06060A060A060A4341420A44400A430A0A0A0A0A"
theorem cover_1010267 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1010267 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 17) (count := 59) (hex := hex_1010267)
  decide +kernel
#print axioms cover_1010267

def state_1010330 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 16 else (if j.val < 4 then 26 else 22)))
def hex_1010330 : String := "404406434105060607"
theorem cover_1010330 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1010330 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1010330)
  decide +kernel
#print axioms cover_1010330

def state_1010341 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 28) else (if j.val < 3 then 17 else (if j.val < 4 then 26 else 44)))
def hex_1010341 : String := "43414240060740440943090909074142064044060A0706"
theorem cover_1010341 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1010341 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_1010341)
  decide +kernel
#print axioms cover_1010341

def state_1010367 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 56) else (if j.val < 3 then 34 else (if j.val < 4 then 52 else 45)))
def hex_1010367 : String := "4044430906430505440905"
theorem cover_1010367 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1010367 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 11) (hex := hex_1010367)
  decide +kernel
#print axioms cover_1010367

def state_1010379 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 56) else (if j.val < 3 then 35 else (if j.val < 4 then 52 else 45)))
def hex_1010379 : String := "44434142400909404409430909090941420A400A090943414205404443414205400705090A4341050A0A44430909054209400A09414205400A440A050A"
theorem cover_1010379 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1010379 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 61) (hex := hex_1010379)
  decide +kernel
#print axioms cover_1010379

def state_1010440 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 56) else (if j.val < 3 then 35 else (if j.val < 4 then 52 else 45)))
def hex_1010440 : String := "4443090943414205404409050509410509"
theorem cover_1010440 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1010440 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_1010440)
  decide +kernel
#print axioms cover_1010440

def state_1010457 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 57) else (if j.val < 3 then 17 else (if j.val < 4 then 52 else 45)))
def hex_1010457 : String := "42094044090909"
theorem cover_1010457 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1010457 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1010457)
  decide +kernel
#print axioms cover_1010457

def state_1010464 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 28) else (if j.val < 3 then 17 else (if j.val < 4 then 53 else 45)))
def hex_1010464 : String := "4142400605400A44430907084206400607"
theorem cover_1010464 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1010464 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 17) (hex := hex_1010464)
  decide +kernel
#print axioms cover_1010464
end Mub6.Numerical.CircleFullD0.Forest

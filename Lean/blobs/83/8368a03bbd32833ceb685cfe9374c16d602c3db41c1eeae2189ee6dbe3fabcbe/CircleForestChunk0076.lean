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
def state_18144 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 13 else (if j.val < 4 then 4 else 5)))
def hex_18144 : String := "444041430A420A440A0A430A420A440A0A410A0A4041430A0A430A0A0A"
theorem cover_18144 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_18144 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 29) (hex := hex_18144)
  decide +kernel
#print axioms cover_18144

def state_18173 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 2)))
def hex_18173 : String := "4442074340414407070741090708420543444041054208434407404105080508050505"
theorem cover_18173 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_18173 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 35) (hex := hex_18173)
  decide +kernel
#print axioms cover_18173

def state_18213 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 4 else 4)))
def hex_18213 : String := "434406404108060644404109060640414243090943080942430A44070A43064406404344064108064441090641420908420706430644064109064109420A06"
theorem cover_18213 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_18213 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 63) (hex := hex_18213)
  decide +kernel
#print axioms cover_18213

def state_18276 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 14) else (if j.val < 3 then 15 else (if j.val < 4 then 4 else 4)))
def hex_18276 : String := "43064406404143060943064406420606410606"
theorem cover_18276 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_18276 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 19) (hex := hex_18276)
  decide +kernel
#print axioms cover_18276

def state_18295 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 15) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 4)))
def hex_18295 : String := "424306440640424306074306440641060642060606"
theorem cover_18295 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_18295 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 21) (hex := hex_18295)
  decide +kernel
#print axioms cover_18295

def state_18316 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 4)))
def hex_18316 : String := "414243060A0606"
theorem cover_18316 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_18316 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_18316)
  decide +kernel
#print axioms cover_18316

def state_18327 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 4 else 10)))
def hex_18327 : String := "4308444041420A08420A4308404308410842440A08444008080843084108420A440608410A0A404108420A08410A0A"
theorem cover_18327 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_18327 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 47) (hex := hex_18327)
  decide +kernel
#print axioms cover_18327

def state_18374 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 14) else (if j.val < 3 then 15 else (if j.val < 4 then 4 else 10)))
def hex_18374 : String := "43074440410843074240080807410743064243064008060607"
theorem cover_18374 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_18374 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 25) (hex := hex_18374)
  decide +kernel
#print axioms cover_18374

def state_18401 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 15) else (if j.val < 3 then 14 else (if j.val < 4 then 8 else 10)))
def hex_18401 : String := "440A0A"
theorem cover_18401 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_18401 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_18401)
  decide +kernel
#print axioms cover_18401
end Mub6.Numerical.CircleFullPrototype.Forest

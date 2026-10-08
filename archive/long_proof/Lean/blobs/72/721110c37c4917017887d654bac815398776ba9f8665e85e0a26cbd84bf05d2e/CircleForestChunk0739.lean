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
def state_1478234 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 45) else (if j.val < 3 then 16 else (if j.val < 4 then 44 else 58)))
def hex_1478234 : String := "42404143444240090A094240050605440A424009060909414344420A07060A0A404143090909414307440842404143050A050608430708"
theorem cover_1478234 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1478234 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 55) (hex := hex_1478234)
  decide +kernel
#print axioms cover_1478234

def state_1478289 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 45) else (if j.val < 3 then 16 else (if j.val < 4 then 44 else 59)))
def hex_1478289 : String := "42404143050505064005414305444206050505"
theorem cover_1478289 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1478289 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_1478289)
  decide +kernel
#print axioms cover_1478289

def state_1478308 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 45) else (if j.val < 3 then 16 else (if j.val < 4 then 45 else 29)))
def hex_1478308 : String := "44420A4041430909090A424041434442060505070906404143050905414344420640050605440A06430509"
theorem cover_1478308 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1478308 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 43) (hex := hex_1478308)
  decide +kernel
#print axioms cover_1478308

def state_1478353 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 44) else (if j.val < 3 then 16 else (if j.val < 4 then 44 else 29)))
def hex_1478353 : String := "4442404143060643060606404143074407074307080742064041060606"
theorem cover_1478353 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1478353 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 29) (hex := hex_1478353)
  decide +kernel
#print axioms cover_1478353

def state_1478382 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 44) else (if j.val < 3 then 16 else (if j.val < 4 then 45 else 29)))
def hex_1478382 : String := "4442404341060606064043414409094408420608414409060A434106060A4206400606"
theorem cover_1478382 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1478382 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 35) (hex := hex_1478382)
  decide +kernel
#print axioms cover_1478382

def state_1478417 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 45) else (if j.val < 3 then 16 else (if j.val < 4 then 22 else 29)))
def hex_1478417 : String := "43444240414306060606084206400606440A06"
theorem cover_1478417 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1478417 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_1478417)
  decide +kernel
#print axioms cover_1478417

def state_1478440 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 44) else (if j.val < 3 then 17 else (if j.val < 4 then 44 else 58)))
def hex_1478440 : String := "424041430A4442404305064308080842050543440805440805414307440842404307410805070743070840410A0808"
theorem cover_1478440 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1478440 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 47) (hex := hex_1478440)
  decide +kernel
#print axioms cover_1478440
end Mub6.Numerical.CircleFullD0.Forest

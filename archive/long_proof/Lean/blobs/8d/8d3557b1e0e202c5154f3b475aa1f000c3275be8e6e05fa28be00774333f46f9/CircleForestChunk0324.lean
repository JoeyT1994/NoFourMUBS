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
def state_153126 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 7 else 7)))
def hex_153126 : String := "4344414205404344090509054240430A0705404344414209084207404308070908440741420508074344090A09410542050844410507410542054043060605"
theorem cover_153126 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_153126 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 63) (hex := hex_153126)
  decide +kernel
#print axioms cover_153126

def state_153190 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
def hex_153190 : String := "424344050505434442430705434407404105074105070942054340050505440905"
theorem cover_153190 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_153190 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 33) (hex := hex_153190)
  decide +kernel
#print axioms cover_153190

def state_153224 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 3)))
def hex_153224 : String := "434441430805430A4440420508420508050A444105444005050505"
theorem cover_153224 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_153224 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 27) (hex := hex_153224)
  decide +kernel
#print axioms cover_153224

def state_153254 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 10) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 6)))
def hex_153254 : String := "4243074408054344064007074409404205094205410507"
theorem cover_153254 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_153254 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_153254)
  decide +kernel
#print axioms cover_153254

def state_153277 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 11) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 6)))
def hex_153277 : String := "424344060A444008084041050A41054205084306440640414243070543060942430644060A06414243060506420606"
theorem cover_153277 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_153277 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 47) (hex := hex_153277)
  decide +kernel
#print axioms cover_153277

def state_153324 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 7)))
def hex_153324 : String := "41420543404442070A0A4442054307050A05420A430A4044414205430A050A0A4441054205430644400A06050A"
theorem cover_153324 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_153324 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 45) (hex := hex_153324)
  decide +kernel
#print axioms cover_153324
end Mub6.Numerical.CircleFullPrototype.Forest

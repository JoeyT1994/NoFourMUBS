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
def state_989299 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 109) else (if j.val < 3 then 70 else (if j.val < 4 then 206 else 174)))
def hex_989299 : String := "4142404308444142400609080841420540080808434408410A084409410509400843084408410A08420908"
theorem cover_989299 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_989299 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 43) (hex := hex_989299)
  decide +kernel
#print axioms cover_989299

def state_989342 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 109) else (if j.val < 3 then 70 else (if j.val < 4 then 206 else 175)))
def hex_989342 : String := "41424043444105080544410542050805434441050505054043084408074344080644410A084105420506424043084408090908"
theorem cover_989342 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_989342 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 51) (hex := hex_989342)
  decide +kernel
#print axioms cover_989342

def state_989393 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 109) else (if j.val < 3 then 70 else (if j.val < 4 then 207 else 87)))
def hex_989393 : String := "C6"
theorem cover_989393 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_989393 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_989393)
  decide +kernel
#print axioms cover_989393

def state_989394 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 109) else (if j.val < 3 then 71 else (if j.val < 4 then 103 else 87)))
def hex_989394 : String := "404308C643440842414008060808C6"
theorem cover_989394 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_989394 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_989394)
  decide +kernel
#print axioms cover_989394

def state_989409 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 55) else (if j.val < 3 then 17 else (if j.val < 4 then 51 else 43)))
def hex_989409 : String := "4240064344094142064008090644064142064006430906064043084406084308444142400607050541424043080643440808C60808"
theorem cover_989409 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_989409 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 53) (hex := hex_989409)
  decide +kernel
#print axioms cover_989409

def state_989464 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 26) else (if j.val < 3 then 8 else (if j.val < 4 then 24 else 10)))
def hex_989464 : String := "44424043410A0A41440A0A440742404309410A07070A430A410A0740430A410A0A0A42404341050A41440A054442050A05430641050A40430641060A06"
theorem cover_989464 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_989464 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 61) (hex := hex_989464)
  decide +kernel
#print axioms cover_989464
end Mub6.Numerical.CircleFullD0.Forest

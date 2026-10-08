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
def state_1494402 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 20) else (if j.val < 3 then 20 else (if j.val < 4 then 25 else 29)))
def hex_1494402 : String := "430A44410A424006430A4442080608060A"
theorem cover_1494402 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1494402 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 17) (hex := hex_1494402)
  decide +kernel
#print axioms cover_1494402

def state_1494420 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 20) else (if j.val < 3 then 20 else (if j.val < 4 then 50 else 29)))
def hex_1494420 : String := "44410A4240430A0A43444209080944424109090A0A0A0A"
theorem cover_1494420 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1494420 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 23) (hex := hex_1494420)
  decide +kernel
#print axioms cover_1494420

def state_1494445 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 40) else (if j.val < 3 then 20 else (if j.val < 4 then 51 else 58)))
def hex_1494445 : String := "42400A4309444109420909090A"
theorem cover_1494445 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1494445 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1494445)
  decide +kernel
#print axioms cover_1494445

def state_1494460 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 98 else 41) else (if j.val < 3 then 40 else (if j.val < 4 then 51 else 58)))
def hex_1494460 : String := "434442410A400643064406410A060A0A4442414008430A08400843440541080808410A06424108080A"
theorem cover_1494460 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1494460 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 41) (hex := hex_1494460)
  decide +kernel
#print axioms cover_1494460

def state_1494502 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 41) else (if j.val < 3 then 40 else (if j.val < 4 then 102 else 58)))
def hex_1494502 : String := "44424109404344410906094441090541090909410A40430644060A43440609444109060942090A"
theorem cover_1494502 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1494502 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 39) (hex := hex_1494502)
  decide +kernel
#print axioms cover_1494502

def state_1494542 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 41) else (if j.val < 3 then 40 else (if j.val < 4 then 103 else 116)))
def hex_1494542 : String := "4241404309090940434405410905050541400A09404344060A444142050505410A4205064344410905410942050A4405410905"
theorem cover_1494542 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1494542 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 51) (hex := hex_1494542)
  decide +kernel
#print axioms cover_1494542

def state_1494593 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 41) else (if j.val < 3 then 40 else (if j.val < 4 then 103 else 117)))
def hex_1494593 : String := "4241094043090809410A40430A0A430941094442050909"
theorem cover_1494593 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1494593 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 23) (hex := hex_1494593)
  decide +kernel
#print axioms cover_1494593

def state_1494616 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 41) else (if j.val < 3 then 41 else (if j.val < 4 then 51 else 58)))
def hex_1494616 : String := "400A430A44410A424006430A44060A060A"
theorem cover_1494616 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1494616 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 17) (hex := hex_1494616)
  decide +kernel
#print axioms cover_1494616

def state_1494633 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 20) else (if j.val < 3 then 20 else (if j.val < 4 then 51 else 59)))
def hex_1494633 : String := "410A42400A430A42090A0A"
theorem cover_1494633 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1494633 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_1494633)
  decide +kernel
#print axioms cover_1494633

def state_1494644 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 20) else (if j.val < 3 then 21 else (if j.val < 4 then 25 else 14)))
def hex_1494644 : String := "4440064306424406410A06060A"
theorem cover_1494644 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1494644 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1494644)
  decide +kernel
#print axioms cover_1494644
end Mub6.Numerical.CircleFullD0.Forest

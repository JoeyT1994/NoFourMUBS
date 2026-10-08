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
def state_134170 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 11 else (if j.val < 4 then 13 else 12)))
def hex_134170 : String := "400A4244094109434042440841094306080909090A"
theorem cover_134170 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_134170 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 21) (hex := hex_134170)
  decide +kernel
#print axioms cover_134170

def state_134192 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 10) else (if j.val < 3 then 11 else (if j.val < 4 then 13 else 13)))
def hex_134192 : String := "424143070A4344400A4241074307440A070707440A4006420606410743070A"
theorem cover_134192 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_134192 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 31) (hex := hex_134192)
  decide +kernel
#print axioms cover_134192

def state_134225 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 20) else (if j.val < 3 then 22 else (if j.val < 4 then 13 else 13)))
def hex_134225 : String := "4307440907"
theorem cover_134225 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_134225 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_134225)
  decide +kernel
#print axioms cover_134225

def state_134231 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 21) else (if j.val < 3 then 22 else (if j.val < 4 then 26 else 13)))
def hex_134231 : String := "4440424107430744400A420509070742410543074405050707"
theorem cover_134231 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_134231 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 25) (hex := hex_134231)
  decide +kernel
#print axioms cover_134231

def state_134256 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 21) else (if j.val < 3 then 22 else (if j.val < 4 then 27 else 13)))
def hex_134256 : String := "444042410A440843400A050A0A424105440905094042410543444007050606410743070642410543050541074307440905"
theorem cover_134256 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_134256 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 49) (hex := hex_134256)
  decide +kernel
#print axioms cover_134256

def state_134305 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 10) else (if j.val < 3 then 23 else (if j.val < 4 then 13 else 13)))
def hex_134305 : String := "41074307440A400707"
theorem cover_134305 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_134305 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_134305)
  decide +kernel
#print axioms cover_134305

def state_134316 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 6)))
def hex_134316 : String := "44404143440642080644084208400841430608084308084143064406420806430608400941430A420A4440414307420A440607090A0909"
theorem cover_134316 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_134316 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 55) (hex := hex_134316)
  decide +kernel
#print axioms cover_134316

def state_134372 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 12)))
def hex_134372 : String := "08"
theorem cover_134372 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_134372 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_134372)
  decide +kernel
#print axioms cover_134372

def state_134374 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 11) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 13)))
def hex_134374 : String := "414243440809084344400941420843440809080809440840064106064208430908"
theorem cover_134374 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_134374 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 33) (hex := hex_134374)
  decide +kernel
#print axioms cover_134374

def state_134409 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 20 else (if j.val < 4 then 13 else 13)))
def hex_134409 : String := "4344080A08"
theorem cover_134409 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_134409 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_134409)
  decide +kernel
#print axioms cover_134409
end Mub6.Numerical.CircleFullPrototype.Forest

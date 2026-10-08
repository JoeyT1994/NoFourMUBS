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
def state_147165 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 14 else (if j.val < 4 then 27 else 26)))
def hex_147165 : String := "42400A4442410A43400A44064206090A0A42410543400A444241054306050A42050A050A400A44090A"
theorem cover_147165 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_147165 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 41) (hex := hex_147165)
  decide +kernel
#print axioms cover_147165

def state_147206 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 14 else (if j.val < 4 then 27 else 27)))
def hex_147206 : String := "424042410543440A05050A4205410543444007424105430705070505400742410743070A07"
theorem cover_147206 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_147206 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 37) (hex := hex_147206)
  decide +kernel
#print axioms cover_147206

def state_147243 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 15 else (if j.val < 4 then 13 else 13)))
def hex_147243 : String := "400707"
theorem cover_147243 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_147243 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_147243)
  decide +kernel
#print axioms cover_147243

def state_147246 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 7)))
def hex_147246 : String := "400741084342440707074244404107430706410843084205080507"
theorem cover_147246 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_147246 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 27) (hex := hex_147246)
  decide +kernel
#print axioms cover_147246

def state_147273 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 3)))
def hex_147273 : String := "44400A410A44420A0A4243400A410A440A0A050A40064106420506"
theorem cover_147273 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_147273 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 27) (hex := hex_147273)
  decide +kernel
#print axioms cover_147273

def state_147304 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 6)))
def hex_147304 : String := "42434408090843440841090944084140080908"
theorem cover_147304 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_147304 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 19) (hex := hex_147304)
  decide +kernel
#print axioms cover_147304

def state_147324 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 12 else (if j.val < 4 then 6 else 6)))
def hex_147324 : String := "4344084140090A0A440841400842070808"
theorem cover_147324 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_147324 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 17) (hex := hex_147324)
  decide +kernel
#print axioms cover_147324

def state_147343 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 13 else (if j.val < 4 then 12 else 12)))
def hex_147343 : String := "4140080605"
theorem cover_147343 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_147343 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_147343)
  decide +kernel
#print axioms cover_147343

def state_147349 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 13 else (if j.val < 4 then 12 else 13)))
def hex_147349 : String := "404342094407074209444107080943420A44410605414007060A42444140080608094441404306440641420607080605414009430A414209440607090A"
theorem cover_147349 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_147349 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 61) (hex := hex_147349)
  decide +kernel
#print axioms cover_147349

def state_147410 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 15) else (if j.val < 3 then 13 else (if j.val < 4 then 12 else 13)))
def hex_147410 : String := "40430A080A"
theorem cover_147410 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_147410 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_147410)
  decide +kernel
#print axioms cover_147410

def state_147416 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 13 else (if j.val < 4 then 13 else 12)))
def hex_147416 : String := "08"
theorem cover_147416 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_147416 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_147416)
  decide +kernel
#print axioms cover_147416
end Mub6.Numerical.CircleFullPrototype.Forest

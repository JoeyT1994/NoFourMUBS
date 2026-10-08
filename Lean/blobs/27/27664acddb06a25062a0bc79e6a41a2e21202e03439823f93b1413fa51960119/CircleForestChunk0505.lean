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
def state_282668 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 3)))
def hex_282668 : String := "44424344080544404144424305410540050508054442430607060741440805440842050540410506054305444006080605"
theorem cover_282668 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_282668 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 49) (hex := hex_282668)
  decide +kernel
#print axioms cover_282668

def state_282724 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 14) else (if j.val < 3 then 10 else (if j.val < 4 then 14 else 24)))
def hex_282724 : String := "4241434044410543050A050540440A4109434205050A440A094340440A07440A07400A0A41434044080505094340440806080A"
theorem cover_282724 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_282724 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 51) (hex := hex_282724)
  decide +kernel
#print axioms cover_282724

def state_282775 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 14) else (if j.val < 3 then 10 else (if j.val < 4 then 14 else 25)))
def hex_282775 : String := "42414305404441054305080505074109430640444209060909"
theorem cover_282775 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_282775 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 25) (hex := hex_282775)
  decide +kernel
#print axioms cover_282775

def state_282800 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 14) else (if j.val < 3 then 10 else (if j.val < 4 then 15 else 12)))
def hex_282800 : String := "44420A0A42410840080A09"
theorem cover_282800 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_282800 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_282800)
  decide +kernel
#print axioms cover_282800

def state_282811 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 15) else (if j.val < 3 then 10 else (if j.val < 4 then 7 else 12)))
def hex_282811 : String := "4344420A0A42074306400707440A4207404143440A07080A0A"
theorem cover_282811 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_282811 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 25) (hex := hex_282811)
  decide +kernel
#print axioms cover_282811

def state_282836 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 7) else (if j.val < 3 then 10 else (if j.val < 4 then 7 else 12)))
def hex_282836 : String := "4143444240414305090A41090A0942404105070509440A0943440A420740070A0A"
theorem cover_282836 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_282836 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 33) (hex := hex_282836)
  decide +kernel
#print axioms cover_282836

def state_282869 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 10 else (if j.val < 4 then 7 else 13)))
def hex_282869 : String := "4041434205444105060508074143050907"
theorem cover_282869 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_282869 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_282869)
  decide +kernel
#print axioms cover_282869

def state_282886 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 11 else (if j.val < 4 then 7 else 6)))
def hex_282886 : String := "4440410943424406060642440A09094109434244080606094041094306424409060609"
theorem cover_282886 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_282886 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 35) (hex := hex_282886)
  decide +kernel
#print axioms cover_282886

def state_282921 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 7)))
def hex_282921 : String := "4207400606"
theorem cover_282921 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_282921 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_282921)
  decide +kernel
#print axioms cover_282921
end Mub6.Numerical.CircleFullPrototype.Forest

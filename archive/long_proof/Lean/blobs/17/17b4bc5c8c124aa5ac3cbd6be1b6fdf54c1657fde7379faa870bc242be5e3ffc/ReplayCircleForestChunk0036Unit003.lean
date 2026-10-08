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
def state_371979 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
def hex_371979 : String := "424344074440050705440743440740054105074440060740414243054406054305440605424305440605434406050641420743440705440740420541430508084207410707420743440740050744074041420508420708074344074209084442430706430940064109074243444009070A444006414307070740410843080841430A440A0A430A4442400607084240080A08430A44404108060A40080A"
theorem cover_371979 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_371979 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 15) (count := 157) (hex := hex_371979)
  decide +kernel
#print axioms cover_371979

def state_372138 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 4 else 2)))
def hex_372138 : String := "440941440940054205430509444009420809404243410544080541054408050942434105440805414408050843414409054409400942434105060643090941440940050A440940094243060609"
theorem cover_372138 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_372138 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 77) (hex := hex_372138)
  decide +kernel
#print axioms cover_372138

def state_372216 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 4)))
def hex_372216 : String := "41074308400607"
theorem cover_372216 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_372216 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_372216)
  decide +kernel
#print axioms cover_372216

def state_372224 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 10) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 5)))
def hex_372224 : String := "43444042410743094406400607094207074042444105430540420509420744070505440905424407054441074309400907410543054042050907444006074042434441074006074105400A420744430507054406414006070A4344410606414205084240440605444341054205050605400644060844064106064243070743444107074140420544070507404244074305410540420505074443094106064309410842400844070508420744070A444107400607414042074308060740424344064107400607064344064106060642074344074107074406410707"
theorem cover_372224 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_372224 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 16) (count := 219) (hex := hex_372224)
  decide +kernel
#print axioms cover_372224
end Mub6.Numerical.CircleFullPrototype.Forest

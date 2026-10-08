import FourierPilotCircleTree002819
import FourierPilotCircleTree002820
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002818
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, true, false]
def state : State := ![98, 46, 32, 42, 53]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree002819.state FourierPilotCircleTree002820.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002819.covered FourierPilotCircleTree002820.covered
#print axioms covered
end FourierPilotCircleTree002818

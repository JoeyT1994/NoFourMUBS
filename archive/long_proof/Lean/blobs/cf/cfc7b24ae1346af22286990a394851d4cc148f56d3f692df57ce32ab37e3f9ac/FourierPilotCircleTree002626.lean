import FourierPilotCircleTree002627
import FourierPilotCircleTree002628
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002626
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, false]
def state : State := ![29, 20, 27, 22, 15]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree002627.state FourierPilotCircleTree002628.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002627.covered FourierPilotCircleTree002628.covered
#print axioms covered
end FourierPilotCircleTree002626

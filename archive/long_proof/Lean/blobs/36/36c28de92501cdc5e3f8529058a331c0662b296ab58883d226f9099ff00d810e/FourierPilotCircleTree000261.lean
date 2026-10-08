import FourierPilotCircleTree000262
import FourierPilotCircleTree000263
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000261
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, false]
def state : State := ![5, 7, 7, 3, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree000262.state FourierPilotCircleTree000263.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000262.covered FourierPilotCircleTree000263.covered
#print axioms covered
end FourierPilotCircleTree000261

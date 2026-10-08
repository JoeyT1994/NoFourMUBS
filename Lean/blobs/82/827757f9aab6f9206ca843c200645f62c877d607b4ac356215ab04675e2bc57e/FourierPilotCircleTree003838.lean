import FourierPilotCircleTree003839
import FourierPilotCircleTree003840
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003838
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![40, 55, 31, 30, 17]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree003839.state FourierPilotCircleTree003840.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003839.covered FourierPilotCircleTree003840.covered
#print axioms covered
end FourierPilotCircleTree003838

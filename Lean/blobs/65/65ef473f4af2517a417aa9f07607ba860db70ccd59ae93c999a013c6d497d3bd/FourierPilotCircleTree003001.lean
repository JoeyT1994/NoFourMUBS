import FourierPilotCircleTree003002
import FourierPilotCircleTree003003
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003001
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, false, true]
def state : State := ![3, 2, 3, 2, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree003002.state FourierPilotCircleTree003003.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003002.covered FourierPilotCircleTree003003.covered
#print axioms covered
end FourierPilotCircleTree003001

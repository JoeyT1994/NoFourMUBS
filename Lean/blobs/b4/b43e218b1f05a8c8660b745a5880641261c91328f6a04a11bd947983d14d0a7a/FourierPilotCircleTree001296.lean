import FourierPilotCircleTree001297
import FourierPilotCircleTree001300
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001296
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, true, false]
def state : State := ![111, 80, 32, 68, 123]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree001297.state FourierPilotCircleTree001300.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001297.covered FourierPilotCircleTree001300.covered
#print axioms covered
end FourierPilotCircleTree001296

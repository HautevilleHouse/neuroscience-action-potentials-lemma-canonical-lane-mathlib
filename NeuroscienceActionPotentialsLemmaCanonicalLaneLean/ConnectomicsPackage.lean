import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceActionPotentialsLemmaCanonicalLaneLean

structure ConnectomicsPackage where
  neurons : Type
  synapses : Type
  connectivityMatrix : Type
  topologicalFeatures : Prop
  graphMetricsDefined : Prop

structure ConnectomicsEvidence (C : ConnectomicsPackage) where
  graphMetricsDefinedClosed : C.graphMetricsDefined

def ConnectomicsClosed (C : ConnectomicsPackage) : Prop :=
  C.graphMetricsDefined

theorem connectomics_closed_from_evidence (C : ConnectomicsPackage) (E : ConnectomicsEvidence C) :
    ConnectomicsClosed C := by
  exact E.graphMetricsDefinedClosed

end HautevilleHouse
end NeuroscienceActionPotentialsLemmaCanonicalLaneLean

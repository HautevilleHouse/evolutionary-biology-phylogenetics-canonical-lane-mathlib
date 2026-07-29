import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyPhylogeneticsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  HardyWeinbergClosed A.hardyWeinberg ∧ LinkageEquilibriumClosed A.linkageEquilibrium

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  refine And.intro ?_ ?_
  · exact A.hardyWeinbergEvidence.equilibriumConditionClosed
  · exact A.linkageEvidence.equilibriumConditionClosed

end EvolutionaryBiologyPhylogeneticsCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyPhylogeneticsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  PhylogeneticWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end EvolutionaryBiologyPhylogeneticsCanonicalLaneLean
end HautevilleHouse
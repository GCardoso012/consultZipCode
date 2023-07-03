public with sharing class consultCepController {
    
    @AuraEnabled(cacheable=true)
    public static CEPResponse getCEPInformation(String cep) {
        
        CEPResponse cepResponse = CalloutService.makeCEPCallout(cep);
        
        return cepResponse;
    }

}

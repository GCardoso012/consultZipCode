public with sharing class CalloutService {

    public static CEPResponse makeCEPCallout(String cep){
        
        CEPResponse cepResponse = CEPCallout.cepCallout(cep);
        
        return cepResponse;
    }

}

public with sharing class CEPCallout {
    
    public static CEPResponse makeCEPCallout(String CEP){
        
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://viacep.com.br/ws/'+ CEP +'/json');
        request.setMethod('GET');

        HttpResponse response = http.send(request);

        CEPResponse cepResponse = new CEPResponse(); 

        if(response.getStatusCode() == 200 && response.getBody() != null){
            cepResponse = (CEPResponse) JSON.deserialize(response.getBody(), CEPResponse.class);
            
            return cepResponse;
        }
        
        return cepResponse;
    }
}

// Use .apex files to store anonymous Apex.
// You can execute anonymous Apex in VS Code by selecting the
//     apex text and running the command:
//     SFDX: Execute Anonymous Apex with Currently Selected Text
// You can also execute the entire file by running the command:
//     SFDX: Execute Anonymous Apex with Editor Contents

CEPResponse test = CEPCallout.makeCEPCallout('13310050');
System.debug('ENDERECO - '+JSON.serialize(test));
System.debug('ENDERECO RUA - '+test.logradouro);
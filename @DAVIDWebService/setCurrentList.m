function xReturn = setCurrentList(obj,args0)
%setCurrentList(obj,args0)
%
%     Input:
%       args0 = (int)
%   
%     Output:
%       return = (int)

% Build up the argument lists.
values = { ...
   args0, ...
   };
names = { ...
   'args0', ...
   };
types = { ...
   '{http://www.w3.org/2001/XMLSchema}int', ...
   };

% Create the message, make the call, and convert the response into a variable.
soapMessage = createSoapMessage( ...
    'http://service.session.sample', ...
    'setCurrentList', ...
    values,names,types,'document');
response = callSoapService( ...
    obj.endpoint, ...
    'urn:setCurrentList', ...
    soapMessage);
xReturn = parseSoapResponse(response);
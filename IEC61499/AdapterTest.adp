<?xml version="1.0" encoding="UTF-8"?>
  <!DOCTYPE AdapterType SYSTEM "../LibraryElement.dtd" >
  <AdapterType Name="AdapterTest" Namespace="Main" GUID="3a5215b7-5ae1-4a88-877b-bb16ca648d98" Comment="Adapter Interface" >
    <Identification Standard="61499-1" />
    <VersionInfo Organization="Schneider Electric" Version="0.0" Author="Admin" Date="18/05/2022" />
  <CompilerInfo />
    <InterfaceList>
      <EventInputs>
        <Event Name="REQ" Comment="Request from Socket" >
          <With Var="REQD" />
        </Event>
        <Event Name="RSP" Comment="Response from Socket" >
          <With Var="RSPD" />
        </Event>
      </EventInputs>
      <EventOutputs>
        <Event Name="CNF" Comment="Confirmation from Plug" >
          <With Var="CNFD" />
        </Event>
        <Event Name="IND" Comment="Indication from Plug" >
          <With Var="INDD" />
        </Event>
      </EventOutputs>
      <InputVars>
        <VarDeclaration Name="REQD" Type="STRING[15]" Comment="Request Data from Socket" />
        <VarDeclaration Name="RSPD" Type="STRING[15]" Comment="Response Data from Socket" />
      </InputVars>
      <OutputVars>
        <VarDeclaration Name="CNFD" Type="STRING[15]" Comment="Confirmation Data from Plug" />
        <VarDeclaration Name="INDD" Type="STRING[15]" Comment="Indication Data from Plug" />
      </OutputVars>
    </InterfaceList>
    <Service RightInterface="PLUG" LeftInterface="SOCKET" >
      <ServiceSequence Name="request_confirm" >
        <ServiceTransaction >
          <InputPrimitive Interface="SOCKET" Event="REQ" Parameters="REQD" />
          <OutputPrimitive Interface="PLUG" Event="REQ" Parameters="REQD" />
        </ServiceTransaction>
        <ServiceTransaction >
          <InputPrimitive Interface="PLUG" Event="CNF" Parameters="CNFD" />
          <OutputPrimitive Interface="SOCKET" Event="CNF" Parameters="CNFD" />
        </ServiceTransaction>
      </ServiceSequence>
      <ServiceSequence Name="indication_response" >
        <ServiceTransaction >
          <InputPrimitive Interface="PLUG" Event="IND" Parameters="INDD" />
          <OutputPrimitive Interface="SOCKET" Event="IND" Parameters="INDD" />
        </ServiceTransaction>
        <ServiceTransaction >
          <InputPrimitive Interface="SOCKET" Event="RSP" Parameters="RSPD" />
          <OutputPrimitive Interface="PLUG" Event="RSP" Parameters="RSPD" />
        </ServiceTransaction>
      </ServiceSequence>
    </Service>
  </AdapterType>

<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE FBType SYSTEM "../LibraryElement.dtd" >
<SubAppType Name="SubApp1" Namespace="Main" GUID="6270018e-3ee8-4064-8e62-e8946f7f51e2" Comment="Subapplication " >
  <Identification Standard="61499-2" />
  <VersionInfo Organization="Schneider Electric" Version="0.0" Author="Admin" Date="18/05/2022" Remarks="template" />
  <CompilerInfo />
  <SubAppInterfaceList>
    <SubAppEventInputs>
      <SubAppEvent Name="INIT" Comment="Initialization Request" />
      <SubAppEvent Name="REQ" Comment="Normal Execution Request" />
    </SubAppEventInputs>
    <SubAppEventOutputs>
      <SubAppEvent Name="INITO" Comment="Initialization Confirm" />
      <SubAppEvent Name="CNF" Comment="Execution Confirmation" />
    </SubAppEventOutputs>
    <InputVars>
      <VarDeclaration Name="QI" Type="BOOL" Comment="Input event qualifier" />
    </InputVars>
    <OutputVars>
      <VarDeclaration Name="QO" Type="BOOL" Comment="Output event qualifier" />
    </OutputVars>
  </SubAppInterfaceList>
  <SubAppNetwork >
  </SubAppNetwork>
</SubAppType>

unit UserScript;

function Initialize: integer;
var
  f, r: IInterface;
  i: integer;
begin
  f := FileByIndex(FileCount-1);
  if GetLoadOrder(f) = 0 then begin
    AddMessage('no test plugin file');
    Result := 1;
    Exit;
  end;

  // ArmorIronGauntlets "Iron Gauntlets" [ARMO:00012E46]
  r := RecordByFormID(f, $00012E46, False);
  for i := 1 to {1000} 3000 do
    wbCopyElementToFile(r, f, True, True);

    Result := 1;
	// Application.Terminate;
end;

end.

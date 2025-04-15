Class Oliver.FileLogger Extends %Persistent
{

Property Timestamp As %String [ SqlColumnNumber = 2 ];

Property FileName As %String(MAXLEN = "");

Property strStatus As %String(MAXLEN = "");

ClassMethod LogFile(FileName As %String = "", pStatus As %String = "") As %Status
{
	Set otw = ##class(Oliver.FileLogger).%New()
	Set otw.Timestamp = $ZDateTime($NOW(),3,1,3)
	Set otw.FileName = FileName
	Set otw.strStatus = pStatus
	Set tSC = otw.%Save()
	Quit tSC
}

}

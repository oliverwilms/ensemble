Class Oliver.FTP.Production Extends Ens.Production
{

XData ProductionDefinition
{
<Production Name="Oliver.FTP.Production" LogGeneralTraceEvents="true">
  <Description></Description>
  <ActorPoolSize>2</ActorPoolSize>
  <Item Name="IncomingSFTP" Category="" ClassName="Oliver.FTP.PassthroughService" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="true" Schedule="">
  </Item>
  <Item Name="StoreTempFiles" Category="" ClassName="EnsLib.File.PassthroughOperation" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Adapter" Name="FilePath">/usr/irissys/mgr/Temp</Setting>
  </Item>
</Production>
}

}

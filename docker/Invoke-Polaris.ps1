Import-Module 'C:\temp\Polaris\Polaris.psd1'

New-PolarisGetRoute -Path "/helloworld" -Scriptblock {
    $Response.Send('Hello World!');
}

$app = Start-Polaris

while($app.Listener.IsListening){
    Wait-Event callbackcomplete
}
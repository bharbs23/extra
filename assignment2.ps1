#connect to Esxi host,check wheather connection established or not
function checkConnection
{
	echo "Enter host name ="
	$hostname=read-host hostname


	echo "Enter user name ="
	$username=read-host username

	echo "Enter The Password ="
	$password=read-host password

	try{
	# To get started, call the Connect-VIServer cmdlet and specify the IP address or DNS name of your vCenter Server system or ESX host 
	#the protocol (http or https), user name, and password 
	
		connect-viserver -Server $hostname -User $username -Password $password -ErrorAction Stop
		write-host "you are connected to host $hostname successfully "
		}
	catch
	{
	   write-host "connection problem "
	}
 }
 checkConnection
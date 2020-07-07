--[[------------------------------------------------------------------------
	Fix Vehicle 
------------------------------------------------------------------------]]--
AddEventHandler( 'chatMessage', function( source, n, message )
    if ( message == "/fix" ) then 
    	CancelEvent()
        TriggerClientEvent( 'wk:fixVehicle', source )
    end 
end )
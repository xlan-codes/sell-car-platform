function saveVehicle(id) {
    $.ajax({
        url: '/savevehicle',
        data: {'vehicle_id': id},
        error: e => console.log('Something went wrong')
    })
}